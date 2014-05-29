import os
import numpy
from random import randint
import SequencePair

class RRManager:
    def __init__(self, thermCondDict, aSectDict, fh):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict
        self.tempArray = []
        self.sequencePair = SequencePair()
        self.distanceVector = [[0 for x in xrange(len(self.collection))] for x in xrange(len(self.collection))]
        self.fh = fh
        self.milpObjVal = 0

    def addRR(self, rr):
        self.collection.append(rr)
        self.getSequence1().append(rr)
        self.getSequence2().append(rr)
        self.randomPermute(self.getSequence1())
        self.randomPermute(self.getSequence2())

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
        a = list(l)
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
        for i in xrange(len(self.collection) - 1):
            for j in xrange(len(self.collection) - 1):
                rri = self.collection[i]
                rrj = self.collection[j]
                if i == j:
                    for k in xrange(len(self.collection) - 1):
                        rrk = self.collection[k]
                        a[i][j] += 1 / rri.calcThermResistance(rrk)
                else:
                    a[i][j] = -1 / rri.calcThermResistance(rrk)

        #fill the known term matrix
        for i in xrange(len(self.collection) - 1):
            b[i] = -1 * self.collection[i].power

        #solve
        coefficientMatrix = numpy.array(a);
        knownTermMatrix = numpy.array(b);
        self.tempArray = numpy.linalg.solve(coefficientMatrix, knownTermMatrix)
        for i in len(self.collection) - 1:
            self.collection[i].temp = self.tempArray[i]

    def makeSwapMove(self):
        choice = randint(0, 1)
        if choice == 0:
            return self.randomSwapInSequencePair()
        else:
            return self.intelligentSwapInSequencePair()

    def randomSwapInSequencePair(self):
        index1 = 0
        index2 = 0
        a = list(self.getSequence1())
        b = list(self.getSequence2())
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
        a = list(self.getSequence1())
        b = list(self.getSequence2())
        maxTempIndex = 0
        minTempIndex = 0
        maxTemp = 0
        minTemp = 1000
        for i in xrange(len(a) - 1):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
                maxTempIndex = i
            if self.collection[i].temp < minTemp:
                minTemp = self.collection[i].temp
                minTempIndex = i
        sequenceToAlter = randint(1, 2)
        if sequenceToAlter == 1:
            a[minTempIndex], a[maxTempIndex] = a[maxTempIndex], a[minTempIndex]
        else:
            b[minTempIndex], b[maxTempIndex] = b[maxTempIndex], b[minTempIndex]
        return SequencePair(a, b)

    def makeDistanceVectorMove(self):
        choice = randint(0, 1)
        if choice == 0:
            return self.randomIncDistanceVector()
        else:
            return self.intelligentIncDistanceVector()

    def intelligentIncDistanceVector(self):
        index1 = 0
        index2 = 0
        maxTempIndex1 = 0
        maxTempIndex2 = 0
        a = list(self.distanceVector)
        for i in xrange(0, len(a) - 1):
            if self.collection[i].temp > self.collection[maxTempIndex1].temp:
                maxTempIndex1 = i
        for i in xrange(0, len(a) - 1):
            if self.collection[i].temp > self.collection[maxTempIndex2].temp:
                if self.collection[i].temp <= self.collection[maxTempIndex1].temp:
                    maxTempIndex2 = i
        a[maxTempIndex1][maxTempIndex2] += 1
        return a


    def randomIncDistanceVector(self):
        index1 = 0
        index2 = 0
        a = list(self.distanceVector)
        while index1 == index2:
            index1 = randint(0, len(a) - 1)
            index2 = randint(0, len(a) - 1)
        a[index1][index2] += 1
        return a

    def getSolutionCost(self):
        maxTemp = 0
        for i in xrange(len(self.collection) - 1):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
        return maxTemp #should return alpha*maxTemp + beta*milpCost

    def updateSequencePair(self, pair):
        self.sequencePair = pair

    def updateDistanceVector(self, vector):
        self.distanceVector = vector

    def isUniformityReached(self):
        epsilon = 20
        maxTemp = 0
        minTemp = 1000
        for i in xrange(len(self.collection) - 1):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
            if self.collection[i].temp < minTemp:
                minTemp = self.collection[i].temp
        return maxTemp - minTemp < epsilon

    def applyMILP(self, sequencePair, distanceVector):
        self.fh.changeDat(sequencePair, distanceVector)
        os.system("glpsol -d base.dat -d /tmp/temp.dat -m floorplan.mod --wlp model.lp --check")
        os.system("gurobi_cl ResultFile=problem.sol model.lp")

        with open("problem.sol", 'r') as f_in:
            outputAsString = f_in.read()

        #Objective value
        startIndex = outputAsString.index("Objective value =")
        realstartIndex = outputAsString.index("= ",startIndex)
        endIndex = outputAsString.index("\n",startIndex)
        objvalue = outputAsString[realstartIndex+2:endIndex]

        self.milpObjVal = objvalue

        #CX
        for rrname in self.fh.rrList:
            startIndex = outputAsString.index("Cx("+rrname+")")
            realstartIndex = outputAsString.index(" ",startIndex)
            endIndex = outputAsString.index("\n",startIndex)
            cx = outputAsString[realstartIndex+1:endIndex]
            for rr in self.collection:
                if rr.name == rrname:
                    rr.cx = cx

        #Cy
        for rrname in self.fh.rrList:
            startIndex = outputAsString.index("Cy("+rrname+")")
            realstartIndex = outputAsString.index(" ",startIndex)
            endIndex = outputAsString.index("\n",startIndex)
            cy = outputAsString[realstartIndex+1:endIndex]
            print(rrname + " ::::: " + cy)
            for rr in self.collection:
                if rr.name == rrname:
                    rr.cy = cy
        return

