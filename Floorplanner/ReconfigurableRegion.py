class ReconfigurableRegion:
    def __init__(self, name, cx, cy, power, temp, rrManager):
        self.name = name
        self.cx = cx
        self.cy = cy
        self.power = power
        self.temp = temp
        self.mgr = rrManager
        
    def calcThermResistance(self, rr):
        Lij = 0
        if self.cx < rr.cx:
            if self.cy < rr.cy:
                Lij = (rr.cx - self.cx) + (rr.cy - self.cy)
            else:
                Lij = (rr.cx - self.cx) + (self.cy - rr.cy)
        else:
            if self.cy < rr.cy:
                Lij = (self.cx - rr.cx) + (rr.cy - self.cy)
            else:
                Lij = (self.cx - rr.cx) + (self.cy - rr.cy)
        return Lij / (self.mgr.getTempConstant(self, rr) * self.mgr.getSectArea(self, rr))

    def isOnTopOf(self, rr):
        return self.mgr.isOnTop(self, rr)

    def isToTheLeftOf(self, rr):
        return self.mgr.isOnLeft(self, rr)