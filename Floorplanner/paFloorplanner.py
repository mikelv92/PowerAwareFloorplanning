__author__ = 'mikel'

import sys
import math
from random import randint
from random import random
import ReconfigurableRegion
import RRManager
import SequencePair

def getWordFromLine(line, pos):
    words = line.split()
    return words[pos]

def acceptanceProbability(current, new, temp):
    if current > new:
        return 1
    else:
        return math.exp(current - new / temp)

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

    #init

    for rrName in rrList:
        for rrName2 in rrList():
            thermCondDict[rrName][rrName2] = getWordFromLine(thermCondFH.readline(), rrName2)
            aSectDict[rrName][rrName2] = getWordFromLine(aSectFH.readline(), rrName2)

    rrManager = RRManager(thermCondDict, aSectDict)

    for rrName in rrList:
        rr = ReconfigurableRegion(rrName, 0, 0, 0, 0, powerFH.readline(), 1000, rrManager)
        rrManager.addRR(rr)

    saTemperature = 10000
    saCoolingRate = 0.003

    currentSolutionCost = rrManager.getSolutionCost()
    sequencePair = SequencePair()
    distanceVector = [[0 for x in xrange(len(rrCount))] for x in xrange(len(rrCount))]
    while not rrManager.isUniformityReached() and saTemperature > 1:
        choice = randint(1, 2)
        if choice == 1:
            sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        else:
            distanceVector = rrManager.makeDistanceVectorMove()
        rrManager.applyMILP()
        rrManager.calculateTemperatures()
        
        newSolutionCost = rrManager.getSolutionCost()

        if acceptanceProbability(currentSolutionCost, newSolutionCost, saTemperature) > random():
            rrManager.updateSequencePair(sequencePair)
            rrManager.updateDistanceVector(distanceVector)
            
        saTemperature *= 1 - saCoolingRate


if __name__ == '__main__':
    main()