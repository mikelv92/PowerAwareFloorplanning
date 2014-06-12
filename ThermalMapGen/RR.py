__author__ = 'mikel'
from math import floor

class RR:
    def __init__(self, no, x, y, w, h, temp):
        self.no = no
        self.x = x
        self.y = y
        self.w = w
        self.h = h
        self.temp = temp
        self.cx = floor(x + w / 2)
        self.cy = floor(y + w / 2)