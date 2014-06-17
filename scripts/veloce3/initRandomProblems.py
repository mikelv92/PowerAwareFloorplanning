"""
This script generates a set of random problems suitable for testing.
The testing set is composed of 20 problems:
for each number of reconfigurable regions in [5,10,15,20,25]
a problem with slice occupancy in [70%,75%,80%,85%] is generated.
each problem will have a name like x_y where x is the number of reconfigurable
regions and y is the occupancy rate.

respectively [2,4,6,8,12] regions have connections to IO with respect to [5,10,15,20,25]
the IO connections for each region varies from 1 to 2 ports with equal probabilities

for each connection the number of wires goes from 5 to 40
the probability of two regions being connected is 1/"number of regions"

from 3 to 7 regions requires BRAM depending on the number of regions
from 1 to 2 regions requires DSP depending on the number of regions: [5,10,15] [20,25]

each region requiring a BRAM takes a value in [4,8]
each region requiring a DSP takes a value in [8,16]
"""

import os
import re
import sys
from random import *

IOColumns = [-1, 47, 99]
totSlice = 17280
totBram = 128
totDsp = 64
IOList = []

#generate IO list
for x in range(0,len(IOColumns)):
	for h in range(10,170,20):
		IOList += [(IOColumns[x],h)]

problems = []

#problem generation
for numRec in range(5,30,5):
	for size in range(70,90,5):
		numRecIo = (numRec*2) / 5;
		numRecBram = (numRec / 5) + 2
		if(numRec > 15):
			numRecDsp = 2
		else:
			numRecDsp = 1

		problem = {
			'name': str(numRec) + '_' + str(size),
			'regions': [['rec' + str(i),0,0,0] for i in range(1,numRec+1)],
			'connections': [],
			'io': []
		}

		#generate number of required slice
		slices = [randint(1,10) for i in range(0,numRec)]
		normFactor = (totSlice * (size / 100.0)) / sum(slices)
		slices = [int(x*normFactor / 40.0 + 0.5) * 40 for x in slices]
		
		#assign slices to regions
		problem['regions'] = [[pair[1][0],slices[pair[0]],0,0] for pair in enumerate(problem['regions'])]
		
		#assign bram
		for i in range(0, numRecBram):
			problem['regions'][i][2] = randint(1,2)*4

		shuffle(problem['regions'])

		#assign dsp
		for i in range(0, numRecDsp):
			problem['regions'][i][3] = randint(1,2)*8

		shuffle(problem['regions'])

		#assign connections
		for i in range (1, numRec + 1):
			for j in range(1, numRec + 1):
				if(i != j and randint(0,numRec) == 0):
					problem['connections'] += [['rec' + str(i), 'rec' + str(j), randint(5,40)]]

		#assign IO
		tempIO = IOList

		for i in range(0,numRecIo):
			ios = sample(tempIO,randint(1,2))
			tempIO = list(set(tempIO) - set(ios))
			for io in ios:
				problem['io'] += [[problem['regions'][i][0],io[0],io[1],randint(5,40)]]

		# add the generated problem
		problems += [problem]

data = 'problems = '
data += str(problems).replace('{','\n{\n').replace('}','\n}\n').replace('],','],\n').replace('[[','\n[[').replace('\'io','\n \'io')

#write result
probFile = open('problems/problems.py','w')
probFile.write(data)
probFile.close()

print 'problem generated!'
		

