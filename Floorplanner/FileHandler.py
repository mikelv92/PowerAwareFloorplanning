class FileHandler:
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
        print distanceVector
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