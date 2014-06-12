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
        rrX = round(float(rrFH.readline().rstrip("\n")))
        rrY = round(float(rrFH.readline().rstrip("\n")))
        rrW = round(float(rrFH.readline().rstrip("\n")))
        rrH = round(float(rrFH.readline().rstrip("\n")))
        temp = float(rrFH.readline().rstrip("\n"))
        regions.append(RR(i + 1, rrX, rrY, rrW, rrH, temp))

    occupancy = [[0 for i in xrange(9)] for i in xrange(62)]
    for i in xrange(62):
        for j in xrange(9):
            for rr in regions:
                if i >= rr.x and i <= (rr.x + rr.w - 1):
                    if j >= rr.y and j <= (rr.y + rr.h - 1):
                        occupancy[i][j] = rr.no

    z = [[0 for i in xrange(9)] for i in xrange(62)]

    for i in xrange(62):
        for j in xrange(9):
            for rr in regions:
                if rr.no == occupancy[i][j]:
                    z[i][j] = rr.temp

    for i in xrange(1, 61):
        for j in xrange(1, 8):
            if occupancy[i][j] != 0:
                for rr in regions:
                    if rr.no == occupancy[i][j]:
                        z[i][j] = rr.temp
            else:
                z[i][j] = 0

    matFH = open("matlabCmd.txt", "w")
    matFH.write("[x, y] = meshgrid(0:1:61, 0:1:8)\n")
    matFH.write("z = [")
    for i in xrange(62):
        for j in xrange(9):
            matFH.write(str(z[i][j]) + " ")
    matFH.write("]\n")
    matFH.write("z = reshape(z, 9, 62)\n")
    matFH.write("[xi, yi] = meshgrid(0:0.25:61, 0:0.25:8)\n")
    matFH.write("zi = interp2(x, y, z, xi, yi, 'nearest')\n")
    matFH.write("mesh(xi, yi, zi)")
    matFH.close()

if __name__ == '__main__':
    main()
