__author__ = 'mikel'

class RRCollection:
    def __init__(self, thermCondDict, aSectDict):
        self.collection = []
        self.thermCondDict = thermCondDict
        self.aSectDict = aSectDict

    def addRR(self, rr):
        self.collection.append(rr)

    def popRR(self, pos):
        return self.collection.pop(pos)

    def getRR(self, pos):
        return self.collection[pos]

    def getRR(self, rr):
        for i in xrange(len(self.collection)):
            if rr == self.collection[i].name:
                return self.collection[i]

    def updateThermResistance(self, rr1, rr2):
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
                self.updateThermResistance(rri, rrj)
        return

    def getTempConstant(self, rr1, rr2):
        return self.thermCondDict[rr1.name][rr2.name]

    def getSectArea(self, rr1, rr2):
        return self.aSectDict[rr1.name][rr2.name]

    def applyMILP(self):
        return