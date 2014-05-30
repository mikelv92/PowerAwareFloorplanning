import sys
import math
from random import randint
from random import random
from ReconfigurableRegion import ReconfigurableRegion
from RRManager import RRManager
from SequencePair import SequencePair
from Solution import Solution
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
    for rrNum in xrange(rrCount):
        #what values to give as cx and cy?
        print rrNum
        rr = ReconfigurableRegion("rec" + `rrNum + 1`, 0, 0, powerDict[rrNum], 1000*random(), rrManager)
        rrManager.addRR(rr)
        print rrManager.getSequence1()

    fh.updateDat(rrManager.sequencePair, rrManager.distanceVector)

    saTemperature = 10000
    saCoolingRate = 0.003

    currentSolutionCost = rrManager.getSolutionCost()
    sequencePair = SequencePair(list(), list())
    distanceVector = [[0 for x in xrange(rrCount)] for x in xrange(rrCount)]
    goodSolutions = []

    while not rrManager.isUniformityReached() and saTemperature > 1:
        print "annealing"
        choice = randint(1, 2)
        sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        if choice == 1:
            sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        else:
            print("sequence prima "+str(sequencePair.sequence1))
            distanceVector = rrManager.makeDistanceVectorMove()
            print("sequence dopo "+str(sequencePair.sequence1))
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