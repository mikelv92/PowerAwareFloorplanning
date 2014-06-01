import os
import numpy
from random import randint
from SequencePair import SequencePair

class RRManager:
    def __init__(self, thermCondDict, aSectDict, fh):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict
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

    def getTempConstant(self, rr1, rr2):
        return self.thermCondDict[self.collection.index(rr1)][self.collection.index(rr2)]

    def getSectArea(self, rr1, rr2):
        return self.aSectDict[self.collection.index(rr1)][self.collection.index(rr2)]

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
        #declare the coefficient and known term matrixes
        a = [[0 for x in xrange(len(self.collection))] for x in xrange(len(self.collection))]
        b = [0 for x in xrange(len(self.collection))]

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
                else:
                    a[i][j] = -1 / rri.calcThermResistance(rrj)

        #fill the known term matrix
        for i in xrange(len(self.collection)):
            b[i] = -1 * self.collection[i].power


        print("coefficent matrix: "+str(a))
        print("know term matrix: "+str(b))

        #solve
        coefficientMatrix = numpy.array(a);
        knownTermMatrix = numpy.array(b);
        self.tempArray = numpy.linalg.solve(coefficientMatrix, knownTermMatrix)
        for i in xrange(len(self.collection)):
            self.collection[i].temp = self.tempArray[i]
            print("Temperatura regione "+str(i)+" = "+str(self.collection[i].temp))

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
        os.system("gurobi_cl ResultFile=problem.sol model.lp")

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
        except:
            self.milpObjVal = 817609 #wow such big number very matricola not much accept many magic number

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
        return

