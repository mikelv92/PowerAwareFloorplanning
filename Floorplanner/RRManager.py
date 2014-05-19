__author__ = 'mikel'

import numpy
from random import randint
import SequencePair

class RRManager:
    def __init__(self, thermCondDict, aSectDict):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict
        self.tempArray = []
        self.solution = SequencePair()

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
        return self.solution.sequence1
    
    def getSequence2(self):
        return self.solution.sequence2

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

    def swapInSequencePair(self):
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

    def getSolutionCost(self):
        maxTemp = 0
        for i in xrange(len(self.collection) - 1):
            if self.collection[i].temp > maxTemp:
                maxTemp = self.collection[i].temp
        return maxTemp

    def updateSolution(self, currentSolution):
        self.solution = currentSolution
        return

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

    def applyMILP(self):
        # should assign the return values of MILP to the reconfigurable regions in self.collection
        return