__author__ = 'mikel'

from RR import RR
from Center import Center
from math import floor
import sys

def main():
    if len(sys.argv) == 1:
        sys.stderr.write('Usage: python thermalMapGen.py <rrNo>\n')
        sys.exit(-1)

    x = []
    for i in xrange(62):
        for j in xrange(9):
            x.append(i)

    y = []
    for i in xrange(9):
        for j in xrange(62):
            y.append(j)

    rrNo = int(sys.argv[1])

    rrFH = open("regions.txt")
    regions = []
    for i in xrange(rrNo):
        rrX = int(rrFH.readline())
        rrY = int(rrFH.readline())
        rrW = int(rrFH.readline())
        rrH = int(rrFH.readline())
        temp = float(rrFH.readline())
        regions.append(RR(i + 1, rrX, rrY, rrW, rrH, temp))

    occupancy = [[0 for i in xrange(9)] for i in xrange(62)]
    for i in xrange(62):
        for j in xrange(9):
            for rr in regions:
                if i >= rr.x and i <= (rr.x + rr.w - 1):
                    if j >= rr.y and j <= (rr.y + rr.h - 1):
                        occupancy[i][j] = rr.no

    for j in xrange(9):
        print occupancy[j]

    z = [[0 for i in xrange(9)] for i in xrange(62)]

    for i in xrange(62):
        for j in xrange(9):
            for rr in regions:
                if rr.no == occupancy[i][j]:
                    z[i][j] = rr.temp

    centers = []
    for rr in regions:
        centers.append(Center(floor((rr.x + rr.w) / 2), floor((rr.y + rr.h) / 2)))

    flag = 0
    for l in xrange(100):
        for i in xrange(1, 61):
            for j in xrange(1, 8):
                for c in centers:
                    if i == c.x and j == c.y:
                        flag = 1
                if z[i][j] == 0:
                    flag = 1
                else:
                    if flag == 0:
                        z[i][j] = (z[i - 1][j] + z[i + 1][j] + z[i][j - 1] + z[i][j + 1]) / 4
                    flag = 0
    for j in xrange(62):
        print z[j]

    matFH = open("matlabCmd.txt", "w")
    matFH.write("x = " + str(x) + "\n")
    matFH.write("y = " + str(y) + "\n")
    matFH.write("z = [")
    for i in xrange(62):
        for j in xrange(9):
            matFH.write(str(z[i][j]) + " ")
    matFH.write("]\n")
    matFH.write("x = reshape(x, 9, 62)\n")
    matFH.write("y = reshape(y, 9, 62)\n")
    matFH.write("z = reshape(z, 9, 62)\n")
    matFH.write("mesh(x, y, z)\n")

if __name__ == '__main__':
    main()
