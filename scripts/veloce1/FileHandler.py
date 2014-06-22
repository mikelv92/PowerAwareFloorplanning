import os
from copy import copy, deepcopy
from random import randint
from ReconfigurableRegion import ReconfigurableRegion
from SequencePair import SequencePair

class FileHandler:
#	this method initialize all the physical constants, the power and the resources required by each RR
    def __init__(self, confu, power, const):
        self.confu = confu
        self.power = power
        self.const = const
        self.changeIndex = 0

        with open(self.confu, 'r') as f_in:
            s2 = f_in.read()

        startIndex = s2.index("set N := ")
        endIndex = s2.index(";",startIndex)
        set = s2[startIndex:endIndex] #set = "set N := rec1 rec2 rec3 .. recn"

        self.count = len(set.split()) - 3

        self.rrList = list()

        for i in xrange(self.count):
            recNum = i + 1
            self.rrList.append("rec" + `recNum`)

        constFH = open(self.const)

        self.thermCond = float(constFH.readline().split()[0])
        self.aSect = float(constFH.readline().split()[0])
        self.sliceHeight = float(constFH.readline().split()[0])
        self.sliceWidth = float(constFH.readline().split()[0])
        self.airTemp = float(constFH.readline().split()[0])
        self.airResistance = float(constFH.readline().split()[0])
        constFH.close()

        powerFH = open(self.power)
        self.powerDict = [0 for x in xrange(self.count)]

        for i in xrange(len(self.rrList)):
            self.powerDict[i] = float(powerFH.readline())

        powerFH.close()


    def getRRCount(self):
        return self.count
    def getRRList(self):
        return self.rrList
    def getThermCond(self):
        return self.thermCond
    def getASect(self):
        return self.aSect
    def getSliceHeight(self):
        return self.sliceHeight
    def getSliceWidth(self):
        return self.sliceWidth
    def getAirTemp(self):
        return self.airTemp
    def getAirResistance(self):
        return self.airResistance
    def getPowerDict(self):
        return self.powerDict

#	this method is used to update the /tmp/temp.dat file translated by glpsol in the model.lp file used by gurobi
    def updateDat(self, sequencePair, distanceVector):
        with open (self.confu, "r") as myfile:
            text=myfile.read()

        self.changeIndex = len(text)
        #PARTE CHE CAMBIA


        #Sequence pair 1
        text = text + " \n\nparam: pair1Regions: pair1 :=\n"
        i = 0
        print(sequencePair.sequence1)
        for rrName in sequencePair.sequence1:
            text = text + "\t" + rrName + "\t" + `i` + "\n"
            i += 1

        #Sequence pair 2
        text = text + ";\n\nparam: pair2Regions: pair2 :=\n"
        i = 0
        print(sequencePair.sequence2)
        for rrName in sequencePair.sequence2:
            text = text + "\t" + rrName + "\t" + `i` + "\n"
            i += 1

        #Distanze minime
        text = text +";\nparam minDist default 0:=\n"
        #print distanceVector
        for reg1 in range(self.getRRCount()):
            for reg2 in range(self.getRRCount()):
                if distanceVector[reg1][reg2]!=0:
                    text = text +"rec" + str(reg1+1) + " rec" + str(reg2+1) + " " + str(distanceVector[reg1][reg2]) + "\n"


        text = text + ";\n\nend;"



        f = open("/tmp/temp.dat", "w")
        f.seek(0)
        f.write(text)
        f.truncate()
        f.close()
        return





    def incrementalFloorplan(self,rrManager):
        try:
            quanteregioniallavolta = 4;
            regioniNP = deepcopy(rrManager.collection)
            #regioniNP = ["rec1","rec2","rec3","rec4","rec5","rec6","rec7","rec8","rec9","rec10","rec11","rec12","rec13","rec14","rec15"]
            regioniNF = []
            nf = ""
            while (len(regioniNP)!=0):
                i = 0
                np = ""
                tempBuffer = []
                try:
                    while(i<quanteregioniallavolta):
                        randomint= randint(0,len(regioniNP)-1)
                        #print randomint
                        np+=" "+str(regioniNP[randomint].name)
                        #print np
                        tempBuffer.append(regioniNP[randomint].name)
                        del regioniNP[randomint]
                        i+=1
                except:
                    print "ehm ho finito le regioni"


                '''
                while(i<quanteregioniallavolta):

                        randomint= randint(0,len(regioniNP)-1)
                        print randomint
                        np+=str(regioniNP[randomint])+" "
                        print np
                        tempBuffer.append(regioniNP[randomint])
                        del regioniNP[randomint]
                        i+=1
                '''
                #adesso ho np = rec1 rec2 rec3 rec4

                #aggiungo al dat

                with open (self.confu, "r") as myfile:
                    text=myfile.read()
                #Sequence pairs
                text = text + " \n\nparam: pair1Regions: pair1 :=\n;\nparam: pair2Regions: pair2 :=\n;\n"

                #Set NP
                text = text + "set NP :=" + np +";\n"

                if(len(regioniNF)!=0):
                    text += "set NF :="
                    for i in regioniNF:
                        text += " "+str(i)
                    text += " ;\n"
                    with open("problem.sol", 'r') as f_in:
                        outputAsString = f_in.read()

                    print("len1 " + str(len(outputAsString)))
                    wf="param wf :=\n"
                    xf="param xf :=\n"
                    hf="param hf:\t1\t2\t3\t4\t5\t6\t7\t8:=\n"
                    for rr in rrManager.collection:
                        #print rr.name
                        startIndex = outputAsString.index("w(" + rr.name + ")")
                        endIndex = outputAsString.index("\n", startIndex)
                        w = outputAsString[startIndex + 8:endIndex]

                        startIndex = outputAsString.index("x(" + rr.name + ")")
                        endIndex = outputAsString.index("\n", startIndex)
                        x = outputAsString[startIndex + 8:endIndex]

                        try:
                            toaddh = "\t"+rr.name
                            for i in range(1,9):
                                #print("h(" + rr.name + ","+str(i)+")")
                                startIndex = outputAsString.index("h(" + rr.name + ","+str(i)+")")
                                endIndex = outputAsString.index("\n", startIndex)
                                h = outputAsString[startIndex + 10:endIndex]
                                toaddh += '\t'+str(h)
                                #print(rr.name+str(h))
                            toaddh += "\n"
                            hf+=toaddh
                        except:
                            pass


                        #print (int(w))
                        #print (int(x))
                        wf+="\t"+rr.name+"\t"+str(int(float((w))))+"\n"
                        xf+="\t"+rr.name+"\t"+str(int(float(x)))+"\n"

                    wf+=";\n"
                    xf+=";\n"
                    hf+=";\n"

                    text+=wf+xf+hf
                else:
                    text += "set NF := ;"




                text = text + "\n\nend;"


                regioniNF.extend(tempBuffer)
                f = open("/tmp/temp.dat", "w")
                f.seek(0)
                f.write(text)
                f.truncate()
                f.close()
		print("sol")
                os.system("glpsol -d base.dat -d /tmp/temp.dat -m floorplan_incremental.mod --wlp model.lp --check > /dev/null")
		print("gurobi")
                os.system("gurobi_cl ResultFile=problem.sol MIPFocus=1 MIPGap=0.2 TimeLimit=100 model.lp > /dev/null")


            #leggi soluzione e trova i sequence pair,
            # occhio che qua sei fuori dal while
            # quindi ce soluzione feasible

            sequencePair = self.generateSequencePair(deepcopy(rrManager.collection))
            return sequencePair


        #questo dovrebbe "riavviare" nel caso di infeasible

        except Exception,e:
            print e
            print("riavvia")
            self.incrementalFloorplan(rrManager)

#        sequencePair = self.generateSequencePair(deepcopy(rrManager.collection))
 #       return sequencePair



    def generateSequencePair(self, rrManager):

        seq1 = []
        seq2 = []
        col = []
        with open("problem.sol", 'r') as f_in:
            outputAsString = f_in.read()
        print("len "+str(len(outputAsString)))
        for rr in rrManager:
            startIndex = outputAsString.index("w(" + rr.name + ")")
            endIndex = outputAsString.index("\n", startIndex)
            w1 = outputAsString[startIndex + 8:endIndex]

            startIndex = outputAsString.index("a(" + rr.name + ")")
            endIndex = outputAsString.index("\n", startIndex)
            a1 = outputAsString[startIndex + 8:endIndex]

            startIndex = outputAsString.index("x(" + rr.name + ")")
            endIndex = outputAsString.index("\n", startIndex)
            x1 = outputAsString[startIndex + 8:endIndex]

            startIndex = outputAsString.index("y(" + rr.name + ")")
            endIndex = outputAsString.index("\n", startIndex)
            y1 = outputAsString[startIndex + 8:endIndex]

            x1 = round(float(x1))
            y1 = round(float(y1) - 1)
            w1 = round(float(w1) + 1)
            a1 = round(float(a1))
            #     x,y,w,a
            #addRegion(2,1,8,1);

            """
            #CX
            startIndex = outputAsString.index("Cx(" + rr.name + ")")
            realstartIndex = outputAsString.index(" ", startIndex)
            endIndex = outputAsString.index("\n", startIndex)
            cx = outputAsString[realstartIndex + 1:endIndex]
            print("Cx " + rr.name + " is " + cx)
            cx = round(float(cx))

            #CY
            startIndex = outputAsString.index("Cy(" + rr.name + ")")
            realstartIndex = outputAsString.index(" ", startIndex)
            endIndex = outputAsString.index("\n", startIndex)
            cy = outputAsString[realstartIndex + 1:endIndex]
            print("Cy " + rr.name + " is " + cy)
            cy = round(float(cy))
            """
            col.append(ReconfigurableRegion(rr.name, x1, y1, w1, a1, None))

        for rr in col:
            h=0
            j=0
            for sq in seq1:
                # 1 a destra di 0
                if(rr.cx >sq.cx+sq.power):
                    h+=1
                    j+=1
                #  1 sopra 0
                elif(rr.cy < sq.cy+sq.temp):
                    h+=1
                    j=j
                #  1 sotto 0
                elif(rr.cy +rr.temp > sq.cy):
                    h=h
                    j+=1
                #  1 a sx di 0
                else:
                    h=h
                    j=j
            seq1.insert(h,rr)
            seq2.insert(j,rr)


        print("sq1")
        sequence1 = []
        sequence2 = []
        for rr in seq1:
            sequence1.append(rr.name)
            print rr.name+" cx: "+str(rr.cx)+" cy: "+str(rr.cy)
        print("sq2")
        for rr in seq2:
            sequence2.append(rr.name)
            print rr.name+" cx: "+str(rr.cx)+" cy: "+str(rr.cy)

        return SequencePair(sequence1, sequence2)

