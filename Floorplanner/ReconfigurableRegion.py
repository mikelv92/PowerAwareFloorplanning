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
        sliceWidth = self.mgr.getSliceWidth()
        sliceHeight = self.mgr.getSliceHeight()
        if self.cx < rr.cx:
            if self.cy < rr.cy:
                Lij = (rr.cx - self.cx) * sliceWidth + (rr.cy - self.cy) * sliceHeight
            else:
                Lij = (rr.cx - self.cx) * sliceWidth + (self.cy - rr.cy) * sliceHeight
        else:
            if self.cy < rr.cy:
                Lij = (self.cx - rr.cx) * sliceWidth + (rr.cy - self.cy) * sliceHeight
            else:
                Lij = (self.cx - rr.cx) * sliceWidth + (self.cy - rr.cy) * sliceHeight
        return Lij / (self.mgr.getTempConstant() * self.mgr.getSectArea())

    def isOnTopOf(self, rr):
        return self.mgr.isOnTop(self, rr)

    def isToTheLeftOf(self, rr):
        return self.mgr.isOnLeft(self, rr)