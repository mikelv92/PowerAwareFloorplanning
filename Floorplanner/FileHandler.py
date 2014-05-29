import ReconfigurableRegion

class FileHandler:
    def __init__(self, confu, power, thermCond, aSect):
        self.confu = confu
        self.power = power
        self.thermCond = thermCond
        self.aSect = aSect
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

        self.thermCondDict = [[0 for x in xrange(self.count)] for x in xrange(self.count)]
        self.aSectDict = [[0 for x in xrange(self.count)] for x in xrange(self.count)]

        thermCondFH = open(self.thermCond)
        aSectFH = open(self.aSect)

        for rr1 in xrange(self.count):
            for rr2 in xrange(self.count):
                self.thermCondDict[rr1][rr2] = self.getWordFromLine(thermCondFH.readline(), rr2)
                self.aSectDict[rr1][rr2] = self.getWordFromLine(aSectFH.readline(), rr2)

        thermCondFH.close()
        aSectFH.close()

        powerFH = open(self.power)
        self.powerDict = [0 for x in xrange(self.count)]

        for rrName in self.rrList:
            self.powerDict[rrName] = powerFH.readline()

        powerFH.close()


    def getRRCount(self):
        return self.count
    def getRRList(self):
        return self.rrList
    def getThermCondDict(self):
        return self.thermCondDict
    def getASectDict(self):
        return self.aSectDict
    def getPowerDict(self):
        return self.powerDict

    def createFirstDat(self, sequencePair, distanceVector):
        #TODO
        # when this is called a valid sequence pair should be available
        #call this after you put all the reconfig regions in the RRManager (after the parsing is of .dat is done)

        with open (self.confu, "r") as myfile:
            text=myfile.read()

        self.changeIndex = len(text)
        #PARTE CHE CAMBIA


        #Sequence pair 1
        text = text + " \n\nparam: pair1Regions: pair1 :=\n"
        i = 0
        for rrName in sequencePair.sequence1:
            text = text + "\t" + rrName + " " + str(i) + '\n'
            i += 1

        #Sequence pair 2
        text = text + ";\n\nparam: pair2Regions: pair2 :=\n"
        i = 0
        for rrName in sequencePair.sequence2:
            text = text + "\t" + rrName + " " + str(i) + '\n'
            i += 1

        #Distanze minime
        text = text +";\nparam minDist default 0:=\n"
        for reg1 in range(distanceVector.shape[0]):
            for reg2 in range(distanceVector.shape[1]):
                if distanceVector[reg1][reg2]!=0:
                    text= "rec" + str(reg1+1) + " rec" + str(reg2+1) + distanceVector[reg1][reg2] + "\n"


        text= text + "\;\n\nend;"



        f = open("/tmp/temp.dat", "wb")
        f.seek(0)
        f.write(text.encode('utf-8'))
        f.truncate()
        f.close()
        return

    def changeDat(self, sequencePair, distanceVector):


        #PARTE CHE CAMBIA


        #Sequence pair 1
        text = " \n\nparam: pair1Regions: pair1 :=\n"
        i = 0
        for rrName in sequencePair.sequence1:
            text = text + "\t" + rrName + " " + str(i) + '\n'
            i += 1


        #Sequence pair 2
        text = text + ";\n\nparam: pair2Regions: pair2 :=\n"
        i = 0
        for rrName in sequencePair.sequence2:
            text = text + "\t" + rrName + " " + str(i) + '\n'
            i += 1



        #Distanze minime
        text = text +";\nparam minDist default 0:=\n"
        for reg1 in range(distanceVector.shape[0]):
            for reg2 in range(distanceVector.shape[1]):
                if distanceVector[reg1][reg2]!=0:
                    text= "rec" + str(reg1+1) + " rec" + str(reg2+1) + distanceVector[reg1][reg2] + "\n"


        text= text + "\;\n\nend;"


        f = open("/tmp/temp.dat", "wb")
        f.seek(self.changeIndex)
        f.write(text.encode('utf-8'))
        f.truncate()
        f.close()
        return


    def getWordFromLine(line, pos):
        words = line.split()
        return words[pos]