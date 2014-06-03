import os
import time
import numpy
from random import randint
from SequencePair import SequencePair

class RRManager:
    filescritti = 1
    def __init__(self, thermCond, aSect, sliceHeight, sliceWidth, airTemp, airResistance, fh):
        self.collection = []
        self.thermCond = thermCond
        self.aSect = aSect
        self.sliceHeight = sliceHeight
        self.sliceWidth = sliceWidth
        self.airTemp = airTemp
        self.airResistance = airResistance
        self.tempArray = []
        self.sequencePair = SequencePair(list(), list())
        self.fh = fh
        self.milpObjVal = 0

    def addRR(self, rr):
        self.collection.append(rr)
        self.getSequence1().append(rr.name)
        self.getSequence2().append(rr.name)
        seq1 = self.randomPermute(self.getSequence1())
        seq2 =self.randomPermute(self.getSequence2())
        self.sequencePair.sequence1 = seq1
        self.sequencePair.sequence2 = seq2
        self.distanceVector = [[0 for x in xrange(len(self.collection))] for x in xrange(len(self.collection))]

    def popRR(self, pos):
        return self.collection.pop(pos)

    def getRR(self, pos):
        return self.collection[pos]

    def getTempConstant(self):
        return self.thermCond

    def getSectArea(self):
        return self.aSect

    def getSliceWidth(self):
        return self.sliceWidth

    def getSliceHeight(self):
        return self.sliceHeight

    @staticmethod
    def randomPermute(l):
        a = l[:]
        b = []
        while len(a) > 0:
            b.append(a.pop(randint(0, len(a)-1)))
        return b

    def isOnTop(self, rr1, rr2):
        return self.getSequence1().index(rr1) < self.getSequence1().index(rr2) and self.getSequence2().index(rr1) > self.getSequence2().index(rr2)

    def isOnLeft(self, rr1, rr2):
        return self.getSequence1().index(rr1) < self.getSequence1().index(rr2) and self.getSequence2().index(rr1) > self.getSequence2().index(rr2)
    
    def getSequence1(self):
        return self.sequencePair.sequence1
    
    def getSequence2(self):
        return self.sequencePair.sequence2

    def calculateTemperatures(self):
        #declare the coefficient and known term matrices, +1 for Tair
        a = [[0 for x in xrange(len(self.collection))] for x in xrange(len(self.collection) + 1)]
        b = [0 for x in xrange(len(self.collection) + 1)]

        #fill the coefficient matrix
        for i in xrange(len(self.collection)):
            for j in xrange(len(self.collection)):
                rri = self.collection[i]
                rrj = self.collection[j]
                if i == j:
                    for k in xrange(len(self.collection)):
                        if i != k:
                            rrk = self.collection[k]
                            a[i][j] += 1 / rri.calcThermResistance(rrk)
                    a[i][j] += 1 / self.airResistance
                else:
                    a[i][j] = -1 / rri.calcThermResistance(rrj)
        for i in xrange(len(self.collection)):
            a[len(self.collection)][i] = -1 / self.airResistance

        #fill the known term matrix
        for i in xrange(len(self.collection)):
            b[i] = (-1 * self.collection[i].power) + (self.airTemp / self.airResistance)
        b[len(self.collection)] = (len(self.collection) * self.airTemp) / self.airResistance


        print("coefficent matrix: "+str(a))
        print("know term matrix: "+str(b))

        #solve
        coefficientMatrix = numpy.array(a);
        knownTermMatrix = numpy.array(b);
        try:
            self.tempArray = numpy.linalg.solve(coefficientMatrix, knownTermMatrix)
            for i in xrange(len(self.collection)):
                self.collection[i].temp = self.tempArray[i]
                print("Temperatura regione "+str(i)+" = "+str(self.collection[i].temp))

        except:
            print("Singular exception :(")
            pass

    def makeSwapMove(self):
        choice = randint(0, 1)
        if choice == 0:
            print "RandomSwapping"
            return self.randomSwapInSequencePair()
        else:
            print "IntelligentSwapping"
            return self.intelligentSwapInSequencePair()

    def randomSwapInSequencePair(self):
        index1 = 0
        index2 = 0
        a = self.getSequence1()[:]
        b = self.getSequence2()[:]
        print "a", a
        while index1 == index2:
            index1 = randint(0, len(a) - 1)
            index2 = randint(0, len(a) - 1)
        sequenceToAlter = randint(1, 2)
        if sequenceToAlter == 1:
            a[index1], a[index2] = a[index2], a[index1]
        else:
            b[index1], b[index2] = b[index2], b[index1]
        return SequencePair(a, b)

    def intelligentSwapInSequencePair(self):
        a = self.getSequence1()[:]
        b = self.getSequence2()[:]
        print "a", a, "b", b
        maxTempIndex = 0
        minTempIndex = 0
        maxTemp = 0
        minTemp = 1000
        for i in xrange(len(a)):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
                maxTempIndex = i
            if self.collection[i].temp < minTemp:
                minTemp = self.collection[i].temp
                minTempIndex = i
        sequenceToAlter = randint(1, 2)
        print "minIndex", minTempIndex, "maxIndex", maxTempIndex
        if sequenceToAlter == 1:
            a[minTempIndex], a[maxTempIndex] = a[maxTempIndex], a[minTempIndex]
        else:
            b[minTempIndex], b[maxTempIndex] = b[maxTempIndex], b[minTempIndex]
        return SequencePair(a, b)

    def makeDistanceVectorMove(self):
        choice = randint(0, 1)
        if choice == 0:
            print "RandomVectoring"
            return self.randomIncDistanceVector()
        else:
            print "IntelligentVectoring"
            return self.intelligentIncDistanceVector()

    def intelligentIncDistanceVector(self):
        maxTempIndex1 = 0
        maxTempIndex2 = 0
        a = self.distanceVector[:]
        print(a)
        for i in xrange(len(a)):
            if self.collection[i].temp > self.collection[maxTempIndex1].temp:
                maxTempIndex1 = i
            for j in xrange(len(a)):
                if i == j: continue
                else:
                    if self.collection[j].temp > self.collection[maxTempIndex2].temp:
                        if self.collection[j].temp <= self.collection[maxTempIndex1].temp:
                            maxTempIndex2 = j
        if maxTempIndex1 == maxTempIndex2:
            return self.randomIncDistanceVector()
        else:
            a[maxTempIndex1][maxTempIndex2] += 1
            a[maxTempIndex2][maxTempIndex1] = a[maxTempIndex1][maxTempIndex2]
            return a

    def randomIncDistanceVector(self):
        index1 = 0
        index2 = 0
        a = self.distanceVector[:]
        print(a)
        while index1 == index2:
            index1 = randint(0, len(a) - 1)
            index2 = randint(0, len(a) - 1)
        a[index1][index2] += 1
        a[index2][index1] = a[index1][index2]
        return a

    def getSolutionCost(self):
        if self.milpObjVal == 817609:
            return 817609
        weightSA = 0.5
        weightMILP = 0.5
        maxTemp = 0
        for i in xrange(len(self.collection) - 1):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
        return weightSA*maxTemp+weightMILP*self.milpObjVal

    def updateSequencePair(self, pair):
        self.sequencePair = pair

    def updateDistanceVector(self, vector):
        self.distanceVector = vector

    def isUniformityReached(self):
        epsilon = 20
        maxTemp = 0
        minTemp = 1000
        for i in xrange(len(self.collection)):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
            if self.collection[i].temp < minTemp:
                minTemp = self.collection[i].temp
        return maxTemp - minTemp < epsilon

    def applyMILP(self, sequencePair, distanceVector):
        self.fh.updateDat(sequencePair, distanceVector)
        os.system("glpsol -d base.dat -d /tmp/temp.dat -m floorplan.mod --wlp model.lp --check > /dev/null")
        os.system("gurobi_cl ResultFile=problem.sol TimeLimit=5 model.lp")

        with open("problem.sol", 'r') as f_in:
            outputAsString = f_in.read()

        #Objective value
        try:
            startIndex = outputAsString.index("Objective value =")
            realstartIndex = outputAsString.index("= ",startIndex)
            endIndex = outputAsString.index("\n",startIndex)
            objvalue = outputAsString[realstartIndex+2:endIndex]
            print("OBJ VALUE IS "+objvalue)
            self.milpObjVal = float(objvalue)

        #CX
            for rrname in self.fh.rrList:
                startIndex = outputAsString.index("Cx("+rrname+")")
                realstartIndex = outputAsString.index(" ",startIndex)
                endIndex = outputAsString.index("\n",startIndex)
                cx = outputAsString[realstartIndex+1:endIndex]
                print("Cx "+rrname +" is "+cx)
                for rr in self.collection:
                    if rr.name == rrname:
                        rr.cx = float(cx)

        #CY
            for rrname in self.fh.rrList:
                startIndex = outputAsString.index("Cy("+rrname+")")
                realstartIndex = outputAsString.index(" ",startIndex)
                endIndex = outputAsString.index("\n",startIndex)
                cy = outputAsString[realstartIndex+1:endIndex]
                print("Cy "+rrname +" is "+cy)
                for rr in self.collection:
                    if rr.name == rrname:
                        rr.cy = float(cy)

            self.drawOnBrowser(outputAsString)
        except:
            self.milpObjVal = 817609 #wow such big number very matricola not much accept many magic number

        return


    def drawOnBrowser(self,outputAsString):
        addRegions=""
        for rrname in self.fh.rrList:
            startIndex = outputAsString.index("w("+rrname+")")
            endIndex = outputAsString.index("\n",startIndex)
            w = outputAsString[startIndex+7:endIndex]

            startIndex = outputAsString.index("a("+rrname+")")
            endIndex = outputAsString.index("\n",startIndex)
            a = outputAsString[startIndex+7:endIndex]


            startIndex = outputAsString.index("x("+rrname+")")
            endIndex = outputAsString.index("\n",startIndex)
            x = outputAsString[startIndex+7:endIndex]


            startIndex = outputAsString.index("y("+rrname+")")
            endIndex = outputAsString.index("\n",startIndex)
            y = outputAsString[startIndex+7:endIndex]


            x1= round(float(x))
            y1= round(float(y)-1)
            w1= round(float(w)+1)
            a1= round(float(a))
            #     x,y,w,a
            #addRegion(2,1,8,1);
            addRegions =addRegions + "addRegion("+str(x1)+","+str(y1)+","+str(w1)+","+str(a1)+");\n"

        print ("REGIONS: "+ addRegions)
        index="<!DOCTYPE html>\n<html>\n<head>\n        <title>FCCM 2014 - Floorplanner demo</title>\n  <link rel=\"stylesheet\" href=\"jquery-ui.css\" />\n    <script type=\"text/javascript\" src=\"jquery-2.1.1.min.js\"></script>\n        <script type=\"text/javascript\" src=\"jquery-ui.js\"></script>\n       <script type=\"text/javascript\" src=\"fabric.js\"></script>\n  <script type=\"text/javascript\" src=\"Virtex-5-XC5VLX110T.js\"></script>\n     <script type=\"text/javascript\" src=\"index.js\"></script>\n   <script type=\"text/javascript\">\n\n           var info = getFPGAinfo();\n\n           window.onload = function () {\n\n                       setupCanvas(info);\n"
        index = index + addRegions
        index = index + "generateInterconnectionsTable();\n                     initConn();\n                   initResCost();\n                        initSliders();\n                        updateObj();\n          }\n\n   </script>\n     <style type=\"text/css\">\n             body,html\n             {\n                     margin:0px;\n                   padding:0px;\n          }\n             div.regionInfo, div.parInfo, div.objective, div.optimization\n          {\n                     border: dashed 1px #333;\n                      padding:10px;\n                 margin-left:5px;\n              }\n             div.parInfo input\n             {\n                     width:50px;\n           }\n             div.optimization\n              {\n                     margin-top:5px;\n                       width:430px;\n          }\n             div.optimization input\n                {\n                     width:70px;\n                   background:#DDD;\n              }\n             div.optimization table td\n             {\n                     border: solid 1px #DDD;\n                       padding:0px 4px;\n              }\n             div.optimization table\n                {\n                     border-collapse:collapse;\n             }\n             div.optimization p\n            {\n                     margin: 4px 0px;\n              }\n             div.optimization h3, div.parInfo h3\n           {\n                     margin: 8px 0px;\n              }\n             div.optimization h2\n           {\n                     color: #0000FF;\n               }\n             input.readonly\n                {\n                     background: #DDD;\n             }\n             div.regionInfo input\n          {\n                     width:40px;\n           }\n             div.head p\n            {\n                     margin:2px 5px;\n                       font-weight:bold;\n             }\n             div.sliders div\n               {\n                     height: 150px;\n                        margin: 0px auto;\n             }\n             div.sliders input\n             {\n                     width:50px;\n                   margin: 0px auto;\n                     display:block;\n                }\n             div.sliders table\n             {\n                     border-collapse:collapse;\n             }\n             div.sliders table td\n          {\n                     text-align: center;\n                   border:solid 1px #DDD;\n                }\n             div.sliders table thead td\n            {\n                     padding:0px 4px;\n              }\n             #statusStr\n            {\n                     font-weight:bold;\n             }\n             #reason\n               {\n                     color:#FF0000;\n                }\n             div.overlay\n           {\n                     z-index:10;\n                   position:fixed;\n                       width:100%;\n                   height:100%;\n                  background: rgba(0,0,0,0.5);\n                  display:none;\n         }\n             div.overlay div\n               {\n                     position:relative;\n                    top:50%;\n                      left:50%;\n                     padding:10px;\n                 border:solid 1px #222;\n                        background:#fff;\n                      width:150px;\n                  height:37px;\n                  font-weight:bold;\n                     margin-left:-20px;\n                    margin-top:-20px;\n             }\n     </style>\n</head>\n<body>\n     <div class=\"overlay\" id=\"overlay\">\n                <div id=\"loading\">\n                  <img src=\"/images/loading.gif\">\n                     &nbsp;\n                        Optimizing...\n         </div>\n                <div id=\"found\">\n                    <table>\n                               <tr>\n                                  <td>\n                                          Solution Found!\n                                       </td>\n                                 <td>\n                                          <button onclick=\"$('#overlay').css('display','none');\">OK</button>\n                                  </td>\n                         </tr>\n                 </table>\n              </div>\n                <div id=\"notfound\">\n                 <table>\n                               <tr>\n                                  <td>\n                                          Unable to find a solution...\n                                  </td>\n                                 <td>\n                                          <button onclick=\"$('#overlay').css('display','none');\">OK</button>\n                                  </td>\n                         </tr>\n                 </table>\n              </div>\n        </div>\n        <div style=\"position:relative\">\n             <div class=\"head\">\n                  <p>Xilinx Virtex-5 XC5VLX110T</p>\n             </div>\n\n              </div>\n                <div style=\"float:left; position:relative;\">\n                        <canvas style=\"border:solid 1px; display:block; top:0px; left:0px; position:absolute;\" id=\"FPGAcanvas\">\n                   </canvas>\n                     <canvas style=\"border:solid 1px; display:block; top:0px; left:0px; position:absolute;\" id=\"LINEScanvas\">\n                  </canvas>\n                     <canvas style=\"border:solid 1px; display:block; top:0px; left:0px; position:absolute;\" id=\"regionCanvas\">\n                 </canvas>\n             </div>\n                <div style=\"float:left;\">\n                   <div class=\"regionInfo\" id=\"regionInfo\">\n                          <h2>Regions info</h2>\n                 </div>\n                </div>\n                <div style=\"float:left;\">\n                   <div class=\"parInfo\" id=\"parInfo\">\n                                <h2>Parameters</h2>\n                           <h3>Interconnections</h3>\n                             <div id=\"connectionsArea\">\n                          </div>\n                                <h3>Resource Cost</h3>\n                                <div id=\"resCost\">\n\n                                </div>\n                        </div>\n                </div>\n                <div style=\"float:left;\">\n                   <div class=\"objective\">\n                             <h2>Objective Settings</h2>\n                           <div class=\"sliders\">\n                                       <table>\n                                               <thead>\n                                                       <tr>\n                                                          <td>Wirelength</td>\n                                                           <td>Perimeter</td>\n                                                            <td>Wasted<br/>Resources</td>\n                                                 </tr>\n                                         </thead>\n                                              <tbody>\n                                                       <tr>\n                                                          <td><div id=\"sliderWL\"></div></td>\n                                                          <td><div id=\"sliderP\"></div></td>\n                                                           <td><div id=\"sliderR\"></div></td>\n                                                   </tr>\n                                                 <tr>\n                                                          <td><input class=\"readonly\" type=\"text\" id=\"qWL\" readonly=\"readonly\"></td>\n                                                            <td><input class=\"readonly\" type=\"text\" id=\"qP\" readonly=\"readonly\"></td>\n                                                             <td><input class=\"readonly\" type=\"text\" id=\"qR\" readonly=\"readonly\"></td>\n                                                     </tr>\n                                         </tbody>\n                                      </table>\n                              </div>\n                        </div>\n                </div>\n                <div style=\"float:left;\">\n                   <div class=\"optimization\">\n                          <h2>Floorplan Status</h2>\n                             <p>The current floorplan is <span id=\"statusStr\"></span> <span id=\"reason\"></span></p>\n                            <h3>Objective</h3>\n                            <table>\n                                       <tr>\n                                          <td></td><td>Wirelength</td><td>Perimeter</td><td>Wasted Resources</td>\n                                       </tr>\n                                 <tr>\n                                          <td>Absolute values</td>\n                                              <td><input type=\"text\" id=\"a_WL\" readonly=\"readonly\"></td>\n                                              <td><input type=\"text\" id=\"a_P\" readonly=\"readonly\"></td>\n                                               <td><input type=\"text\" id=\"a_R\" readonly=\"readonly\"></td>\n                                       </tr>\n                                 <tr>\n                                          <td>Normalized values</td>\n                                            <td><input type=\"text\" id=\"n_WL\" readonly=\"readonly\"></td>\n                                              <td><input type=\"text\" id=\"n_P\" readonly=\"readonly\"></td>\n                                               <td><input type=\"text\" id=\"n_R\" readonly=\"readonly\"></td>\n                                       </tr>\n\n                               </table>\n                              <p>\n                                   <b>Global Normalized Objective</b> <input type=\"text\" id=\"globalObj\" readonly=\"readonly\">\n                                       <input type=\"button\" value=\"OPTIMIZE\" id=\"optimizeButton\" onclick=\"optimize();\"></input>\n                              </p>\n                  </div>\n                </div>\n        </div>\n</body>\n</html>"
        f = open("/home/davide/Downloads/HPPS MILP/FCCM_demo/index"+str(self.filescritti)+".html", "w+")
        f.seek(0)
        f.write(index)
        f.truncate()
        f.close()
        os.system("gnome-open '/home/davide/Downloads/HPPS MILP/FCCM_demo/index"+str(self.filescritti)+".html'")
        time.sleep(5)
        os.system("sleep 3;import -window root $HOME/Desktop/img/filename"+str(self.filescritti)+".png")
        #os.system("xdotool key --windowid \"$(xdotool --search --title FCCM 2014 | head -n 1)\" F5")
        os.system("xdotool search \"Mozilla Firefox\" windowactivate --sync key --clearmodifiers ctrl+w")
        self.filescritti +=1
        return
