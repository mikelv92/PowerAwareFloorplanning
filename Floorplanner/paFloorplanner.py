__author__ = 'mikel'

import sys
from random import randint
import ReconfigurableRegion
import RRCollection

def getWordFromLine(line, pos):
    words = line.split()
    return words[pos]

def randomPermute(l):
    a = l
    b = []
    while len(a) > 0:
        b.append(a.pop(randint(0, len(a)-1)))
    return b

def uniformityReached():
    return False


def main():
    #File handles that contain the input information
    rrFH = open(sys.argv[1])
    powerFH = open(sys.argv[2])
    thermCondFH = open(sys.argv[3])
    aSectFH = open(sys.argv[4])

    #Data structures to hold the input information

    rrCount = len(rrFH.readlines())
    rrList = rrFH.readLines()
    thermCondDict = [[0 for x in xrange(len(rrCount))] for x in xrange(len(rrCount))]
    aSectDict = [[0 for x in xrange(len(rrCount))] for x in xrange(len(rrCount))]
    rrCollection = RRCollection(thermCondDict, aSectDict)

    #init

    for rrName in rrList:
        rr = ReconfigurableRegion(rrName, 0, 0, 0, 0, powerFH.readline(), 0)
        for rrName2 in rrList():
            thermCondDict[rrName][rrName2] = getWordFromLine(thermCondFH.readline(), rrName2)
            aSectDict[rrName][rrName2] = getWordFromLine(aSectFH.readline(), rrName2)
        rrCollection.addRR(rr)

    pair1 = randomPermute(rr)
    pair2 = randomPermute(rr)

    minDistanceVector = [0 for x in xrange(len(rr))]

    while not uniformityReached():
        rrCollection.applyMILP()
        rrCollection.updateThermResistances()
        rrCollection.calculateTemperatures()





if __name__ == '__main__':
    main()