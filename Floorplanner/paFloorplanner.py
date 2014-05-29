import sys
import math
from random import randint
from random import random
import ReconfigurableRegion
import RRManager
import SequencePair
import Solution
from FileHandler import FileHandler

def acceptanceProbability(current, new, temp):
    if current > new:
        return 1
    else:
        return math.exp(current - new / temp)

def main():
    #confu, power, thermCond, ASect
    fh = FileHandler(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])

    #Data structures to hold the input information
    rrCount = fh.getRRCount()
    rrList = fh.getRRList()
    thermCondDict = fh.getThermCondDict()
    aSectDict = fh.getASectDict()

    rrManager = RRManager(thermCondDict, aSectDict, fh)

    powerDict = fh.getPowerDict()
    for rrName in fh.getRRList():
        rr = ReconfigurableRegion(rrName, 0, 0, powerDict[rrName], 1000, rrManager)
        rrManager.addRR(rr)

    fh.createFirstDat(rrManager.sequencePair, rrManager.distanceVector)

    saTemperature = 10000
    saCoolingRate = 0.003

    currentSolutionCost = rrManager.getSolutionCost()
    sequencePair = SequencePair()
    distanceVector = [[0 for x in xrange(len(rrCount))] for x in xrange(len(rrCount))]
    goodSolutions = []

    while not rrManager.isUniformityReached() and saTemperature > 1:
        choice = randint(1, 2)
        if choice == 1:
            sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        else:
            distanceVector = rrManager.makeDistanceVectorMove()
        rrManager.applyMILP(sequencePair, distanceVector)
        rrManager.calculateTemperatures()
        
        newSolutionCost = rrManager.getSolutionCost()
        #if it has a better cost, save it in the good solutions array to not lose it
        if currentSolutionCost - newSolutionCost > 0:
            goodSolutions.append(Solution(sequencePair, distanceVector, newSolutionCost))

        if acceptanceProbability(currentSolutionCost, newSolutionCost, saTemperature) > random():
            rrManager.updateSequencePair(sequencePair)
            rrManager.updateDistanceVector(distanceVector)
            
        saTemperature *= 1 - saCoolingRate


if __name__ == '__main__':
    main()