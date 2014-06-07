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
    if new == 817609:
        return 0
    if current > new:
        return 1
    else:
        #print("exp: "+str(math.exp((current - new)*300 / temp))+"con current-new= "+str(current-new)+ "e temp= " +str(temp))
        return math.exp((current - new)*300 / temp) > random()

def main():
    if len(sys.argv) < 3:
        sys.stderr.write('Usage: python paFloorplanner.py <confu.dat> <power.txt> <const.txt>\n')
        sys.exit(-1)

    fh = FileHandler(sys.argv[1], sys.argv[2], sys.argv[3])

    #Data structures to hold the input information
    rrCount = fh.getRRCount()
    rrList = fh.getRRList()
    thermCond = fh.getThermCond()
    aSect = fh.getASect()
    sliceHeight = fh.getSliceHeight()
    sliceWidth = fh.getSliceWidth()
    airTemp = fh.getAirTemp()
    airResistance = fh.getAirResistance()
    rrManager = RRManager(thermCond, aSect, sliceHeight, sliceWidth, airTemp, airResistance, fh)

    powerDict = fh.getPowerDict()
    for rrNum in xrange(rrCount):
        #what values to give as cx and cy?
        rr = ReconfigurableRegion("rec" + `rrNum + 1`, 0, 0, powerDict[rrNum], 1000*random(), rrManager)
        rrManager.addRR(rr)
        #print rrManager.getSequence1()

    fh.updateDat(rrManager.sequencePair, rrManager.distanceVector)

    saTemperature = 5000
    saCoolingRate = 0.003

    currentSolutionCost = 1000000000000.0
    sequencePair = SequencePair(list(), list())
    distanceVector = [[0 for x in xrange(rrCount)] for x in xrange(rrCount)]
    goodSolutions = []

    while not rrManager.isUniformityReached() and saTemperature > 1:
        print "annealing"
        '''
        choice = randint(1, 2)
        sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        if choice == 1:
            sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        else:
            distanceVector = rrManager.makeDistanceVectorMove()
        '''

        sequencePair = rrManager.makeSwapMove() #pass this sequence pair to the milp
        rrManager.applyMILP(sequencePair, distanceVector)
        rrManager.calculateTemperatures()
        
        newSolutionCost = rrManager.getSolutionCost()
        #if it has a better cost, save it in the good solutions array to not lose it
        if currentSolutionCost - newSolutionCost > 0:
            goodSolutions.append(Solution(sequencePair, distanceVector, newSolutionCost))


        if acceptanceProbability(currentSolutionCost, newSolutionCost, saTemperature):
            print("soluzione accettata con "+"Current: "+str(currentSolutionCost)+" New: "+str(newSolutionCost) + " Tmax: "+str(rrManager.getTmax())+" MILP: "+str(rrManager.getMILPObj()))
            rrManager.updateSequencePair(sequencePair)
            #rrManager.updateDistanceVector(distanceVector)
            currentSolutionCost = newSolutionCost
            rrManager.drawOnBrowser("soluzione accettata")
        else:
            if(newSolutionCost == 817609):
                print("soluzione scartata due to infeasibility")
            else:
                print("soluzione scartata con "+"Current: "+str(currentSolutionCost)+" New: "+str(newSolutionCost) + " Tmax: "+str(rrManager.getTmax())+" MILP: "+str(rrManager.getMILPObj()))
        saTemperature *= 1 - saCoolingRate
        print("saTemperature: " +str(saTemperature))

    print("finito!")

    print(str(goodSolutions))


if __name__ == '__main__':
    main()