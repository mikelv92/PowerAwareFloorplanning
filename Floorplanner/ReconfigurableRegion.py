__author__ = 'mikel'

import RRManager

class ReconfigurableRegion:
    def __init__(self, name, xLeft, yBottom, width, height, power, temp, rrManager):
        self.name = name
        self.xLeft = xLeft
        self.yBottom = yBottom
        self.width = width
        self.height = height
        self.power = power
        self.temp = temp
        self.mgr = rrManager

    def calcThermResistance(self, rr):
        Lij = 0
        if self.xLeft < rr.xLeft:
            if self.yBottom < rr.yBottom:
                Lij = rr.xLeft - self.xLeft + rr.yBottom - self.yBottom
            else:
                Lij = rr.xLeft - self.xLeft + self.yBottom - rr.yBottom
        else:
            if self.yBottom < rr.yBottom:
                Lij = self.xLeft - rr.xLeft + rr.yBottom - self.yBottom
            else:
                Lij = self.xLeft - rr.xLeft + self.yBottom - rr.yBottom
        return Lij / (self.mgr.getTempConstant(self, rr) * self.mgr.getSectArea(self, rr))

    def isOnTopOf(self, rr):
        return self.mgr.isOnTop(self, rr)

    def isToTheLeftOf(self, rr):
        return self.mgr.isOnLeft(self, rr)