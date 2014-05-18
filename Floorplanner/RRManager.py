__author__ = 'mikel'

import numpy

class RRManager:
    def __init__(self, thermCondDict, aSectDict):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict
        self.tempArray = []
        self.sequence1 = []
        self.sequence1 = []

    def addRR(self, rr):
        self.collection.append(rr)
        self.sequence1.append(rr)
        self.sequence2.append(rr)
        self.randomPermute(self.sequence1)
        self.randomPermute(self.sequence2)

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
        a = l
        b = []
        while len(a) > 0:
            b.append(a.pop(randint(0, len(a)-1)))
        return b

    def isOnTop(self, rr1, rr2):
        return self.sequence1.index(rr1) < self.sequence1.index(rr2) and self.sequence2.index(rr1) > self.sequence2.index(rr2)

    def isOnLeft(self, rr1, rr2):
        return self.sequence1.index(rr1) < self.sequence1.index(rr2) and self.sequence2.index(rr1) > self.sequence2.index(rr2)

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