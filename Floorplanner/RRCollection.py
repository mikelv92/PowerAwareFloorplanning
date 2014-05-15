__author__ = 'mikel'

import numpy

class RRCollection:
    def __init__(self, thermCondDict, aSectDict):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict
        self.thermResDict = [[]]
        self.tempArray = []
    def addRR(self, rr):
        self.collection.append(rr)

    def popRR(self, pos):
        return self.collection.pop(pos)

    def getRR(self, pos):
        return self.collection[pos]

#    def getRR(self, rr):
#        for i in xrange(len(self.collection)):
#            if rr == self.collection[i].name:
#                return self.collection[i]

    def calcThermResistance(self, rr1, rr2):
        Lij = 0
        if rr1.xLeft < rr2.xLeft:
            if rr1.yBottom < rr2.yBottom:
                Lij = rr2.xLeft - rr1.xLeft + rr2.yBottom - rr1.yBottom
            else:
                Lij = rr2.xLeft - rr1.xLeft + rr1.yBottom - rr2.yBottom
        else:
            if rr1.yBottom < rr2.yBottom:
                Lij = rr1.xLeft - rr2.xLeft + rr2.yBottom - rr1.yBottom
            else:
                Lij = rr1.xLeft - rr2.xLeft + rr1.yBottom - rr2.yBottom
        return Lij / (self.getTempConstant(rr1, rr2) * self.getSectArea(rr1, rr2))

    def updateThermResistances(self):
        for rri in self.collection:
            for rrj in self.collection:
                i = self.collection.index(rri)
                j = self.collection.index(rrj)
                self.thermResDict[i][j] = self.calcThermResistance(rri, rrj)
        return

    def getTempConstant(self, rr1, rr2):
        return self.thermCondDict[self.collection.index(rr1)][self.collection.index(rr2)]

    def getSectArea(self, rr1, rr2):
        return self.aSectDict[self.collection.index(rr1)][self.collection.index(rr2)]

    def applyMILP(self):
        return

    def calculateTemperatures(self):
        #declare the coefficient and known term matrixes
        a = [[0 for x in xrange(len(self.collection))] for x in xrange(len(self.collection))]
        b = [0 for x in xrange(len(self.collection))]

        #fill the coefficient matrix
        for i in xrange(len(self.collection) - 1):
            for j in xrange(len(self.collection) - 1):
                if i == j:
                    for k in xrange(len(self.collection) - 1):
                        a[i][j] += 1 / self.thermResDict[i][k]
                else:
                    a[i][j] = -1 / self.thermResDict[i][j]

        #fill the known term matrix
        for i in xrange(len(self.collection) - 1):
            b[i] = -1 * self.collection[i].power

        #solve
        coefficientMatrix = numpy.array(a);
        knownTermMatrix = numpy.array(b);
        self.tempArray = numpy.linalg.solve(coefficientMatrix, knownTermMatrix)