import ReconfigurableRegion

class FileHandler:
    def __init__(self, dat, power, thermCond, aSect):
        self.dat = dat
        self.power = power
        self.thermCond = thermCond
        self.aSect = aSect

        datFH = open(self.dat)
        self.count = len(datFH.readLines())
        datFH.close()

        #TODO should read the .dat, parse it, create the reconfigurable regions and put them in self.rrList
        datFH = open(self.dat)

        self.thermCondDict = [[0 for x in xrange(self.count)] for x in xrange(self.count)]
        self.aSectDict = [[0 for x in xrange(self.count)] for x in xrange(self.count)]

        thermCondFH = open(self.thermCond)
        aSectFH = open(self.aSect)

        for rrName in self.rrList:
            for rrName2 in self.rrList:
                self.thermCondDict[rrName][rrName2] = self.getWordFromLine(thermCondFH.readline(), rrName2)
                self.aSectDict[rrName][rrName2] = self.getWordFromLine(aSectFH.readline(), rrName2)

        thermCondFH.close()
        aSectFH.close()


    def getRRCount(self):
        return self.count
    def getRRList(self):
        return self.rrList
    def getThermCondDict(self):
        return self.thermCondDict
    def getASectDict(self):
        return self.aSectDict

    def createDat(self, sequencePair, distanceVector):
        #Parametri funzione obiettivo MILP
        qWL = 0.3333333333333333;  # peso per la wire length totale
        qR = 0.3333333333333333;  # peso per il consumo di risorse totale
        qP = 0.3333333333333333;  # perso per il "consumo" di perimetro totale

        # pesi per dire quanto mi costa sprecare una CLB, DSP o BRAM, in questo esempio i costi sono tutti unitari e non c'è
        # differenza tra sprecare una risorsa piuttosto che un'altra
        rtcCLB = 1
        rtcDSP = 1
        rtcBRAM = 1

        f = open("provatemp.dat", "wb")

        #Region set
        text = "data; \nset N :="
        for rr in self.collection:
            text = text + " " + rr.name

        #Sequence pair 1
        text = text + "; \n\nparam: pair1Regions: pair1 :=\n"
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

        #Risorse richieste
        text = text + ";\n\nparam:  IO:             ioX             ioY             ioWires :=\n;\n" + \
            "param  c:      CLB     BRAM    DSP :=\n"
        for rr in self.collection:
            text= text+ "\t" + rr.name + " " +rr.dspRes + " " +rr.bramRes + " " + rr.clbRes+ "\n"

        #Collegamenti
        text = text +";\nparam comm default 0:=\n"
        for reg1 in range(rrConn.shape[0]):
            for reg2 in range(rrConn.shape[1]):
                if rrConn[reg1][reg2]!=0:
                    text= "rec" + str(reg1+1) + " rec" + str(reg2+1) + rrConn[reg1][reg2] + "\n"

        #Distanze minime
        text = text +";\nparam minDist default 0:=\n"
        for reg1 in range(distanceVector.shape[0]):
            for reg2 in range(distanceVector.shape[1]):
                if distanceVector[reg1][reg2]!=0:
                    text= "rec" + str(reg1+1) + " rec" + str(reg2+1) + rrDist[reg1][reg2] + "\n"

        #Parametri obiettivo MILP + costi uso risorse
        text = text + ";\n\nparam qWL := "+str(qWL)+";\n" + \
            "param qR := "+str(qR)+";\n" +\
            "param qP := "+str(qP)+";\n" +\
            "param: rct :=\n" + "CLB " + str(rtcCLB) +\
            "\nDSP " + str(rtcDSP) + "\nBRAM " + str(rtcBRAM) +"\n;\n\nend;"

        f.seek(0)
        f.write(text.encode('utf-8'))

        #f.truncate()
        f.close()
        return


    def getWordFromLine(line, pos):
        words = line.split()
        return words[pos]