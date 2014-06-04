\* Problem: floorplan *\

Minimize
 cost: + 8.44309354947653e-06 IOCost + 8.44309354947653e-06 CCost
 + 4.65809577044904e-05 RCost + 0.000147754137115839 PCost

Subject To
 IOCost_def: + IOCost = -0
 CCost_def: - 40 DCx(rec1,rec2) - 100 DCx(rec3,rec1) - 40 DCy(rec1,rec2)
 - 100 DCy(rec3,rec1) + CCost = -0
 RCost_def: - DRes(rec1,CLB) - DRes(rec1,DSP) - DRes(rec1,BRAM)
 - DRes(rec2,CLB) - DRes(rec2,DSP) - DRes(rec2,BRAM) - DRes(rec3,CLB)
 - DRes(rec3,DSP) - DRes(rec3,BRAM) - DRes(rec4,CLB) - DRes(rec4,DSP)
 - DRes(rec4,BRAM) + RCost = -0
 PCost_def: - 4 w(rec1) - 4 w(rec2) - 4 w(rec3) - 4 w(rec4) - 40 a(rec1)
 - 40 a(rec2) - 40 a(rec3) - 40 a(rec4) + PCost = 16
 xCentroid(rec1): - 2 x(rec1) - w(rec1) + Cx(rec1) = 1
 xCentroid(rec2): - 2 x(rec2) - w(rec2) + Cx(rec2) = 1
 xCentroid(rec3): - 2 x(rec3) - w(rec3) + Cx(rec3) = 1
 xCentroid(rec4): - 2 x(rec4) - w(rec4) + Cx(rec4) = 1
 yCentroid(rec1): - 20 y(rec1) - 10 a(rec1) + Cy(rec1) = -20
 yCentroid(rec2): - 20 y(rec2) - 10 a(rec2) + Cy(rec2) = -20
 yCentroid(rec3): - 20 y(rec3) - 10 a(rec3) + Cy(rec3) = -20
 yCentroid(rec4): - 20 y(rec4) - 10 a(rec4) + Cy(rec4) = -20
 deltaXCentroid_1(rec1,rec2): - Cx(rec1) + Cx(rec2) + DCx(rec1,rec2)
 >= -0
 deltaXCentroid_1(rec1,rec3): - Cx(rec1) + Cx(rec3) + DCx(rec1,rec3)
 >= -0
 deltaXCentroid_1(rec1,rec4): - Cx(rec1) + Cx(rec4) + DCx(rec1,rec4)
 >= -0
 deltaXCentroid_1(rec2,rec1): + Cx(rec1) - Cx(rec2) + DCx(rec2,rec1)
 >= -0
 deltaXCentroid_1(rec2,rec3): - Cx(rec2) + Cx(rec3) + DCx(rec2,rec3)
 >= -0
 deltaXCentroid_1(rec2,rec4): - Cx(rec2) + Cx(rec4) + DCx(rec2,rec4)
 >= -0
 deltaXCentroid_1(rec3,rec1): + Cx(rec1) - Cx(rec3) + DCx(rec3,rec1)
 >= -0
 deltaXCentroid_1(rec3,rec2): + Cx(rec2) - Cx(rec3) + DCx(rec3,rec2)
 >= -0
 deltaXCentroid_1(rec3,rec4): - Cx(rec3) + Cx(rec4) + DCx(rec3,rec4)
 >= -0
 deltaXCentroid_1(rec4,rec1): + Cx(rec1) - Cx(rec4) + DCx(rec4,rec1)
 >= -0
 deltaXCentroid_1(rec4,rec2): + Cx(rec2) - Cx(rec4) + DCx(rec4,rec2)
 >= -0
 deltaXCentroid_1(rec4,rec3): + Cx(rec3) - Cx(rec4) + DCx(rec4,rec3)
 >= -0
 deltaXCentroid_2(rec1,rec2): + Cx(rec1) - Cx(rec2) + DCx(rec1,rec2)
 >= -0
 deltaXCentroid_2(rec1,rec3): + Cx(rec1) - Cx(rec3) + DCx(rec1,rec3)
 >= -0
 deltaXCentroid_2(rec1,rec4): + Cx(rec1) - Cx(rec4) + DCx(rec1,rec4)
 >= -0
 deltaXCentroid_2(rec2,rec1): - Cx(rec1) + Cx(rec2) + DCx(rec2,rec1)
 >= -0
 deltaXCentroid_2(rec2,rec3): + Cx(rec2) - Cx(rec3) + DCx(rec2,rec3)
 >= -0
 deltaXCentroid_2(rec2,rec4): + Cx(rec2) - Cx(rec4) + DCx(rec2,rec4)
 >= -0
 deltaXCentroid_2(rec3,rec1): - Cx(rec1) + Cx(rec3) + DCx(rec3,rec1)
 >= -0
 deltaXCentroid_2(rec3,rec2): - Cx(rec2) + Cx(rec3) + DCx(rec3,rec2)
 >= -0
 deltaXCentroid_2(rec3,rec4): + Cx(rec3) - Cx(rec4) + DCx(rec3,rec4)
 >= -0
 deltaXCentroid_2(rec4,rec1): - Cx(rec1) + Cx(rec4) + DCx(rec4,rec1)
 >= -0
 deltaXCentroid_2(rec4,rec2): - Cx(rec2) + Cx(rec4) + DCx(rec4,rec2)
 >= -0
 deltaXCentroid_2(rec4,rec3): - Cx(rec3) + Cx(rec4) + DCx(rec4,rec3)
 >= -0
 deltaAbsXCentroid_1(rec1,rec2): - 120 absX(rec1,rec2) - Cx(rec1)
 + Cx(rec2) + DCx(rec1,rec2) <= -0
 deltaAbsXCentroid_1(rec1,rec3): - 120 absX(rec1,rec3) - Cx(rec1)
 + Cx(rec3) + DCx(rec1,rec3) <= -0
 deltaAbsXCentroid_1(rec1,rec4): - 120 absX(rec1,rec4) - Cx(rec1)
 + Cx(rec4) + DCx(rec1,rec4) <= -0
 deltaAbsXCentroid_1(rec2,rec3): - 120 absX(rec2,rec3) - Cx(rec2)
 + Cx(rec3) + DCx(rec2,rec3) <= -0
 deltaAbsXCentroid_1(rec2,rec4): - 120 absX(rec2,rec4) - Cx(rec2)
 + Cx(rec4) + DCx(rec2,rec4) <= -0
 deltaAbsXCentroid_1(rec3,rec4): - 120 absX(rec3,rec4) - Cx(rec3)
 + Cx(rec4) + DCx(rec3,rec4) <= -0
 deltaAbsXCentroid_2(rec1,rec2): + 120 absX(rec1,rec2) + Cx(rec1)
 - Cx(rec2) + DCx(rec1,rec2) <= 120
 deltaAbsXCentroid_2(rec1,rec3): + 120 absX(rec1,rec3) + Cx(rec1)
 - Cx(rec3) + DCx(rec1,rec3) <= 120
 deltaAbsXCentroid_2(rec1,rec4): + 120 absX(rec1,rec4) + Cx(rec1)
 - Cx(rec4) + DCx(rec1,rec4) <= 120
 deltaAbsXCentroid_2(rec2,rec3): + 120 absX(rec2,rec3) + Cx(rec2)
 - Cx(rec3) + DCx(rec2,rec3) <= 120
 deltaAbsXCentroid_2(rec2,rec4): + 120 absX(rec2,rec4) + Cx(rec2)
 - Cx(rec4) + DCx(rec2,rec4) <= 120
 deltaAbsXCentroid_2(rec3,rec4): + 120 absX(rec3,rec4) + Cx(rec3)
 - Cx(rec4) + DCx(rec3,rec4) <= 120
 deltaYCentroid_1(rec1,rec2): - Cy(rec1) + Cy(rec2) + DCy(rec1,rec2)
 >= -0
 deltaYCentroid_1(rec1,rec3): - Cy(rec1) + Cy(rec3) + DCy(rec1,rec3)
 >= -0
 deltaYCentroid_1(rec1,rec4): - Cy(rec1) + Cy(rec4) + DCy(rec1,rec4)
 >= -0
 deltaYCentroid_1(rec2,rec1): + Cy(rec1) - Cy(rec2) + DCy(rec2,rec1)
 >= -0
 deltaYCentroid_1(rec2,rec3): - Cy(rec2) + Cy(rec3) + DCy(rec2,rec3)
 >= -0
 deltaYCentroid_1(rec2,rec4): - Cy(rec2) + Cy(rec4) + DCy(rec2,rec4)
 >= -0
 deltaYCentroid_1(rec3,rec1): + Cy(rec1) - Cy(rec3) + DCy(rec3,rec1)
 >= -0
 deltaYCentroid_1(rec3,rec2): + Cy(rec2) - Cy(rec3) + DCy(rec3,rec2)
 >= -0
 deltaYCentroid_1(rec3,rec4): - Cy(rec3) + Cy(rec4) + DCy(rec3,rec4)
 >= -0
 deltaYCentroid_1(rec4,rec1): + Cy(rec1) - Cy(rec4) + DCy(rec4,rec1)
 >= -0
 deltaYCentroid_1(rec4,rec2): + Cy(rec2) - Cy(rec4) + DCy(rec4,rec2)
 >= -0
 deltaYCentroid_1(rec4,rec3): + Cy(rec3) - Cy(rec4) + DCy(rec4,rec3)
 >= -0
 deltaYCentroid_2(rec1,rec2): + Cy(rec1) - Cy(rec2) + DCy(rec1,rec2)
 >= -0
 deltaYCentroid_2(rec1,rec3): + Cy(rec1) - Cy(rec3) + DCy(rec1,rec3)
 >= -0
 deltaYCentroid_2(rec1,rec4): + Cy(rec1) - Cy(rec4) + DCy(rec1,rec4)
 >= -0
 deltaYCentroid_2(rec2,rec1): - Cy(rec1) + Cy(rec2) + DCy(rec2,rec1)
 >= -0
 deltaYCentroid_2(rec2,rec3): + Cy(rec2) - Cy(rec3) + DCy(rec2,rec3)
 >= -0
 deltaYCentroid_2(rec2,rec4): + Cy(rec2) - Cy(rec4) + DCy(rec2,rec4)
 >= -0
 deltaYCentroid_2(rec3,rec1): - Cy(rec1) + Cy(rec3) + DCy(rec3,rec1)
 >= -0
 deltaYCentroid_2(rec3,rec2): - Cy(rec2) + Cy(rec3) + DCy(rec3,rec2)
 >= -0
 deltaYCentroid_2(rec3,rec4): + Cy(rec3) - Cy(rec4) + DCy(rec3,rec4)
 >= -0
 deltaYCentroid_2(rec4,rec1): - Cy(rec1) + Cy(rec4) + DCy(rec4,rec1)
 >= -0
 deltaYCentroid_2(rec4,rec2): - Cy(rec2) + Cy(rec4) + DCy(rec4,rec2)
 >= -0
 deltaYCentroid_2(rec4,rec3): - Cy(rec3) + Cy(rec4) + DCy(rec4,rec3)
 >= -0
 deltaAbsYCentroid_1(rec1,rec2): - 160 absY(rec1,rec2) - Cy(rec1)
 + Cy(rec2) + DCy(rec1,rec2) <= -0
 deltaAbsYCentroid_1(rec1,rec3): - 160 absY(rec1,rec3) - Cy(rec1)
 + Cy(rec3) + DCy(rec1,rec3) <= -0
 deltaAbsYCentroid_1(rec1,rec4): - 160 absY(rec1,rec4) - Cy(rec1)
 + Cy(rec4) + DCy(rec1,rec4) <= -0
 deltaAbsYCentroid_1(rec2,rec3): - 160 absY(rec2,rec3) - Cy(rec2)
 + Cy(rec3) + DCy(rec2,rec3) <= -0
 deltaAbsYCentroid_1(rec2,rec4): - 160 absY(rec2,rec4) - Cy(rec2)
 + Cy(rec4) + DCy(rec2,rec4) <= -0
 deltaAbsYCentroid_1(rec3,rec4): - 160 absY(rec3,rec4) - Cy(rec3)
 + Cy(rec4) + DCy(rec3,rec4) <= -0
 deltaAbsYCentroid_2(rec1,rec2): + 160 absY(rec1,rec2) + Cy(rec1)
 - Cy(rec2) + DCy(rec1,rec2) <= 160
 deltaAbsYCentroid_2(rec1,rec3): + 160 absY(rec1,rec3) + Cy(rec1)
 - Cy(rec3) + DCy(rec1,rec3) <= 160
 deltaAbsYCentroid_2(rec1,rec4): + 160 absY(rec1,rec4) + Cy(rec1)
 - Cy(rec4) + DCy(rec1,rec4) <= 160
 deltaAbsYCentroid_2(rec2,rec3): + 160 absY(rec2,rec3) + Cy(rec2)
 - Cy(rec3) + DCy(rec2,rec3) <= 160
 deltaAbsYCentroid_2(rec2,rec4): + 160 absY(rec2,rec4) + Cy(rec2)
 - Cy(rec4) + DCy(rec2,rec4) <= 160
 deltaAbsYCentroid_2(rec3,rec4): + 160 absY(rec3,rec4) + Cy(rec3)
 - Cy(rec4) + DCy(rec3,rec4) <= 160
 deltaXBorder_1(rec1,rec2): - 2 x(rec1) + 2 x(rec2) + 2 w(rec2)
 + DBx(rec1,rec2) >= -0
 deltaXBorder_1(rec1,rec3): - 2 x(rec1) + 2 x(rec3) + 2 w(rec3)
 + DBx(rec1,rec3) >= -0
 deltaXBorder_1(rec1,rec4): - 2 x(rec1) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec1,rec4) >= -0
 deltaXBorder_1(rec2,rec1): + 2 x(rec1) - 2 x(rec2) + 2 w(rec1)
 + DBx(rec2,rec1) >= -0
 deltaXBorder_1(rec2,rec3): - 2 x(rec2) + 2 x(rec3) + 2 w(rec3)
 + DBx(rec2,rec3) >= -0
 deltaXBorder_1(rec2,rec4): - 2 x(rec2) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec2,rec4) >= -0
 deltaXBorder_1(rec3,rec1): + 2 x(rec1) - 2 x(rec3) + 2 w(rec1)
 + DBx(rec3,rec1) >= -0
 deltaXBorder_1(rec3,rec2): + 2 x(rec2) - 2 x(rec3) + 2 w(rec2)
 + DBx(rec3,rec2) >= -0
 deltaXBorder_1(rec3,rec4): - 2 x(rec3) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec3,rec4) >= -0
 deltaXBorder_1(rec4,rec1): + 2 x(rec1) - 2 x(rec4) + 2 w(rec1)
 + DBx(rec4,rec1) >= -0
 deltaXBorder_1(rec4,rec2): + 2 x(rec2) - 2 x(rec4) + 2 w(rec2)
 + DBx(rec4,rec2) >= -0
 deltaXBorder_1(rec4,rec3): + 2 x(rec3) - 2 x(rec4) + 2 w(rec3)
 + DBx(rec4,rec3) >= -0
 deltaXBorder_2(rec1,rec2): + 2 x(rec1) - 2 x(rec2) + 2 w(rec1)
 + DBx(rec1,rec2) >= -0
 deltaXBorder_2(rec1,rec3): + 2 x(rec1) - 2 x(rec3) + 2 w(rec1)
 + DBx(rec1,rec3) >= -0
 deltaXBorder_2(rec1,rec4): + 2 x(rec1) - 2 x(rec4) + 2 w(rec1)
 + DBx(rec1,rec4) >= -0
 deltaXBorder_2(rec2,rec1): - 2 x(rec1) + 2 x(rec2) + 2 w(rec2)
 + DBx(rec2,rec1) >= -0
 deltaXBorder_2(rec2,rec3): + 2 x(rec2) - 2 x(rec3) + 2 w(rec2)
 + DBx(rec2,rec3) >= -0
 deltaXBorder_2(rec2,rec4): + 2 x(rec2) - 2 x(rec4) + 2 w(rec2)
 + DBx(rec2,rec4) >= -0
 deltaXBorder_2(rec3,rec1): - 2 x(rec1) + 2 x(rec3) + 2 w(rec3)
 + DBx(rec3,rec1) >= -0
 deltaXBorder_2(rec3,rec2): - 2 x(rec2) + 2 x(rec3) + 2 w(rec3)
 + DBx(rec3,rec2) >= -0
 deltaXBorder_2(rec3,rec4): + 2 x(rec3) - 2 x(rec4) + 2 w(rec3)
 + DBx(rec3,rec4) >= -0
 deltaXBorder_2(rec4,rec1): - 2 x(rec1) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec4,rec1) >= -0
 deltaXBorder_2(rec4,rec2): - 2 x(rec2) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec4,rec2) >= -0
 deltaXBorder_2(rec4,rec3): - 2 x(rec3) + 2 x(rec4) + 2 w(rec4)
 + DBx(rec4,rec3) >= -0
 deltaYBorder_1(rec1,rec2): - 20 y(rec1) + 20 y(rec2) + 20 a(rec2)
 + DBy(rec1,rec2) >= -0
 deltaYBorder_1(rec1,rec3): - 20 y(rec1) + 20 y(rec3) + 20 a(rec3)
 + DBy(rec1,rec3) >= -0
 deltaYBorder_1(rec1,rec4): - 20 y(rec1) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec1,rec4) >= -0
 deltaYBorder_1(rec2,rec1): + 20 y(rec1) - 20 y(rec2) + 20 a(rec1)
 + DBy(rec2,rec1) >= -0
 deltaYBorder_1(rec2,rec3): - 20 y(rec2) + 20 y(rec3) + 20 a(rec3)
 + DBy(rec2,rec3) >= -0
 deltaYBorder_1(rec2,rec4): - 20 y(rec2) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec2,rec4) >= -0
 deltaYBorder_1(rec3,rec1): + 20 y(rec1) - 20 y(rec3) + 20 a(rec1)
 + DBy(rec3,rec1) >= -0
 deltaYBorder_1(rec3,rec2): + 20 y(rec2) - 20 y(rec3) + 20 a(rec2)
 + DBy(rec3,rec2) >= -0
 deltaYBorder_1(rec3,rec4): - 20 y(rec3) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec3,rec4) >= -0
 deltaYBorder_1(rec4,rec1): + 20 y(rec1) - 20 y(rec4) + 20 a(rec1)
 + DBy(rec4,rec1) >= -0
 deltaYBorder_1(rec4,rec2): + 20 y(rec2) - 20 y(rec4) + 20 a(rec2)
 + DBy(rec4,rec2) >= -0
 deltaYBorder_1(rec4,rec3): + 20 y(rec3) - 20 y(rec4) + 20 a(rec3)
 + DBy(rec4,rec3) >= -0
 deltaYBorder_2(rec1,rec2): + 20 y(rec1) - 20 y(rec2) + 20 a(rec1)
 + DBy(rec1,rec2) >= -0
 deltaYBorder_2(rec1,rec3): + 20 y(rec1) - 20 y(rec3) + 20 a(rec1)
 + DBy(rec1,rec3) >= -0
 deltaYBorder_2(rec1,rec4): + 20 y(rec1) - 20 y(rec4) + 20 a(rec1)
 + DBy(rec1,rec4) >= -0
 deltaYBorder_2(rec2,rec1): - 20 y(rec1) + 20 y(rec2) + 20 a(rec2)
 + DBy(rec2,rec1) >= -0
 deltaYBorder_2(rec2,rec3): + 20 y(rec2) - 20 y(rec3) + 20 a(rec2)
 + DBy(rec2,rec3) >= -0
 deltaYBorder_2(rec2,rec4): + 20 y(rec2) - 20 y(rec4) + 20 a(rec2)
 + DBy(rec2,rec4) >= -0
 deltaYBorder_2(rec3,rec1): - 20 y(rec1) + 20 y(rec3) + 20 a(rec3)
 + DBy(rec3,rec1) >= -0
 deltaYBorder_2(rec3,rec2): - 20 y(rec2) + 20 y(rec3) + 20 a(rec3)
 + DBy(rec3,rec2) >= -0
 deltaYBorder_2(rec3,rec4): + 20 y(rec3) - 20 y(rec4) + 20 a(rec3)
 + DBy(rec3,rec4) >= -0
 deltaYBorder_2(rec4,rec1): - 20 y(rec1) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec4,rec1) >= -0
 deltaYBorder_2(rec4,rec2): - 20 y(rec2) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec4,rec2) >= -0
 deltaYBorder_2(rec4,rec3): - 20 y(rec3) + 20 y(rec4) + 20 a(rec4)
 + DBy(rec4,rec3) >= -0
 yValue(rec1,1): + 7 h(rec1,1) + y(rec1) <= 8
 yValue(rec1,2): + 6 h(rec1,2) + y(rec1) <= 8
 yValue(rec1,3): + 5 h(rec1,3) + y(rec1) <= 8
 yValue(rec1,4): + 4 h(rec1,4) + y(rec1) <= 8
 yValue(rec1,5): + 3 h(rec1,5) + y(rec1) <= 8
 yValue(rec1,6): + 2 h(rec1,6) + y(rec1) <= 8
 yValue(rec1,7): + h(rec1,7) + y(rec1) <= 8
 yValue(rec1,8): + y(rec1) <= 8
 yValue(rec2,1): + 7 h(rec2,1) + y(rec2) <= 8
 yValue(rec2,2): + 6 h(rec2,2) + y(rec2) <= 8
 yValue(rec2,3): + 5 h(rec2,3) + y(rec2) <= 8
 yValue(rec2,4): + 4 h(rec2,4) + y(rec2) <= 8
 yValue(rec2,5): + 3 h(rec2,5) + y(rec2) <= 8
 yValue(rec2,6): + 2 h(rec2,6) + y(rec2) <= 8
 yValue(rec2,7): + h(rec2,7) + y(rec2) <= 8
 yValue(rec2,8): + y(rec2) <= 8
 yValue(rec3,1): + 7 h(rec3,1) + y(rec3) <= 8
 yValue(rec3,2): + 6 h(rec3,2) + y(rec3) <= 8
 yValue(rec3,3): + 5 h(rec3,3) + y(rec3) <= 8
 yValue(rec3,4): + 4 h(rec3,4) + y(rec3) <= 8
 yValue(rec3,5): + 3 h(rec3,5) + y(rec3) <= 8
 yValue(rec3,6): + 2 h(rec3,6) + y(rec3) <= 8
 yValue(rec3,7): + h(rec3,7) + y(rec3) <= 8
 yValue(rec3,8): + y(rec3) <= 8
 yValue(rec4,1): + 7 h(rec4,1) + y(rec4) <= 8
 yValue(rec4,2): + 6 h(rec4,2) + y(rec4) <= 8
 yValue(rec4,3): + 5 h(rec4,3) + y(rec4) <= 8
 yValue(rec4,4): + 4 h(rec4,4) + y(rec4) <= 8
 yValue(rec4,5): + 3 h(rec4,5) + y(rec4) <= 8
 yValue(rec4,6): + 2 h(rec4,6) + y(rec4) <= 8
 yValue(rec4,7): + h(rec4,7) + y(rec4) <= 8
 yValue(rec4,8): + y(rec4) <= 8
 y2Value(rec1,1): - h(rec1,1) + y2(rec1) >= -0
 y2Value(rec1,2): - 2 h(rec1,2) + y2(rec1) >= -0
 y2Value(rec1,3): - 3 h(rec1,3) + y2(rec1) >= -0
 y2Value(rec1,4): - 4 h(rec1,4) + y2(rec1) >= -0
 y2Value(rec1,5): - 5 h(rec1,5) + y2(rec1) >= -0
 y2Value(rec1,6): - 6 h(rec1,6) + y2(rec1) >= -0
 y2Value(rec1,7): - 7 h(rec1,7) + y2(rec1) >= -0
 y2Value(rec1,8): - 8 h(rec1,8) + y2(rec1) >= -0
 y2Value(rec2,1): - h(rec2,1) + y2(rec2) >= -0
 y2Value(rec2,2): - 2 h(rec2,2) + y2(rec2) >= -0
 y2Value(rec2,3): - 3 h(rec2,3) + y2(rec2) >= -0
 y2Value(rec2,4): - 4 h(rec2,4) + y2(rec2) >= -0
 y2Value(rec2,5): - 5 h(rec2,5) + y2(rec2) >= -0
 y2Value(rec2,6): - 6 h(rec2,6) + y2(rec2) >= -0
 y2Value(rec2,7): - 7 h(rec2,7) + y2(rec2) >= -0
 y2Value(rec2,8): - 8 h(rec2,8) + y2(rec2) >= -0
 y2Value(rec3,1): - h(rec3,1) + y2(rec3) >= -0
 y2Value(rec3,2): - 2 h(rec3,2) + y2(rec3) >= -0
 y2Value(rec3,3): - 3 h(rec3,3) + y2(rec3) >= -0
 y2Value(rec3,4): - 4 h(rec3,4) + y2(rec3) >= -0
 y2Value(rec3,5): - 5 h(rec3,5) + y2(rec3) >= -0
 y2Value(rec3,6): - 6 h(rec3,6) + y2(rec3) >= -0
 y2Value(rec3,7): - 7 h(rec3,7) + y2(rec3) >= -0
 y2Value(rec3,8): - 8 h(rec3,8) + y2(rec3) >= -0
 y2Value(rec4,1): - h(rec4,1) + y2(rec4) >= -0
 y2Value(rec4,2): - 2 h(rec4,2) + y2(rec4) >= -0
 y2Value(rec4,3): - 3 h(rec4,3) + y2(rec4) >= -0
 y2Value(rec4,4): - 4 h(rec4,4) + y2(rec4) >= -0
 y2Value(rec4,5): - 5 h(rec4,5) + y2(rec4) >= -0
 y2Value(rec4,6): - 6 h(rec4,6) + y2(rec4) >= -0
 y2Value(rec4,7): - 7 h(rec4,7) + y2(rec4) >= -0
 y2Value(rec4,8): - 8 h(rec4,8) + y2(rec4) >= -0
 ySpan(rec1): - y(rec1) + y2(rec1) - a(rec1) = -1
 ySpan(rec2): - y(rec2) + y2(rec2) - a(rec2) = -1
 ySpan(rec3): - y(rec3) + y2(rec3) - a(rec3) = -1
 ySpan(rec4): - y(rec4) + y2(rec4) - a(rec4) = -1
 aValue(rec1): - h(rec1,1) - h(rec1,2) - h(rec1,3) - h(rec1,4)
 - h(rec1,5) - h(rec1,6) - h(rec1,7) - h(rec1,8) + a(rec1) = -0
 aValue(rec2): - h(rec2,1) - h(rec2,2) - h(rec2,3) - h(rec2,4)
 - h(rec2,5) - h(rec2,6) - h(rec2,7) - h(rec2,8) + a(rec2) = -0
 aValue(rec3): - h(rec3,1) - h(rec3,2) - h(rec3,3) - h(rec3,4)
 - h(rec3,5) - h(rec3,6) - h(rec3,7) - h(rec3,8) + a(rec3) = -0
 aValue(rec4): - h(rec4,1) - h(rec4,2) - h(rec4,3) - h(rec4,4)
 - h(rec4,5) - h(rec4,6) - h(rec4,7) - h(rec4,8) + a(rec4) = -0
 maxX(rec1): + x(rec1) + w(rec1) <= 60
 maxX(rec2): + x(rec2) + w(rec2) <= 60
 maxX(rec3): + x(rec3) + w(rec3) <= 60
 maxX(rec4): + x(rec4) + w(rec4) <= 60
 flagG1(rec1,rec2): + x(rec1) - x(rec2) + w(rec1) - 60 g1(rec1,rec2)
 <= -1
 flagG1(rec1,rec3): + x(rec1) - x(rec3) + w(rec1) - 60 g1(rec1,rec3)
 <= -1
 flagG1(rec1,rec4): + x(rec1) - x(rec4) + w(rec1) - 60 g1(rec1,rec4)
 <= -1
 flagG1(rec2,rec3): + x(rec2) - x(rec3) + w(rec2) - 60 g1(rec2,rec3)
 <= -1
 flagG1(rec2,rec4): + x(rec2) - x(rec4) + w(rec2) - 60 g1(rec2,rec4)
 <= -1
 flagG1(rec3,rec4): + x(rec3) - x(rec4) + w(rec3) - 60 g1(rec3,rec4)
 <= -1
 noOverlap(1,rec1,rec2): - 120 h(rec1,1) - 120 h(rec2,1) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(1,rec1,rec3): - 120 h(rec1,1) - 120 h(rec3,1) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(1,rec1,rec4): - 120 h(rec1,1) - 120 h(rec4,1) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(1,rec2,rec3): - 120 h(rec2,1) - 120 h(rec3,1) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(1,rec2,rec4): - 120 h(rec2,1) - 120 h(rec4,1) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(1,rec3,rec4): - 120 h(rec3,1) - 120 h(rec4,1) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(2,rec1,rec2): - 120 h(rec1,2) - 120 h(rec2,2) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(2,rec1,rec3): - 120 h(rec1,2) - 120 h(rec3,2) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(2,rec1,rec4): - 120 h(rec1,2) - 120 h(rec4,2) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(2,rec2,rec3): - 120 h(rec2,2) - 120 h(rec3,2) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(2,rec2,rec4): - 120 h(rec2,2) - 120 h(rec4,2) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(2,rec3,rec4): - 120 h(rec3,2) - 120 h(rec4,2) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(3,rec1,rec2): - 120 h(rec1,3) - 120 h(rec2,3) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(3,rec1,rec3): - 120 h(rec1,3) - 120 h(rec3,3) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(3,rec1,rec4): - 120 h(rec1,3) - 120 h(rec4,3) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(3,rec2,rec3): - 120 h(rec2,3) - 120 h(rec3,3) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(3,rec2,rec4): - 120 h(rec2,3) - 120 h(rec4,3) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(3,rec3,rec4): - 120 h(rec3,3) - 120 h(rec4,3) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(4,rec1,rec2): - 120 h(rec1,4) - 120 h(rec2,4) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(4,rec1,rec3): - 120 h(rec1,4) - 120 h(rec3,4) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(4,rec1,rec4): - 120 h(rec1,4) - 120 h(rec4,4) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(4,rec2,rec3): - 120 h(rec2,4) - 120 h(rec3,4) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(4,rec2,rec4): - 120 h(rec2,4) - 120 h(rec4,4) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(4,rec3,rec4): - 120 h(rec3,4) - 120 h(rec4,4) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(5,rec1,rec2): - 120 h(rec1,5) - 120 h(rec2,5) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(5,rec1,rec3): - 120 h(rec1,5) - 120 h(rec3,5) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(5,rec1,rec4): - 120 h(rec1,5) - 120 h(rec4,5) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(5,rec2,rec3): - 120 h(rec2,5) - 120 h(rec3,5) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(5,rec2,rec4): - 120 h(rec2,5) - 120 h(rec4,5) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(5,rec3,rec4): - 120 h(rec3,5) - 120 h(rec4,5) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(6,rec1,rec2): - 120 h(rec1,6) - 120 h(rec2,6) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(6,rec1,rec3): - 120 h(rec1,6) - 120 h(rec3,6) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(6,rec1,rec4): - 120 h(rec1,6) - 120 h(rec4,6) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(6,rec2,rec3): - 120 h(rec2,6) - 120 h(rec3,6) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(6,rec2,rec4): - 120 h(rec2,6) - 120 h(rec4,6) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(6,rec3,rec4): - 120 h(rec3,6) - 120 h(rec4,6) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(7,rec1,rec2): - 120 h(rec1,7) - 120 h(rec2,7) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(7,rec1,rec3): - 120 h(rec1,7) - 120 h(rec3,7) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(7,rec1,rec4): - 120 h(rec1,7) - 120 h(rec4,7) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(7,rec2,rec3): - 120 h(rec2,7) - 120 h(rec3,7) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(7,rec2,rec4): - 120 h(rec2,7) - 120 h(rec4,7) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(7,rec3,rec4): - 120 h(rec3,7) - 120 h(rec4,7) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 noOverlap(8,rec1,rec2): - 120 h(rec1,8) - 120 h(rec2,8) + x(rec1)
 - x(rec2) - w(rec2) - 120 g1(rec1,rec2) >= -359
 noOverlap(8,rec1,rec3): - 120 h(rec1,8) - 120 h(rec3,8) + x(rec1)
 - x(rec3) - w(rec3) - 120 g1(rec1,rec3) >= -359
 noOverlap(8,rec1,rec4): - 120 h(rec1,8) - 120 h(rec4,8) + x(rec1)
 - x(rec4) - w(rec4) - 120 g1(rec1,rec4) >= -359
 noOverlap(8,rec2,rec3): - 120 h(rec2,8) - 120 h(rec3,8) + x(rec2)
 - x(rec3) - w(rec3) - 120 g1(rec2,rec3) >= -359
 noOverlap(8,rec2,rec4): - 120 h(rec2,8) - 120 h(rec4,8) + x(rec2)
 - x(rec4) - w(rec4) - 120 g1(rec2,rec4) >= -359
 noOverlap(8,rec3,rec4): - 120 h(rec3,8) - 120 h(rec4,8) + x(rec3)
 - x(rec4) - w(rec4) - 120 g1(rec3,rec4) >= -359
 flagK1_1(rec1,por1): + x(rec1) + w(rec1) >= -0
 flagK1_1(rec1,por2): + x(rec1) + w(rec1) - 4 k1(rec1,por2) >= -0
 flagK1_1(rec1,por3): + x(rec1) + w(rec1) - 5 k1(rec1,por3) >= -0
 flagK1_1(rec1,por4): + x(rec1) + w(rec1) - 15 k1(rec1,por4) >= -0
 flagK1_1(rec1,por5): + x(rec1) + w(rec1) - 16 k1(rec1,por5) >= -0
 flagK1_1(rec1,por6): + x(rec1) + w(rec1) - 18 k1(rec1,por6) >= -0
 flagK1_1(rec1,por7): + x(rec1) + w(rec1) - 19 k1(rec1,por7) >= -0
 flagK1_1(rec1,por8): + x(rec1) + w(rec1) - 27 k1(rec1,por8) >= -0
 flagK1_1(rec1,por9): + x(rec1) + w(rec1) - 28 k1(rec1,por9) >= -0
 flagK1_1(rec1,por10): + x(rec1) + w(rec1) - 40 k1(rec1,por10) >= -0
 flagK1_1(rec1,por11): + x(rec1) + w(rec1) - 41 k1(rec1,por11) >= -0
 flagK1_1(rec1,por12): + x(rec1) + w(rec1) - 51 k1(rec1,por12) >= -0
 flagK1_1(rec1,por13): + x(rec1) + w(rec1) - 52 k1(rec1,por13) >= -0
 flagK1_1(rec1,por14): + x(rec1) + w(rec1) - 56 k1(rec1,por14) >= -0
 flagK1_1(rec1,por15): + x(rec1) + w(rec1) - 57 k1(rec1,por15) >= -0
 flagK1_1(rec2,por1): + x(rec2) + w(rec2) >= -0
 flagK1_1(rec2,por2): + x(rec2) + w(rec2) - 4 k1(rec2,por2) >= -0
 flagK1_1(rec2,por3): + x(rec2) + w(rec2) - 5 k1(rec2,por3) >= -0
 flagK1_1(rec2,por4): + x(rec2) + w(rec2) - 15 k1(rec2,por4) >= -0
 flagK1_1(rec2,por5): + x(rec2) + w(rec2) - 16 k1(rec2,por5) >= -0
 flagK1_1(rec2,por6): + x(rec2) + w(rec2) - 18 k1(rec2,por6) >= -0
 flagK1_1(rec2,por7): + x(rec2) + w(rec2) - 19 k1(rec2,por7) >= -0
 flagK1_1(rec2,por8): + x(rec2) + w(rec2) - 27 k1(rec2,por8) >= -0
 flagK1_1(rec2,por9): + x(rec2) + w(rec2) - 28 k1(rec2,por9) >= -0
 flagK1_1(rec2,por10): + x(rec2) + w(rec2) - 40 k1(rec2,por10) >= -0
 flagK1_1(rec2,por11): + x(rec2) + w(rec2) - 41 k1(rec2,por11) >= -0
 flagK1_1(rec2,por12): + x(rec2) + w(rec2) - 51 k1(rec2,por12) >= -0
 flagK1_1(rec2,por13): + x(rec2) + w(rec2) - 52 k1(rec2,por13) >= -0
 flagK1_1(rec2,por14): + x(rec2) + w(rec2) - 56 k1(rec2,por14) >= -0
 flagK1_1(rec2,por15): + x(rec2) + w(rec2) - 57 k1(rec2,por15) >= -0
 flagK1_1(rec3,por1): + x(rec3) + w(rec3) >= -0
 flagK1_1(rec3,por2): + x(rec3) + w(rec3) - 4 k1(rec3,por2) >= -0
 flagK1_1(rec3,por3): + x(rec3) + w(rec3) - 5 k1(rec3,por3) >= -0
 flagK1_1(rec3,por4): + x(rec3) + w(rec3) - 15 k1(rec3,por4) >= -0
 flagK1_1(rec3,por5): + x(rec3) + w(rec3) - 16 k1(rec3,por5) >= -0
 flagK1_1(rec3,por6): + x(rec3) + w(rec3) - 18 k1(rec3,por6) >= -0
 flagK1_1(rec3,por7): + x(rec3) + w(rec3) - 19 k1(rec3,por7) >= -0
 flagK1_1(rec3,por8): + x(rec3) + w(rec3) - 27 k1(rec3,por8) >= -0
 flagK1_1(rec3,por9): + x(rec3) + w(rec3) - 28 k1(rec3,por9) >= -0
 flagK1_1(rec3,por10): + x(rec3) + w(rec3) - 40 k1(rec3,por10) >= -0
 flagK1_1(rec3,por11): + x(rec3) + w(rec3) - 41 k1(rec3,por11) >= -0
 flagK1_1(rec3,por12): + x(rec3) + w(rec3) - 51 k1(rec3,por12) >= -0
 flagK1_1(rec3,por13): + x(rec3) + w(rec3) - 52 k1(rec3,por13) >= -0
 flagK1_1(rec3,por14): + x(rec3) + w(rec3) - 56 k1(rec3,por14) >= -0
 flagK1_1(rec3,por15): + x(rec3) + w(rec3) - 57 k1(rec3,por15) >= -0
 flagK1_1(rec4,por1): + x(rec4) + w(rec4) >= -0
 flagK1_1(rec4,por2): + x(rec4) + w(rec4) - 4 k1(rec4,por2) >= -0
 flagK1_1(rec4,por3): + x(rec4) + w(rec4) - 5 k1(rec4,por3) >= -0
 flagK1_1(rec4,por4): + x(rec4) + w(rec4) - 15 k1(rec4,por4) >= -0
 flagK1_1(rec4,por5): + x(rec4) + w(rec4) - 16 k1(rec4,por5) >= -0
 flagK1_1(rec4,por6): + x(rec4) + w(rec4) - 18 k1(rec4,por6) >= -0
 flagK1_1(rec4,por7): + x(rec4) + w(rec4) - 19 k1(rec4,por7) >= -0
 flagK1_1(rec4,por8): + x(rec4) + w(rec4) - 27 k1(rec4,por8) >= -0
 flagK1_1(rec4,por9): + x(rec4) + w(rec4) - 28 k1(rec4,por9) >= -0
 flagK1_1(rec4,por10): + x(rec4) + w(rec4) - 40 k1(rec4,por10) >= -0
 flagK1_1(rec4,por11): + x(rec4) + w(rec4) - 41 k1(rec4,por11) >= -0
 flagK1_1(rec4,por12): + x(rec4) + w(rec4) - 51 k1(rec4,por12) >= -0
 flagK1_1(rec4,por13): + x(rec4) + w(rec4) - 52 k1(rec4,por13) >= -0
 flagK1_1(rec4,por14): + x(rec4) + w(rec4) - 56 k1(rec4,por14) >= -0
 flagK1_1(rec4,por15): + x(rec4) + w(rec4) - 57 k1(rec4,por15) >= -0
 flagK1_2(rec1,por1): + x(rec1) + 57 k1(rec1,por1) <= 60
 flagK1_2(rec1,por2): + x(rec1) + 56 k1(rec1,por2) <= 60
 flagK1_2(rec1,por3): + x(rec1) + 46 k1(rec1,por3) <= 60
 flagK1_2(rec1,por4): + x(rec1) + 45 k1(rec1,por4) <= 60
 flagK1_2(rec1,por5): + x(rec1) + 43 k1(rec1,por5) <= 60
 flagK1_2(rec1,por6): + x(rec1) + 42 k1(rec1,por6) <= 60
 flagK1_2(rec1,por7): + x(rec1) + 34 k1(rec1,por7) <= 60
 flagK1_2(rec1,por8): + x(rec1) + 33 k1(rec1,por8) <= 60
 flagK1_2(rec1,por9): + x(rec1) + 21 k1(rec1,por9) <= 60
 flagK1_2(rec1,por10): + x(rec1) + 20 k1(rec1,por10) <= 60
 flagK1_2(rec1,por11): + x(rec1) + 10 k1(rec1,por11) <= 60
 flagK1_2(rec1,por12): + x(rec1) + 9 k1(rec1,por12) <= 60
 flagK1_2(rec1,por13): + x(rec1) + 5 k1(rec1,por13) <= 60
 flagK1_2(rec1,por14): + x(rec1) + 4 k1(rec1,por14) <= 60
 flagK1_2(rec1,por15): + x(rec1) <= 60
 flagK1_2(rec2,por1): + x(rec2) + 57 k1(rec2,por1) <= 60
 flagK1_2(rec2,por2): + x(rec2) + 56 k1(rec2,por2) <= 60
 flagK1_2(rec2,por3): + x(rec2) + 46 k1(rec2,por3) <= 60
 flagK1_2(rec2,por4): + x(rec2) + 45 k1(rec2,por4) <= 60
 flagK1_2(rec2,por5): + x(rec2) + 43 k1(rec2,por5) <= 60
 flagK1_2(rec2,por6): + x(rec2) + 42 k1(rec2,por6) <= 60
 flagK1_2(rec2,por7): + x(rec2) + 34 k1(rec2,por7) <= 60
 flagK1_2(rec2,por8): + x(rec2) + 33 k1(rec2,por8) <= 60
 flagK1_2(rec2,por9): + x(rec2) + 21 k1(rec2,por9) <= 60
 flagK1_2(rec2,por10): + x(rec2) + 20 k1(rec2,por10) <= 60
 flagK1_2(rec2,por11): + x(rec2) + 10 k1(rec2,por11) <= 60
 flagK1_2(rec2,por12): + x(rec2) + 9 k1(rec2,por12) <= 60
 flagK1_2(rec2,por13): + x(rec2) + 5 k1(rec2,por13) <= 60
 flagK1_2(rec2,por14): + x(rec2) + 4 k1(rec2,por14) <= 60
 flagK1_2(rec2,por15): + x(rec2) <= 60
 flagK1_2(rec3,por1): + x(rec3) + 57 k1(rec3,por1) <= 60
 flagK1_2(rec3,por2): + x(rec3) + 56 k1(rec3,por2) <= 60
 flagK1_2(rec3,por3): + x(rec3) + 46 k1(rec3,por3) <= 60
 flagK1_2(rec3,por4): + x(rec3) + 45 k1(rec3,por4) <= 60
 flagK1_2(rec3,por5): + x(rec3) + 43 k1(rec3,por5) <= 60
 flagK1_2(rec3,por6): + x(rec3) + 42 k1(rec3,por6) <= 60
 flagK1_2(rec3,por7): + x(rec3) + 34 k1(rec3,por7) <= 60
 flagK1_2(rec3,por8): + x(rec3) + 33 k1(rec3,por8) <= 60
 flagK1_2(rec3,por9): + x(rec3) + 21 k1(rec3,por9) <= 60
 flagK1_2(rec3,por10): + x(rec3) + 20 k1(rec3,por10) <= 60
 flagK1_2(rec3,por11): + x(rec3) + 10 k1(rec3,por11) <= 60
 flagK1_2(rec3,por12): + x(rec3) + 9 k1(rec3,por12) <= 60
 flagK1_2(rec3,por13): + x(rec3) + 5 k1(rec3,por13) <= 60
 flagK1_2(rec3,por14): + x(rec3) + 4 k1(rec3,por14) <= 60
 flagK1_2(rec3,por15): + x(rec3) <= 60
 flagK1_2(rec4,por1): + x(rec4) + 57 k1(rec4,por1) <= 60
 flagK1_2(rec4,por2): + x(rec4) + 56 k1(rec4,por2) <= 60
 flagK1_2(rec4,por3): + x(rec4) + 46 k1(rec4,por3) <= 60
 flagK1_2(rec4,por4): + x(rec4) + 45 k1(rec4,por4) <= 60
 flagK1_2(rec4,por5): + x(rec4) + 43 k1(rec4,por5) <= 60
 flagK1_2(rec4,por6): + x(rec4) + 42 k1(rec4,por6) <= 60
 flagK1_2(rec4,por7): + x(rec4) + 34 k1(rec4,por7) <= 60
 flagK1_2(rec4,por8): + x(rec4) + 33 k1(rec4,por8) <= 60
 flagK1_2(rec4,por9): + x(rec4) + 21 k1(rec4,por9) <= 60
 flagK1_2(rec4,por10): + x(rec4) + 20 k1(rec4,por10) <= 60
 flagK1_2(rec4,por11): + x(rec4) + 10 k1(rec4,por11) <= 60
 flagK1_2(rec4,por12): + x(rec4) + 9 k1(rec4,por12) <= 60
 flagK1_2(rec4,por13): + x(rec4) + 5 k1(rec4,por13) <= 60
 flagK1_2(rec4,por14): + x(rec4) + 4 k1(rec4,por14) <= 60
 flagK1_2(rec4,por15): + x(rec4) <= 60
 noCoverageIfNoRegionRow(rec1,por1,1): - 4 h(rec1,1) + l(rec1,por1,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,2): - 4 h(rec1,2) + l(rec1,por1,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,3): - 4 h(rec1,3) + l(rec1,por1,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,4): - 4 h(rec1,4) + l(rec1,por1,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,5): - 4 h(rec1,5) + l(rec1,por1,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,6): - 4 h(rec1,6) + l(rec1,por1,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,7): - 4 h(rec1,7) + l(rec1,por1,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por1,8): - 4 h(rec1,8) + l(rec1,por1,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,1): - h(rec1,1) + l(rec1,por2,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,2): - h(rec1,2) + l(rec1,por2,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,3): - h(rec1,3) + l(rec1,por2,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,4): - h(rec1,4) + l(rec1,por2,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,5): - h(rec1,5) + l(rec1,por2,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,6): - h(rec1,6) + l(rec1,por2,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,7): - h(rec1,7) + l(rec1,por2,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por2,8): - h(rec1,8) + l(rec1,por2,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,1): - 10 h(rec1,1) + l(rec1,por3,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,2): - 10 h(rec1,2) + l(rec1,por3,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,3): - 10 h(rec1,3) + l(rec1,por3,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,4): - 10 h(rec1,4) + l(rec1,por3,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,5): - 10 h(rec1,5) + l(rec1,por3,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,6): - 10 h(rec1,6) + l(rec1,por3,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,7): - 10 h(rec1,7) + l(rec1,por3,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por3,8): - 10 h(rec1,8) + l(rec1,por3,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,1): - h(rec1,1) + l(rec1,por4,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,2): - h(rec1,2) + l(rec1,por4,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,3): - h(rec1,3) + l(rec1,por4,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,4): - h(rec1,4) + l(rec1,por4,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,5): - h(rec1,5) + l(rec1,por4,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,6): - h(rec1,6) + l(rec1,por4,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,7): - h(rec1,7) + l(rec1,por4,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por4,8): - h(rec1,8) + l(rec1,por4,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,1): - 2 h(rec1,1) + l(rec1,por5,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,2): - 2 h(rec1,2) + l(rec1,por5,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,3): - 2 h(rec1,3) + l(rec1,por5,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,4): - 2 h(rec1,4) + l(rec1,por5,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,5): - 2 h(rec1,5) + l(rec1,por5,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,6): - 2 h(rec1,6) + l(rec1,por5,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,7): - 2 h(rec1,7) + l(rec1,por5,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por5,8): - 2 h(rec1,8) + l(rec1,por5,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,1): - h(rec1,1) + l(rec1,por6,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,2): - h(rec1,2) + l(rec1,por6,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,3): - h(rec1,3) + l(rec1,por6,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,4): - h(rec1,4) + l(rec1,por6,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,5): - h(rec1,5) + l(rec1,por6,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,6): - h(rec1,6) + l(rec1,por6,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,7): - h(rec1,7) + l(rec1,por6,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por6,8): - h(rec1,8) + l(rec1,por6,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,1): - 8 h(rec1,1) + l(rec1,por7,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,2): - 8 h(rec1,2) + l(rec1,por7,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,3): - 8 h(rec1,3) + l(rec1,por7,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,4): - 8 h(rec1,4) + l(rec1,por7,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,5): - 8 h(rec1,5) + l(rec1,por7,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,6): - 8 h(rec1,6) + l(rec1,por7,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,7): - 8 h(rec1,7) + l(rec1,por7,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por7,8): - 8 h(rec1,8) + l(rec1,por7,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,1): - h(rec1,1) + l(rec1,por8,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,2): - h(rec1,2) + l(rec1,por8,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,3): - h(rec1,3) + l(rec1,por8,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,4): - h(rec1,4) + l(rec1,por8,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,5): - h(rec1,5) + l(rec1,por8,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,6): - h(rec1,6) + l(rec1,por8,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,7): - h(rec1,7) + l(rec1,por8,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por8,8): - h(rec1,8) + l(rec1,por8,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,1): - 12 h(rec1,1) + l(rec1,por9,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,2): - 12 h(rec1,2) + l(rec1,por9,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,3): - 12 h(rec1,3) + l(rec1,por9,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,4): - 12 h(rec1,4) + l(rec1,por9,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,5): - 12 h(rec1,5) + l(rec1,por9,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,6): - 12 h(rec1,6) + l(rec1,por9,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,7): - 12 h(rec1,7) + l(rec1,por9,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por9,8): - 12 h(rec1,8) + l(rec1,por9,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,1): - h(rec1,1) + l(rec1,por10,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,2): - h(rec1,2) + l(rec1,por10,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,3): - h(rec1,3) + l(rec1,por10,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,4): - h(rec1,4) + l(rec1,por10,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,5): - h(rec1,5) + l(rec1,por10,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,6): - h(rec1,6) + l(rec1,por10,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,7): - h(rec1,7) + l(rec1,por10,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por10,8): - h(rec1,8) + l(rec1,por10,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,1): - 10 h(rec1,1) + l(rec1,por11,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,2): - 10 h(rec1,2) + l(rec1,por11,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,3): - 10 h(rec1,3) + l(rec1,por11,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,4): - 10 h(rec1,4) + l(rec1,por11,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,5): - 10 h(rec1,5) + l(rec1,por11,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,6): - 10 h(rec1,6) + l(rec1,por11,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,7): - 10 h(rec1,7) + l(rec1,por11,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por11,8): - 10 h(rec1,8) + l(rec1,por11,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,1): - h(rec1,1) + l(rec1,por12,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,2): - h(rec1,2) + l(rec1,por12,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,3): - h(rec1,3) + l(rec1,por12,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,4): - h(rec1,4) + l(rec1,por12,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,5): - h(rec1,5) + l(rec1,por12,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,6): - h(rec1,6) + l(rec1,por12,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,7): - h(rec1,7) + l(rec1,por12,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por12,8): - h(rec1,8) + l(rec1,por12,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,1): - 4 h(rec1,1) + l(rec1,por13,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,2): - 4 h(rec1,2) + l(rec1,por13,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,3): - 4 h(rec1,3) + l(rec1,por13,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,4): - 4 h(rec1,4) + l(rec1,por13,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,5): - 4 h(rec1,5) + l(rec1,por13,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,6): - 4 h(rec1,6) + l(rec1,por13,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,7): - 4 h(rec1,7) + l(rec1,por13,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por13,8): - 4 h(rec1,8) + l(rec1,por13,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,1): - h(rec1,1) + l(rec1,por14,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,2): - h(rec1,2) + l(rec1,por14,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,3): - h(rec1,3) + l(rec1,por14,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,4): - h(rec1,4) + l(rec1,por14,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,5): - h(rec1,5) + l(rec1,por14,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,6): - h(rec1,6) + l(rec1,por14,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,7): - h(rec1,7) + l(rec1,por14,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por14,8): - h(rec1,8) + l(rec1,por14,8)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,1): - 4 h(rec1,1) + l(rec1,por15,1)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,2): - 4 h(rec1,2) + l(rec1,por15,2)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,3): - 4 h(rec1,3) + l(rec1,por15,3)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,4): - 4 h(rec1,4) + l(rec1,por15,4)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,5): - 4 h(rec1,5) + l(rec1,por15,5)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,6): - 4 h(rec1,6) + l(rec1,por15,6)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,7): - 4 h(rec1,7) + l(rec1,por15,7)
 <= -0
 noCoverageIfNoRegionRow(rec1,por15,8): - 4 h(rec1,8) + l(rec1,por15,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,1): - 4 h(rec2,1) + l(rec2,por1,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,2): - 4 h(rec2,2) + l(rec2,por1,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,3): - 4 h(rec2,3) + l(rec2,por1,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,4): - 4 h(rec2,4) + l(rec2,por1,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,5): - 4 h(rec2,5) + l(rec2,por1,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,6): - 4 h(rec2,6) + l(rec2,por1,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,7): - 4 h(rec2,7) + l(rec2,por1,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por1,8): - 4 h(rec2,8) + l(rec2,por1,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,1): - h(rec2,1) + l(rec2,por2,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,2): - h(rec2,2) + l(rec2,por2,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,3): - h(rec2,3) + l(rec2,por2,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,4): - h(rec2,4) + l(rec2,por2,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,5): - h(rec2,5) + l(rec2,por2,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,6): - h(rec2,6) + l(rec2,por2,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,7): - h(rec2,7) + l(rec2,por2,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por2,8): - h(rec2,8) + l(rec2,por2,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,1): - 10 h(rec2,1) + l(rec2,por3,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,2): - 10 h(rec2,2) + l(rec2,por3,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,3): - 10 h(rec2,3) + l(rec2,por3,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,4): - 10 h(rec2,4) + l(rec2,por3,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,5): - 10 h(rec2,5) + l(rec2,por3,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,6): - 10 h(rec2,6) + l(rec2,por3,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,7): - 10 h(rec2,7) + l(rec2,por3,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por3,8): - 10 h(rec2,8) + l(rec2,por3,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,1): - h(rec2,1) + l(rec2,por4,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,2): - h(rec2,2) + l(rec2,por4,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,3): - h(rec2,3) + l(rec2,por4,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,4): - h(rec2,4) + l(rec2,por4,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,5): - h(rec2,5) + l(rec2,por4,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,6): - h(rec2,6) + l(rec2,por4,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,7): - h(rec2,7) + l(rec2,por4,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por4,8): - h(rec2,8) + l(rec2,por4,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,1): - 2 h(rec2,1) + l(rec2,por5,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,2): - 2 h(rec2,2) + l(rec2,por5,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,3): - 2 h(rec2,3) + l(rec2,por5,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,4): - 2 h(rec2,4) + l(rec2,por5,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,5): - 2 h(rec2,5) + l(rec2,por5,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,6): - 2 h(rec2,6) + l(rec2,por5,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,7): - 2 h(rec2,7) + l(rec2,por5,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por5,8): - 2 h(rec2,8) + l(rec2,por5,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,1): - h(rec2,1) + l(rec2,por6,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,2): - h(rec2,2) + l(rec2,por6,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,3): - h(rec2,3) + l(rec2,por6,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,4): - h(rec2,4) + l(rec2,por6,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,5): - h(rec2,5) + l(rec2,por6,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,6): - h(rec2,6) + l(rec2,por6,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,7): - h(rec2,7) + l(rec2,por6,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por6,8): - h(rec2,8) + l(rec2,por6,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,1): - 8 h(rec2,1) + l(rec2,por7,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,2): - 8 h(rec2,2) + l(rec2,por7,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,3): - 8 h(rec2,3) + l(rec2,por7,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,4): - 8 h(rec2,4) + l(rec2,por7,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,5): - 8 h(rec2,5) + l(rec2,por7,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,6): - 8 h(rec2,6) + l(rec2,por7,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,7): - 8 h(rec2,7) + l(rec2,por7,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por7,8): - 8 h(rec2,8) + l(rec2,por7,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,1): - h(rec2,1) + l(rec2,por8,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,2): - h(rec2,2) + l(rec2,por8,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,3): - h(rec2,3) + l(rec2,por8,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,4): - h(rec2,4) + l(rec2,por8,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,5): - h(rec2,5) + l(rec2,por8,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,6): - h(rec2,6) + l(rec2,por8,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,7): - h(rec2,7) + l(rec2,por8,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por8,8): - h(rec2,8) + l(rec2,por8,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,1): - 12 h(rec2,1) + l(rec2,por9,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,2): - 12 h(rec2,2) + l(rec2,por9,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,3): - 12 h(rec2,3) + l(rec2,por9,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,4): - 12 h(rec2,4) + l(rec2,por9,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,5): - 12 h(rec2,5) + l(rec2,por9,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,6): - 12 h(rec2,6) + l(rec2,por9,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,7): - 12 h(rec2,7) + l(rec2,por9,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por9,8): - 12 h(rec2,8) + l(rec2,por9,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,1): - h(rec2,1) + l(rec2,por10,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,2): - h(rec2,2) + l(rec2,por10,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,3): - h(rec2,3) + l(rec2,por10,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,4): - h(rec2,4) + l(rec2,por10,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,5): - h(rec2,5) + l(rec2,por10,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,6): - h(rec2,6) + l(rec2,por10,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,7): - h(rec2,7) + l(rec2,por10,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por10,8): - h(rec2,8) + l(rec2,por10,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,1): - 10 h(rec2,1) + l(rec2,por11,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,2): - 10 h(rec2,2) + l(rec2,por11,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,3): - 10 h(rec2,3) + l(rec2,por11,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,4): - 10 h(rec2,4) + l(rec2,por11,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,5): - 10 h(rec2,5) + l(rec2,por11,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,6): - 10 h(rec2,6) + l(rec2,por11,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,7): - 10 h(rec2,7) + l(rec2,por11,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por11,8): - 10 h(rec2,8) + l(rec2,por11,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,1): - h(rec2,1) + l(rec2,por12,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,2): - h(rec2,2) + l(rec2,por12,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,3): - h(rec2,3) + l(rec2,por12,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,4): - h(rec2,4) + l(rec2,por12,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,5): - h(rec2,5) + l(rec2,por12,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,6): - h(rec2,6) + l(rec2,por12,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,7): - h(rec2,7) + l(rec2,por12,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por12,8): - h(rec2,8) + l(rec2,por12,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,1): - 4 h(rec2,1) + l(rec2,por13,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,2): - 4 h(rec2,2) + l(rec2,por13,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,3): - 4 h(rec2,3) + l(rec2,por13,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,4): - 4 h(rec2,4) + l(rec2,por13,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,5): - 4 h(rec2,5) + l(rec2,por13,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,6): - 4 h(rec2,6) + l(rec2,por13,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,7): - 4 h(rec2,7) + l(rec2,por13,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por13,8): - 4 h(rec2,8) + l(rec2,por13,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,1): - h(rec2,1) + l(rec2,por14,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,2): - h(rec2,2) + l(rec2,por14,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,3): - h(rec2,3) + l(rec2,por14,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,4): - h(rec2,4) + l(rec2,por14,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,5): - h(rec2,5) + l(rec2,por14,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,6): - h(rec2,6) + l(rec2,por14,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,7): - h(rec2,7) + l(rec2,por14,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por14,8): - h(rec2,8) + l(rec2,por14,8)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,1): - 4 h(rec2,1) + l(rec2,por15,1)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,2): - 4 h(rec2,2) + l(rec2,por15,2)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,3): - 4 h(rec2,3) + l(rec2,por15,3)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,4): - 4 h(rec2,4) + l(rec2,por15,4)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,5): - 4 h(rec2,5) + l(rec2,por15,5)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,6): - 4 h(rec2,6) + l(rec2,por15,6)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,7): - 4 h(rec2,7) + l(rec2,por15,7)
 <= -0
 noCoverageIfNoRegionRow(rec2,por15,8): - 4 h(rec2,8) + l(rec2,por15,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,1): - 4 h(rec3,1) + l(rec3,por1,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,2): - 4 h(rec3,2) + l(rec3,por1,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,3): - 4 h(rec3,3) + l(rec3,por1,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,4): - 4 h(rec3,4) + l(rec3,por1,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,5): - 4 h(rec3,5) + l(rec3,por1,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,6): - 4 h(rec3,6) + l(rec3,por1,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,7): - 4 h(rec3,7) + l(rec3,por1,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por1,8): - 4 h(rec3,8) + l(rec3,por1,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,1): - h(rec3,1) + l(rec3,por2,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,2): - h(rec3,2) + l(rec3,por2,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,3): - h(rec3,3) + l(rec3,por2,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,4): - h(rec3,4) + l(rec3,por2,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,5): - h(rec3,5) + l(rec3,por2,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,6): - h(rec3,6) + l(rec3,por2,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,7): - h(rec3,7) + l(rec3,por2,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por2,8): - h(rec3,8) + l(rec3,por2,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,1): - 10 h(rec3,1) + l(rec3,por3,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,2): - 10 h(rec3,2) + l(rec3,por3,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,3): - 10 h(rec3,3) + l(rec3,por3,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,4): - 10 h(rec3,4) + l(rec3,por3,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,5): - 10 h(rec3,5) + l(rec3,por3,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,6): - 10 h(rec3,6) + l(rec3,por3,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,7): - 10 h(rec3,7) + l(rec3,por3,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por3,8): - 10 h(rec3,8) + l(rec3,por3,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,1): - h(rec3,1) + l(rec3,por4,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,2): - h(rec3,2) + l(rec3,por4,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,3): - h(rec3,3) + l(rec3,por4,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,4): - h(rec3,4) + l(rec3,por4,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,5): - h(rec3,5) + l(rec3,por4,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,6): - h(rec3,6) + l(rec3,por4,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,7): - h(rec3,7) + l(rec3,por4,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por4,8): - h(rec3,8) + l(rec3,por4,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,1): - 2 h(rec3,1) + l(rec3,por5,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,2): - 2 h(rec3,2) + l(rec3,por5,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,3): - 2 h(rec3,3) + l(rec3,por5,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,4): - 2 h(rec3,4) + l(rec3,por5,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,5): - 2 h(rec3,5) + l(rec3,por5,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,6): - 2 h(rec3,6) + l(rec3,por5,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,7): - 2 h(rec3,7) + l(rec3,por5,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por5,8): - 2 h(rec3,8) + l(rec3,por5,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,1): - h(rec3,1) + l(rec3,por6,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,2): - h(rec3,2) + l(rec3,por6,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,3): - h(rec3,3) + l(rec3,por6,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,4): - h(rec3,4) + l(rec3,por6,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,5): - h(rec3,5) + l(rec3,por6,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,6): - h(rec3,6) + l(rec3,por6,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,7): - h(rec3,7) + l(rec3,por6,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por6,8): - h(rec3,8) + l(rec3,por6,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,1): - 8 h(rec3,1) + l(rec3,por7,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,2): - 8 h(rec3,2) + l(rec3,por7,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,3): - 8 h(rec3,3) + l(rec3,por7,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,4): - 8 h(rec3,4) + l(rec3,por7,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,5): - 8 h(rec3,5) + l(rec3,por7,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,6): - 8 h(rec3,6) + l(rec3,por7,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,7): - 8 h(rec3,7) + l(rec3,por7,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por7,8): - 8 h(rec3,8) + l(rec3,por7,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,1): - h(rec3,1) + l(rec3,por8,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,2): - h(rec3,2) + l(rec3,por8,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,3): - h(rec3,3) + l(rec3,por8,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,4): - h(rec3,4) + l(rec3,por8,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,5): - h(rec3,5) + l(rec3,por8,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,6): - h(rec3,6) + l(rec3,por8,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,7): - h(rec3,7) + l(rec3,por8,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por8,8): - h(rec3,8) + l(rec3,por8,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,1): - 12 h(rec3,1) + l(rec3,por9,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,2): - 12 h(rec3,2) + l(rec3,por9,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,3): - 12 h(rec3,3) + l(rec3,por9,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,4): - 12 h(rec3,4) + l(rec3,por9,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,5): - 12 h(rec3,5) + l(rec3,por9,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,6): - 12 h(rec3,6) + l(rec3,por9,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,7): - 12 h(rec3,7) + l(rec3,por9,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por9,8): - 12 h(rec3,8) + l(rec3,por9,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,1): - h(rec3,1) + l(rec3,por10,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,2): - h(rec3,2) + l(rec3,por10,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,3): - h(rec3,3) + l(rec3,por10,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,4): - h(rec3,4) + l(rec3,por10,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,5): - h(rec3,5) + l(rec3,por10,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,6): - h(rec3,6) + l(rec3,por10,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,7): - h(rec3,7) + l(rec3,por10,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por10,8): - h(rec3,8) + l(rec3,por10,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,1): - 10 h(rec3,1) + l(rec3,por11,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,2): - 10 h(rec3,2) + l(rec3,por11,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,3): - 10 h(rec3,3) + l(rec3,por11,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,4): - 10 h(rec3,4) + l(rec3,por11,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,5): - 10 h(rec3,5) + l(rec3,por11,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,6): - 10 h(rec3,6) + l(rec3,por11,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,7): - 10 h(rec3,7) + l(rec3,por11,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por11,8): - 10 h(rec3,8) + l(rec3,por11,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,1): - h(rec3,1) + l(rec3,por12,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,2): - h(rec3,2) + l(rec3,por12,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,3): - h(rec3,3) + l(rec3,por12,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,4): - h(rec3,4) + l(rec3,por12,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,5): - h(rec3,5) + l(rec3,por12,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,6): - h(rec3,6) + l(rec3,por12,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,7): - h(rec3,7) + l(rec3,por12,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por12,8): - h(rec3,8) + l(rec3,por12,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,1): - 4 h(rec3,1) + l(rec3,por13,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,2): - 4 h(rec3,2) + l(rec3,por13,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,3): - 4 h(rec3,3) + l(rec3,por13,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,4): - 4 h(rec3,4) + l(rec3,por13,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,5): - 4 h(rec3,5) + l(rec3,por13,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,6): - 4 h(rec3,6) + l(rec3,por13,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,7): - 4 h(rec3,7) + l(rec3,por13,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por13,8): - 4 h(rec3,8) + l(rec3,por13,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,1): - h(rec3,1) + l(rec3,por14,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,2): - h(rec3,2) + l(rec3,por14,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,3): - h(rec3,3) + l(rec3,por14,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,4): - h(rec3,4) + l(rec3,por14,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,5): - h(rec3,5) + l(rec3,por14,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,6): - h(rec3,6) + l(rec3,por14,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,7): - h(rec3,7) + l(rec3,por14,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por14,8): - h(rec3,8) + l(rec3,por14,8)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,1): - 4 h(rec3,1) + l(rec3,por15,1)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,2): - 4 h(rec3,2) + l(rec3,por15,2)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,3): - 4 h(rec3,3) + l(rec3,por15,3)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,4): - 4 h(rec3,4) + l(rec3,por15,4)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,5): - 4 h(rec3,5) + l(rec3,por15,5)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,6): - 4 h(rec3,6) + l(rec3,por15,6)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,7): - 4 h(rec3,7) + l(rec3,por15,7)
 <= -0
 noCoverageIfNoRegionRow(rec3,por15,8): - 4 h(rec3,8) + l(rec3,por15,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,1): - 4 h(rec4,1) + l(rec4,por1,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,2): - 4 h(rec4,2) + l(rec4,por1,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,3): - 4 h(rec4,3) + l(rec4,por1,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,4): - 4 h(rec4,4) + l(rec4,por1,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,5): - 4 h(rec4,5) + l(rec4,por1,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,6): - 4 h(rec4,6) + l(rec4,por1,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,7): - 4 h(rec4,7) + l(rec4,por1,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por1,8): - 4 h(rec4,8) + l(rec4,por1,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,1): - h(rec4,1) + l(rec4,por2,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,2): - h(rec4,2) + l(rec4,por2,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,3): - h(rec4,3) + l(rec4,por2,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,4): - h(rec4,4) + l(rec4,por2,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,5): - h(rec4,5) + l(rec4,por2,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,6): - h(rec4,6) + l(rec4,por2,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,7): - h(rec4,7) + l(rec4,por2,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por2,8): - h(rec4,8) + l(rec4,por2,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,1): - 10 h(rec4,1) + l(rec4,por3,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,2): - 10 h(rec4,2) + l(rec4,por3,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,3): - 10 h(rec4,3) + l(rec4,por3,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,4): - 10 h(rec4,4) + l(rec4,por3,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,5): - 10 h(rec4,5) + l(rec4,por3,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,6): - 10 h(rec4,6) + l(rec4,por3,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,7): - 10 h(rec4,7) + l(rec4,por3,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por3,8): - 10 h(rec4,8) + l(rec4,por3,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,1): - h(rec4,1) + l(rec4,por4,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,2): - h(rec4,2) + l(rec4,por4,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,3): - h(rec4,3) + l(rec4,por4,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,4): - h(rec4,4) + l(rec4,por4,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,5): - h(rec4,5) + l(rec4,por4,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,6): - h(rec4,6) + l(rec4,por4,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,7): - h(rec4,7) + l(rec4,por4,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por4,8): - h(rec4,8) + l(rec4,por4,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,1): - 2 h(rec4,1) + l(rec4,por5,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,2): - 2 h(rec4,2) + l(rec4,por5,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,3): - 2 h(rec4,3) + l(rec4,por5,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,4): - 2 h(rec4,4) + l(rec4,por5,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,5): - 2 h(rec4,5) + l(rec4,por5,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,6): - 2 h(rec4,6) + l(rec4,por5,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,7): - 2 h(rec4,7) + l(rec4,por5,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por5,8): - 2 h(rec4,8) + l(rec4,por5,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,1): - h(rec4,1) + l(rec4,por6,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,2): - h(rec4,2) + l(rec4,por6,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,3): - h(rec4,3) + l(rec4,por6,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,4): - h(rec4,4) + l(rec4,por6,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,5): - h(rec4,5) + l(rec4,por6,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,6): - h(rec4,6) + l(rec4,por6,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,7): - h(rec4,7) + l(rec4,por6,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por6,8): - h(rec4,8) + l(rec4,por6,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,1): - 8 h(rec4,1) + l(rec4,por7,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,2): - 8 h(rec4,2) + l(rec4,por7,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,3): - 8 h(rec4,3) + l(rec4,por7,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,4): - 8 h(rec4,4) + l(rec4,por7,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,5): - 8 h(rec4,5) + l(rec4,por7,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,6): - 8 h(rec4,6) + l(rec4,por7,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,7): - 8 h(rec4,7) + l(rec4,por7,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por7,8): - 8 h(rec4,8) + l(rec4,por7,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,1): - h(rec4,1) + l(rec4,por8,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,2): - h(rec4,2) + l(rec4,por8,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,3): - h(rec4,3) + l(rec4,por8,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,4): - h(rec4,4) + l(rec4,por8,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,5): - h(rec4,5) + l(rec4,por8,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,6): - h(rec4,6) + l(rec4,por8,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,7): - h(rec4,7) + l(rec4,por8,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por8,8): - h(rec4,8) + l(rec4,por8,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,1): - 12 h(rec4,1) + l(rec4,por9,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,2): - 12 h(rec4,2) + l(rec4,por9,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,3): - 12 h(rec4,3) + l(rec4,por9,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,4): - 12 h(rec4,4) + l(rec4,por9,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,5): - 12 h(rec4,5) + l(rec4,por9,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,6): - 12 h(rec4,6) + l(rec4,por9,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,7): - 12 h(rec4,7) + l(rec4,por9,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por9,8): - 12 h(rec4,8) + l(rec4,por9,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,1): - h(rec4,1) + l(rec4,por10,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,2): - h(rec4,2) + l(rec4,por10,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,3): - h(rec4,3) + l(rec4,por10,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,4): - h(rec4,4) + l(rec4,por10,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,5): - h(rec4,5) + l(rec4,por10,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,6): - h(rec4,6) + l(rec4,por10,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,7): - h(rec4,7) + l(rec4,por10,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por10,8): - h(rec4,8) + l(rec4,por10,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,1): - 10 h(rec4,1) + l(rec4,por11,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,2): - 10 h(rec4,2) + l(rec4,por11,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,3): - 10 h(rec4,3) + l(rec4,por11,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,4): - 10 h(rec4,4) + l(rec4,por11,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,5): - 10 h(rec4,5) + l(rec4,por11,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,6): - 10 h(rec4,6) + l(rec4,por11,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,7): - 10 h(rec4,7) + l(rec4,por11,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por11,8): - 10 h(rec4,8) + l(rec4,por11,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,1): - h(rec4,1) + l(rec4,por12,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,2): - h(rec4,2) + l(rec4,por12,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,3): - h(rec4,3) + l(rec4,por12,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,4): - h(rec4,4) + l(rec4,por12,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,5): - h(rec4,5) + l(rec4,por12,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,6): - h(rec4,6) + l(rec4,por12,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,7): - h(rec4,7) + l(rec4,por12,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por12,8): - h(rec4,8) + l(rec4,por12,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,1): - 4 h(rec4,1) + l(rec4,por13,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,2): - 4 h(rec4,2) + l(rec4,por13,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,3): - 4 h(rec4,3) + l(rec4,por13,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,4): - 4 h(rec4,4) + l(rec4,por13,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,5): - 4 h(rec4,5) + l(rec4,por13,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,6): - 4 h(rec4,6) + l(rec4,por13,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,7): - 4 h(rec4,7) + l(rec4,por13,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por13,8): - 4 h(rec4,8) + l(rec4,por13,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,1): - h(rec4,1) + l(rec4,por14,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,2): - h(rec4,2) + l(rec4,por14,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,3): - h(rec4,3) + l(rec4,por14,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,4): - h(rec4,4) + l(rec4,por14,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,5): - h(rec4,5) + l(rec4,por14,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,6): - h(rec4,6) + l(rec4,por14,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,7): - h(rec4,7) + l(rec4,por14,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por14,8): - h(rec4,8) + l(rec4,por14,8)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,1): - 4 h(rec4,1) + l(rec4,por15,1)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,2): - 4 h(rec4,2) + l(rec4,por15,2)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,3): - 4 h(rec4,3) + l(rec4,por15,3)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,4): - 4 h(rec4,4) + l(rec4,por15,4)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,5): - 4 h(rec4,5) + l(rec4,por15,5)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,6): - 4 h(rec4,6) + l(rec4,por15,6)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,7): - 4 h(rec4,7) + l(rec4,por15,7)
 <= -0
 noCoverageIfNoRegionRow(rec4,por15,8): - 4 h(rec4,8) + l(rec4,por15,8)
 <= -0
 noCoverageIfNoIntersection(rec1,por1,1): + l(rec1,por1,1)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,2): + l(rec1,por1,2)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,3): + l(rec1,por1,3)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,4): + l(rec1,por1,4)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,5): + l(rec1,por1,5)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,6): + l(rec1,por1,6)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,7): + l(rec1,por1,7)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por1,8): + l(rec1,por1,8)
 - 4 k1(rec1,por1) <= -0
 noCoverageIfNoIntersection(rec1,por2,1): + l(rec1,por2,1)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,2): + l(rec1,por2,2)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,3): + l(rec1,por2,3)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,4): + l(rec1,por2,4)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,5): + l(rec1,por2,5)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,6): + l(rec1,por2,6)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,7): + l(rec1,por2,7)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por2,8): + l(rec1,por2,8)
 - k1(rec1,por2) <= -0
 noCoverageIfNoIntersection(rec1,por3,1): + l(rec1,por3,1)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,2): + l(rec1,por3,2)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,3): + l(rec1,por3,3)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,4): + l(rec1,por3,4)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,5): + l(rec1,por3,5)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,6): + l(rec1,por3,6)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,7): + l(rec1,por3,7)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por3,8): + l(rec1,por3,8)
 - 10 k1(rec1,por3) <= -0
 noCoverageIfNoIntersection(rec1,por4,1): + l(rec1,por4,1)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,2): + l(rec1,por4,2)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,3): + l(rec1,por4,3)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,4): + l(rec1,por4,4)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,5): + l(rec1,por4,5)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,6): + l(rec1,por4,6)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,7): + l(rec1,por4,7)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por4,8): + l(rec1,por4,8)
 - k1(rec1,por4) <= -0
 noCoverageIfNoIntersection(rec1,por5,1): + l(rec1,por5,1)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,2): + l(rec1,por5,2)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,3): + l(rec1,por5,3)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,4): + l(rec1,por5,4)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,5): + l(rec1,por5,5)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,6): + l(rec1,por5,6)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,7): + l(rec1,por5,7)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por5,8): + l(rec1,por5,8)
 - 2 k1(rec1,por5) <= -0
 noCoverageIfNoIntersection(rec1,por6,1): + l(rec1,por6,1)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,2): + l(rec1,por6,2)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,3): + l(rec1,por6,3)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,4): + l(rec1,por6,4)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,5): + l(rec1,por6,5)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,6): + l(rec1,por6,6)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,7): + l(rec1,por6,7)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por6,8): + l(rec1,por6,8)
 - k1(rec1,por6) <= -0
 noCoverageIfNoIntersection(rec1,por7,1): + l(rec1,por7,1)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,2): + l(rec1,por7,2)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,3): + l(rec1,por7,3)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,4): + l(rec1,por7,4)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,5): + l(rec1,por7,5)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,6): + l(rec1,por7,6)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,7): + l(rec1,por7,7)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por7,8): + l(rec1,por7,8)
 - 8 k1(rec1,por7) <= -0
 noCoverageIfNoIntersection(rec1,por8,1): + l(rec1,por8,1)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,2): + l(rec1,por8,2)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,3): + l(rec1,por8,3)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,4): + l(rec1,por8,4)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,5): + l(rec1,por8,5)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,6): + l(rec1,por8,6)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,7): + l(rec1,por8,7)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por8,8): + l(rec1,por8,8)
 - k1(rec1,por8) <= -0
 noCoverageIfNoIntersection(rec1,por9,1): + l(rec1,por9,1)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,2): + l(rec1,por9,2)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,3): + l(rec1,por9,3)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,4): + l(rec1,por9,4)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,5): + l(rec1,por9,5)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,6): + l(rec1,por9,6)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,7): + l(rec1,por9,7)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por9,8): + l(rec1,por9,8)
 - 12 k1(rec1,por9) <= -0
 noCoverageIfNoIntersection(rec1,por10,1): + l(rec1,por10,1)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,2): + l(rec1,por10,2)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,3): + l(rec1,por10,3)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,4): + l(rec1,por10,4)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,5): + l(rec1,por10,5)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,6): + l(rec1,por10,6)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,7): + l(rec1,por10,7)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por10,8): + l(rec1,por10,8)
 - k1(rec1,por10) <= -0
 noCoverageIfNoIntersection(rec1,por11,1): + l(rec1,por11,1)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,2): + l(rec1,por11,2)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,3): + l(rec1,por11,3)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,4): + l(rec1,por11,4)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,5): + l(rec1,por11,5)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,6): + l(rec1,por11,6)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,7): + l(rec1,por11,7)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por11,8): + l(rec1,por11,8)
 - 10 k1(rec1,por11) <= -0
 noCoverageIfNoIntersection(rec1,por12,1): + l(rec1,por12,1)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,2): + l(rec1,por12,2)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,3): + l(rec1,por12,3)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,4): + l(rec1,por12,4)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,5): + l(rec1,por12,5)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,6): + l(rec1,por12,6)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,7): + l(rec1,por12,7)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por12,8): + l(rec1,por12,8)
 - k1(rec1,por12) <= -0
 noCoverageIfNoIntersection(rec1,por13,1): + l(rec1,por13,1)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,2): + l(rec1,por13,2)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,3): + l(rec1,por13,3)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,4): + l(rec1,por13,4)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,5): + l(rec1,por13,5)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,6): + l(rec1,por13,6)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,7): + l(rec1,por13,7)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por13,8): + l(rec1,por13,8)
 - 4 k1(rec1,por13) <= -0
 noCoverageIfNoIntersection(rec1,por14,1): + l(rec1,por14,1)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,2): + l(rec1,por14,2)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,3): + l(rec1,por14,3)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,4): + l(rec1,por14,4)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,5): + l(rec1,por14,5)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,6): + l(rec1,por14,6)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,7): + l(rec1,por14,7)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por14,8): + l(rec1,por14,8)
 - k1(rec1,por14) <= -0
 noCoverageIfNoIntersection(rec1,por15,1): + l(rec1,por15,1)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,2): + l(rec1,por15,2)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,3): + l(rec1,por15,3)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,4): + l(rec1,por15,4)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,5): + l(rec1,por15,5)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,6): + l(rec1,por15,6)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,7): + l(rec1,por15,7)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec1,por15,8): + l(rec1,por15,8)
 - 4 k1(rec1,por15) <= -0
 noCoverageIfNoIntersection(rec2,por1,1): + l(rec2,por1,1)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,2): + l(rec2,por1,2)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,3): + l(rec2,por1,3)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,4): + l(rec2,por1,4)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,5): + l(rec2,por1,5)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,6): + l(rec2,por1,6)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,7): + l(rec2,por1,7)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por1,8): + l(rec2,por1,8)
 - 4 k1(rec2,por1) <= -0
 noCoverageIfNoIntersection(rec2,por2,1): + l(rec2,por2,1)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,2): + l(rec2,por2,2)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,3): + l(rec2,por2,3)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,4): + l(rec2,por2,4)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,5): + l(rec2,por2,5)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,6): + l(rec2,por2,6)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,7): + l(rec2,por2,7)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por2,8): + l(rec2,por2,8)
 - k1(rec2,por2) <= -0
 noCoverageIfNoIntersection(rec2,por3,1): + l(rec2,por3,1)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,2): + l(rec2,por3,2)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,3): + l(rec2,por3,3)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,4): + l(rec2,por3,4)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,5): + l(rec2,por3,5)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,6): + l(rec2,por3,6)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,7): + l(rec2,por3,7)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por3,8): + l(rec2,por3,8)
 - 10 k1(rec2,por3) <= -0
 noCoverageIfNoIntersection(rec2,por4,1): + l(rec2,por4,1)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,2): + l(rec2,por4,2)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,3): + l(rec2,por4,3)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,4): + l(rec2,por4,4)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,5): + l(rec2,por4,5)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,6): + l(rec2,por4,6)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,7): + l(rec2,por4,7)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por4,8): + l(rec2,por4,8)
 - k1(rec2,por4) <= -0
 noCoverageIfNoIntersection(rec2,por5,1): + l(rec2,por5,1)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,2): + l(rec2,por5,2)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,3): + l(rec2,por5,3)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,4): + l(rec2,por5,4)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,5): + l(rec2,por5,5)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,6): + l(rec2,por5,6)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,7): + l(rec2,por5,7)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por5,8): + l(rec2,por5,8)
 - 2 k1(rec2,por5) <= -0
 noCoverageIfNoIntersection(rec2,por6,1): + l(rec2,por6,1)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,2): + l(rec2,por6,2)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,3): + l(rec2,por6,3)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,4): + l(rec2,por6,4)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,5): + l(rec2,por6,5)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,6): + l(rec2,por6,6)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,7): + l(rec2,por6,7)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por6,8): + l(rec2,por6,8)
 - k1(rec2,por6) <= -0
 noCoverageIfNoIntersection(rec2,por7,1): + l(rec2,por7,1)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,2): + l(rec2,por7,2)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,3): + l(rec2,por7,3)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,4): + l(rec2,por7,4)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,5): + l(rec2,por7,5)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,6): + l(rec2,por7,6)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,7): + l(rec2,por7,7)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por7,8): + l(rec2,por7,8)
 - 8 k1(rec2,por7) <= -0
 noCoverageIfNoIntersection(rec2,por8,1): + l(rec2,por8,1)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,2): + l(rec2,por8,2)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,3): + l(rec2,por8,3)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,4): + l(rec2,por8,4)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,5): + l(rec2,por8,5)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,6): + l(rec2,por8,6)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,7): + l(rec2,por8,7)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por8,8): + l(rec2,por8,8)
 - k1(rec2,por8) <= -0
 noCoverageIfNoIntersection(rec2,por9,1): + l(rec2,por9,1)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,2): + l(rec2,por9,2)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,3): + l(rec2,por9,3)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,4): + l(rec2,por9,4)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,5): + l(rec2,por9,5)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,6): + l(rec2,por9,6)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,7): + l(rec2,por9,7)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por9,8): + l(rec2,por9,8)
 - 12 k1(rec2,por9) <= -0
 noCoverageIfNoIntersection(rec2,por10,1): + l(rec2,por10,1)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,2): + l(rec2,por10,2)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,3): + l(rec2,por10,3)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,4): + l(rec2,por10,4)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,5): + l(rec2,por10,5)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,6): + l(rec2,por10,6)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,7): + l(rec2,por10,7)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por10,8): + l(rec2,por10,8)
 - k1(rec2,por10) <= -0
 noCoverageIfNoIntersection(rec2,por11,1): + l(rec2,por11,1)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,2): + l(rec2,por11,2)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,3): + l(rec2,por11,3)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,4): + l(rec2,por11,4)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,5): + l(rec2,por11,5)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,6): + l(rec2,por11,6)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,7): + l(rec2,por11,7)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por11,8): + l(rec2,por11,8)
 - 10 k1(rec2,por11) <= -0
 noCoverageIfNoIntersection(rec2,por12,1): + l(rec2,por12,1)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,2): + l(rec2,por12,2)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,3): + l(rec2,por12,3)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,4): + l(rec2,por12,4)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,5): + l(rec2,por12,5)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,6): + l(rec2,por12,6)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,7): + l(rec2,por12,7)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por12,8): + l(rec2,por12,8)
 - k1(rec2,por12) <= -0
 noCoverageIfNoIntersection(rec2,por13,1): + l(rec2,por13,1)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,2): + l(rec2,por13,2)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,3): + l(rec2,por13,3)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,4): + l(rec2,por13,4)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,5): + l(rec2,por13,5)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,6): + l(rec2,por13,6)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,7): + l(rec2,por13,7)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por13,8): + l(rec2,por13,8)
 - 4 k1(rec2,por13) <= -0
 noCoverageIfNoIntersection(rec2,por14,1): + l(rec2,por14,1)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,2): + l(rec2,por14,2)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,3): + l(rec2,por14,3)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,4): + l(rec2,por14,4)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,5): + l(rec2,por14,5)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,6): + l(rec2,por14,6)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,7): + l(rec2,por14,7)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por14,8): + l(rec2,por14,8)
 - k1(rec2,por14) <= -0
 noCoverageIfNoIntersection(rec2,por15,1): + l(rec2,por15,1)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,2): + l(rec2,por15,2)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,3): + l(rec2,por15,3)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,4): + l(rec2,por15,4)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,5): + l(rec2,por15,5)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,6): + l(rec2,por15,6)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,7): + l(rec2,por15,7)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec2,por15,8): + l(rec2,por15,8)
 - 4 k1(rec2,por15) <= -0
 noCoverageIfNoIntersection(rec3,por1,1): + l(rec3,por1,1)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,2): + l(rec3,por1,2)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,3): + l(rec3,por1,3)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,4): + l(rec3,por1,4)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,5): + l(rec3,por1,5)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,6): + l(rec3,por1,6)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,7): + l(rec3,por1,7)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por1,8): + l(rec3,por1,8)
 - 4 k1(rec3,por1) <= -0
 noCoverageIfNoIntersection(rec3,por2,1): + l(rec3,por2,1)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,2): + l(rec3,por2,2)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,3): + l(rec3,por2,3)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,4): + l(rec3,por2,4)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,5): + l(rec3,por2,5)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,6): + l(rec3,por2,6)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,7): + l(rec3,por2,7)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por2,8): + l(rec3,por2,8)
 - k1(rec3,por2) <= -0
 noCoverageIfNoIntersection(rec3,por3,1): + l(rec3,por3,1)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,2): + l(rec3,por3,2)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,3): + l(rec3,por3,3)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,4): + l(rec3,por3,4)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,5): + l(rec3,por3,5)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,6): + l(rec3,por3,6)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,7): + l(rec3,por3,7)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por3,8): + l(rec3,por3,8)
 - 10 k1(rec3,por3) <= -0
 noCoverageIfNoIntersection(rec3,por4,1): + l(rec3,por4,1)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,2): + l(rec3,por4,2)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,3): + l(rec3,por4,3)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,4): + l(rec3,por4,4)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,5): + l(rec3,por4,5)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,6): + l(rec3,por4,6)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,7): + l(rec3,por4,7)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por4,8): + l(rec3,por4,8)
 - k1(rec3,por4) <= -0
 noCoverageIfNoIntersection(rec3,por5,1): + l(rec3,por5,1)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,2): + l(rec3,por5,2)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,3): + l(rec3,por5,3)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,4): + l(rec3,por5,4)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,5): + l(rec3,por5,5)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,6): + l(rec3,por5,6)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,7): + l(rec3,por5,7)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por5,8): + l(rec3,por5,8)
 - 2 k1(rec3,por5) <= -0
 noCoverageIfNoIntersection(rec3,por6,1): + l(rec3,por6,1)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,2): + l(rec3,por6,2)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,3): + l(rec3,por6,3)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,4): + l(rec3,por6,4)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,5): + l(rec3,por6,5)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,6): + l(rec3,por6,6)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,7): + l(rec3,por6,7)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por6,8): + l(rec3,por6,8)
 - k1(rec3,por6) <= -0
 noCoverageIfNoIntersection(rec3,por7,1): + l(rec3,por7,1)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,2): + l(rec3,por7,2)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,3): + l(rec3,por7,3)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,4): + l(rec3,por7,4)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,5): + l(rec3,por7,5)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,6): + l(rec3,por7,6)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,7): + l(rec3,por7,7)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por7,8): + l(rec3,por7,8)
 - 8 k1(rec3,por7) <= -0
 noCoverageIfNoIntersection(rec3,por8,1): + l(rec3,por8,1)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,2): + l(rec3,por8,2)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,3): + l(rec3,por8,3)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,4): + l(rec3,por8,4)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,5): + l(rec3,por8,5)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,6): + l(rec3,por8,6)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,7): + l(rec3,por8,7)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por8,8): + l(rec3,por8,8)
 - k1(rec3,por8) <= -0
 noCoverageIfNoIntersection(rec3,por9,1): + l(rec3,por9,1)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,2): + l(rec3,por9,2)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,3): + l(rec3,por9,3)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,4): + l(rec3,por9,4)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,5): + l(rec3,por9,5)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,6): + l(rec3,por9,6)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,7): + l(rec3,por9,7)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por9,8): + l(rec3,por9,8)
 - 12 k1(rec3,por9) <= -0
 noCoverageIfNoIntersection(rec3,por10,1): + l(rec3,por10,1)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,2): + l(rec3,por10,2)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,3): + l(rec3,por10,3)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,4): + l(rec3,por10,4)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,5): + l(rec3,por10,5)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,6): + l(rec3,por10,6)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,7): + l(rec3,por10,7)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por10,8): + l(rec3,por10,8)
 - k1(rec3,por10) <= -0
 noCoverageIfNoIntersection(rec3,por11,1): + l(rec3,por11,1)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,2): + l(rec3,por11,2)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,3): + l(rec3,por11,3)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,4): + l(rec3,por11,4)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,5): + l(rec3,por11,5)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,6): + l(rec3,por11,6)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,7): + l(rec3,por11,7)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por11,8): + l(rec3,por11,8)
 - 10 k1(rec3,por11) <= -0
 noCoverageIfNoIntersection(rec3,por12,1): + l(rec3,por12,1)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,2): + l(rec3,por12,2)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,3): + l(rec3,por12,3)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,4): + l(rec3,por12,4)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,5): + l(rec3,por12,5)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,6): + l(rec3,por12,6)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,7): + l(rec3,por12,7)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por12,8): + l(rec3,por12,8)
 - k1(rec3,por12) <= -0
 noCoverageIfNoIntersection(rec3,por13,1): + l(rec3,por13,1)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,2): + l(rec3,por13,2)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,3): + l(rec3,por13,3)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,4): + l(rec3,por13,4)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,5): + l(rec3,por13,5)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,6): + l(rec3,por13,6)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,7): + l(rec3,por13,7)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por13,8): + l(rec3,por13,8)
 - 4 k1(rec3,por13) <= -0
 noCoverageIfNoIntersection(rec3,por14,1): + l(rec3,por14,1)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,2): + l(rec3,por14,2)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,3): + l(rec3,por14,3)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,4): + l(rec3,por14,4)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,5): + l(rec3,por14,5)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,6): + l(rec3,por14,6)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,7): + l(rec3,por14,7)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por14,8): + l(rec3,por14,8)
 - k1(rec3,por14) <= -0
 noCoverageIfNoIntersection(rec3,por15,1): + l(rec3,por15,1)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,2): + l(rec3,por15,2)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,3): + l(rec3,por15,3)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,4): + l(rec3,por15,4)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,5): + l(rec3,por15,5)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,6): + l(rec3,por15,6)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,7): + l(rec3,por15,7)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec3,por15,8): + l(rec3,por15,8)
 - 4 k1(rec3,por15) <= -0
 noCoverageIfNoIntersection(rec4,por1,1): + l(rec4,por1,1)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,2): + l(rec4,por1,2)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,3): + l(rec4,por1,3)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,4): + l(rec4,por1,4)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,5): + l(rec4,por1,5)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,6): + l(rec4,por1,6)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,7): + l(rec4,por1,7)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por1,8): + l(rec4,por1,8)
 - 4 k1(rec4,por1) <= -0
 noCoverageIfNoIntersection(rec4,por2,1): + l(rec4,por2,1)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,2): + l(rec4,por2,2)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,3): + l(rec4,por2,3)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,4): + l(rec4,por2,4)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,5): + l(rec4,por2,5)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,6): + l(rec4,por2,6)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,7): + l(rec4,por2,7)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por2,8): + l(rec4,por2,8)
 - k1(rec4,por2) <= -0
 noCoverageIfNoIntersection(rec4,por3,1): + l(rec4,por3,1)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,2): + l(rec4,por3,2)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,3): + l(rec4,por3,3)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,4): + l(rec4,por3,4)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,5): + l(rec4,por3,5)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,6): + l(rec4,por3,6)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,7): + l(rec4,por3,7)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por3,8): + l(rec4,por3,8)
 - 10 k1(rec4,por3) <= -0
 noCoverageIfNoIntersection(rec4,por4,1): + l(rec4,por4,1)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,2): + l(rec4,por4,2)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,3): + l(rec4,por4,3)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,4): + l(rec4,por4,4)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,5): + l(rec4,por4,5)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,6): + l(rec4,por4,6)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,7): + l(rec4,por4,7)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por4,8): + l(rec4,por4,8)
 - k1(rec4,por4) <= -0
 noCoverageIfNoIntersection(rec4,por5,1): + l(rec4,por5,1)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,2): + l(rec4,por5,2)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,3): + l(rec4,por5,3)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,4): + l(rec4,por5,4)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,5): + l(rec4,por5,5)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,6): + l(rec4,por5,6)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,7): + l(rec4,por5,7)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por5,8): + l(rec4,por5,8)
 - 2 k1(rec4,por5) <= -0
 noCoverageIfNoIntersection(rec4,por6,1): + l(rec4,por6,1)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,2): + l(rec4,por6,2)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,3): + l(rec4,por6,3)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,4): + l(rec4,por6,4)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,5): + l(rec4,por6,5)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,6): + l(rec4,por6,6)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,7): + l(rec4,por6,7)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por6,8): + l(rec4,por6,8)
 - k1(rec4,por6) <= -0
 noCoverageIfNoIntersection(rec4,por7,1): + l(rec4,por7,1)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,2): + l(rec4,por7,2)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,3): + l(rec4,por7,3)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,4): + l(rec4,por7,4)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,5): + l(rec4,por7,5)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,6): + l(rec4,por7,6)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,7): + l(rec4,por7,7)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por7,8): + l(rec4,por7,8)
 - 8 k1(rec4,por7) <= -0
 noCoverageIfNoIntersection(rec4,por8,1): + l(rec4,por8,1)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,2): + l(rec4,por8,2)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,3): + l(rec4,por8,3)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,4): + l(rec4,por8,4)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,5): + l(rec4,por8,5)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,6): + l(rec4,por8,6)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,7): + l(rec4,por8,7)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por8,8): + l(rec4,por8,8)
 - k1(rec4,por8) <= -0
 noCoverageIfNoIntersection(rec4,por9,1): + l(rec4,por9,1)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,2): + l(rec4,por9,2)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,3): + l(rec4,por9,3)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,4): + l(rec4,por9,4)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,5): + l(rec4,por9,5)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,6): + l(rec4,por9,6)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,7): + l(rec4,por9,7)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por9,8): + l(rec4,por9,8)
 - 12 k1(rec4,por9) <= -0
 noCoverageIfNoIntersection(rec4,por10,1): + l(rec4,por10,1)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,2): + l(rec4,por10,2)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,3): + l(rec4,por10,3)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,4): + l(rec4,por10,4)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,5): + l(rec4,por10,5)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,6): + l(rec4,por10,6)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,7): + l(rec4,por10,7)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por10,8): + l(rec4,por10,8)
 - k1(rec4,por10) <= -0
 noCoverageIfNoIntersection(rec4,por11,1): + l(rec4,por11,1)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,2): + l(rec4,por11,2)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,3): + l(rec4,por11,3)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,4): + l(rec4,por11,4)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,5): + l(rec4,por11,5)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,6): + l(rec4,por11,6)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,7): + l(rec4,por11,7)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por11,8): + l(rec4,por11,8)
 - 10 k1(rec4,por11) <= -0
 noCoverageIfNoIntersection(rec4,por12,1): + l(rec4,por12,1)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,2): + l(rec4,por12,2)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,3): + l(rec4,por12,3)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,4): + l(rec4,por12,4)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,5): + l(rec4,por12,5)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,6): + l(rec4,por12,6)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,7): + l(rec4,por12,7)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por12,8): + l(rec4,por12,8)
 - k1(rec4,por12) <= -0
 noCoverageIfNoIntersection(rec4,por13,1): + l(rec4,por13,1)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,2): + l(rec4,por13,2)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,3): + l(rec4,por13,3)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,4): + l(rec4,por13,4)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,5): + l(rec4,por13,5)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,6): + l(rec4,por13,6)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,7): + l(rec4,por13,7)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por13,8): + l(rec4,por13,8)
 - 4 k1(rec4,por13) <= -0
 noCoverageIfNoIntersection(rec4,por14,1): + l(rec4,por14,1)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,2): + l(rec4,por14,2)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,3): + l(rec4,por14,3)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,4): + l(rec4,por14,4)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,5): + l(rec4,por14,5)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,6): + l(rec4,por14,6)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,7): + l(rec4,por14,7)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por14,8): + l(rec4,por14,8)
 - k1(rec4,por14) <= -0
 noCoverageIfNoIntersection(rec4,por15,1): + l(rec4,por15,1)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,2): + l(rec4,por15,2)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,3): + l(rec4,por15,3)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,4): + l(rec4,por15,4)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,5): + l(rec4,por15,5)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,6): + l(rec4,por15,6)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,7): + l(rec4,por15,7)
 - 4 k1(rec4,por15) <= -0
 noCoverageIfNoIntersection(rec4,por15,8): + l(rec4,por15,8)
 - 4 k1(rec4,por15) <= -0
 maxCoverageDueToRegionWidth(rec1,por1,1): - w(rec1) + l(rec1,por1,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,2): - w(rec1) + l(rec1,por1,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,3): - w(rec1) + l(rec1,por1,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,4): - w(rec1) + l(rec1,por1,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,5): - w(rec1) + l(rec1,por1,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,6): - w(rec1) + l(rec1,por1,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,7): - w(rec1) + l(rec1,por1,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por1,8): - w(rec1) + l(rec1,por1,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,1): - w(rec1) + l(rec1,por2,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,2): - w(rec1) + l(rec1,por2,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,3): - w(rec1) + l(rec1,por2,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,4): - w(rec1) + l(rec1,por2,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,5): - w(rec1) + l(rec1,por2,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,6): - w(rec1) + l(rec1,por2,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,7): - w(rec1) + l(rec1,por2,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por2,8): - w(rec1) + l(rec1,por2,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,1): - w(rec1) + l(rec1,por3,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,2): - w(rec1) + l(rec1,por3,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,3): - w(rec1) + l(rec1,por3,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,4): - w(rec1) + l(rec1,por3,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,5): - w(rec1) + l(rec1,por3,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,6): - w(rec1) + l(rec1,por3,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,7): - w(rec1) + l(rec1,por3,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por3,8): - w(rec1) + l(rec1,por3,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,1): - w(rec1) + l(rec1,por4,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,2): - w(rec1) + l(rec1,por4,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,3): - w(rec1) + l(rec1,por4,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,4): - w(rec1) + l(rec1,por4,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,5): - w(rec1) + l(rec1,por4,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,6): - w(rec1) + l(rec1,por4,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,7): - w(rec1) + l(rec1,por4,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por4,8): - w(rec1) + l(rec1,por4,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,1): - w(rec1) + l(rec1,por5,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,2): - w(rec1) + l(rec1,por5,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,3): - w(rec1) + l(rec1,por5,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,4): - w(rec1) + l(rec1,por5,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,5): - w(rec1) + l(rec1,por5,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,6): - w(rec1) + l(rec1,por5,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,7): - w(rec1) + l(rec1,por5,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por5,8): - w(rec1) + l(rec1,por5,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,1): - w(rec1) + l(rec1,por6,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,2): - w(rec1) + l(rec1,por6,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,3): - w(rec1) + l(rec1,por6,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,4): - w(rec1) + l(rec1,por6,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,5): - w(rec1) + l(rec1,por6,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,6): - w(rec1) + l(rec1,por6,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,7): - w(rec1) + l(rec1,por6,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por6,8): - w(rec1) + l(rec1,por6,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,1): - w(rec1) + l(rec1,por7,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,2): - w(rec1) + l(rec1,por7,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,3): - w(rec1) + l(rec1,por7,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,4): - w(rec1) + l(rec1,por7,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,5): - w(rec1) + l(rec1,por7,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,6): - w(rec1) + l(rec1,por7,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,7): - w(rec1) + l(rec1,por7,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por7,8): - w(rec1) + l(rec1,por7,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,1): - w(rec1) + l(rec1,por8,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,2): - w(rec1) + l(rec1,por8,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,3): - w(rec1) + l(rec1,por8,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,4): - w(rec1) + l(rec1,por8,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,5): - w(rec1) + l(rec1,por8,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,6): - w(rec1) + l(rec1,por8,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,7): - w(rec1) + l(rec1,por8,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por8,8): - w(rec1) + l(rec1,por8,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,1): - w(rec1) + l(rec1,por9,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,2): - w(rec1) + l(rec1,por9,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,3): - w(rec1) + l(rec1,por9,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,4): - w(rec1) + l(rec1,por9,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,5): - w(rec1) + l(rec1,por9,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,6): - w(rec1) + l(rec1,por9,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,7): - w(rec1) + l(rec1,por9,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por9,8): - w(rec1) + l(rec1,por9,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,1): - w(rec1) + l(rec1,por10,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,2): - w(rec1) + l(rec1,por10,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,3): - w(rec1) + l(rec1,por10,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,4): - w(rec1) + l(rec1,por10,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,5): - w(rec1) + l(rec1,por10,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,6): - w(rec1) + l(rec1,por10,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,7): - w(rec1) + l(rec1,por10,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por10,8): - w(rec1) + l(rec1,por10,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,1): - w(rec1) + l(rec1,por11,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,2): - w(rec1) + l(rec1,por11,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,3): - w(rec1) + l(rec1,por11,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,4): - w(rec1) + l(rec1,por11,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,5): - w(rec1) + l(rec1,por11,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,6): - w(rec1) + l(rec1,por11,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,7): - w(rec1) + l(rec1,por11,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por11,8): - w(rec1) + l(rec1,por11,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,1): - w(rec1) + l(rec1,por12,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,2): - w(rec1) + l(rec1,por12,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,3): - w(rec1) + l(rec1,por12,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,4): - w(rec1) + l(rec1,por12,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,5): - w(rec1) + l(rec1,por12,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,6): - w(rec1) + l(rec1,por12,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,7): - w(rec1) + l(rec1,por12,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por12,8): - w(rec1) + l(rec1,por12,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,1): - w(rec1) + l(rec1,por13,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,2): - w(rec1) + l(rec1,por13,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,3): - w(rec1) + l(rec1,por13,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,4): - w(rec1) + l(rec1,por13,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,5): - w(rec1) + l(rec1,por13,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,6): - w(rec1) + l(rec1,por13,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,7): - w(rec1) + l(rec1,por13,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por13,8): - w(rec1) + l(rec1,por13,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,1): - w(rec1) + l(rec1,por14,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,2): - w(rec1) + l(rec1,por14,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,3): - w(rec1) + l(rec1,por14,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,4): - w(rec1) + l(rec1,por14,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,5): - w(rec1) + l(rec1,por14,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,6): - w(rec1) + l(rec1,por14,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,7): - w(rec1) + l(rec1,por14,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por14,8): - w(rec1) + l(rec1,por14,8)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,1): - w(rec1) + l(rec1,por15,1)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,2): - w(rec1) + l(rec1,por15,2)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,3): - w(rec1) + l(rec1,por15,3)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,4): - w(rec1) + l(rec1,por15,4)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,5): - w(rec1) + l(rec1,por15,5)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,6): - w(rec1) + l(rec1,por15,6)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,7): - w(rec1) + l(rec1,por15,7)
 <= 1
 maxCoverageDueToRegionWidth(rec1,por15,8): - w(rec1) + l(rec1,por15,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,1): - w(rec2) + l(rec2,por1,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,2): - w(rec2) + l(rec2,por1,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,3): - w(rec2) + l(rec2,por1,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,4): - w(rec2) + l(rec2,por1,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,5): - w(rec2) + l(rec2,por1,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,6): - w(rec2) + l(rec2,por1,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,7): - w(rec2) + l(rec2,por1,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por1,8): - w(rec2) + l(rec2,por1,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,1): - w(rec2) + l(rec2,por2,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,2): - w(rec2) + l(rec2,por2,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,3): - w(rec2) + l(rec2,por2,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,4): - w(rec2) + l(rec2,por2,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,5): - w(rec2) + l(rec2,por2,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,6): - w(rec2) + l(rec2,por2,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,7): - w(rec2) + l(rec2,por2,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por2,8): - w(rec2) + l(rec2,por2,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,1): - w(rec2) + l(rec2,por3,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,2): - w(rec2) + l(rec2,por3,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,3): - w(rec2) + l(rec2,por3,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,4): - w(rec2) + l(rec2,por3,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,5): - w(rec2) + l(rec2,por3,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,6): - w(rec2) + l(rec2,por3,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,7): - w(rec2) + l(rec2,por3,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por3,8): - w(rec2) + l(rec2,por3,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,1): - w(rec2) + l(rec2,por4,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,2): - w(rec2) + l(rec2,por4,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,3): - w(rec2) + l(rec2,por4,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,4): - w(rec2) + l(rec2,por4,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,5): - w(rec2) + l(rec2,por4,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,6): - w(rec2) + l(rec2,por4,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,7): - w(rec2) + l(rec2,por4,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por4,8): - w(rec2) + l(rec2,por4,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,1): - w(rec2) + l(rec2,por5,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,2): - w(rec2) + l(rec2,por5,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,3): - w(rec2) + l(rec2,por5,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,4): - w(rec2) + l(rec2,por5,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,5): - w(rec2) + l(rec2,por5,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,6): - w(rec2) + l(rec2,por5,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,7): - w(rec2) + l(rec2,por5,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por5,8): - w(rec2) + l(rec2,por5,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,1): - w(rec2) + l(rec2,por6,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,2): - w(rec2) + l(rec2,por6,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,3): - w(rec2) + l(rec2,por6,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,4): - w(rec2) + l(rec2,por6,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,5): - w(rec2) + l(rec2,por6,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,6): - w(rec2) + l(rec2,por6,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,7): - w(rec2) + l(rec2,por6,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por6,8): - w(rec2) + l(rec2,por6,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,1): - w(rec2) + l(rec2,por7,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,2): - w(rec2) + l(rec2,por7,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,3): - w(rec2) + l(rec2,por7,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,4): - w(rec2) + l(rec2,por7,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,5): - w(rec2) + l(rec2,por7,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,6): - w(rec2) + l(rec2,por7,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,7): - w(rec2) + l(rec2,por7,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por7,8): - w(rec2) + l(rec2,por7,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,1): - w(rec2) + l(rec2,por8,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,2): - w(rec2) + l(rec2,por8,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,3): - w(rec2) + l(rec2,por8,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,4): - w(rec2) + l(rec2,por8,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,5): - w(rec2) + l(rec2,por8,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,6): - w(rec2) + l(rec2,por8,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,7): - w(rec2) + l(rec2,por8,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por8,8): - w(rec2) + l(rec2,por8,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,1): - w(rec2) + l(rec2,por9,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,2): - w(rec2) + l(rec2,por9,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,3): - w(rec2) + l(rec2,por9,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,4): - w(rec2) + l(rec2,por9,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,5): - w(rec2) + l(rec2,por9,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,6): - w(rec2) + l(rec2,por9,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,7): - w(rec2) + l(rec2,por9,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por9,8): - w(rec2) + l(rec2,por9,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,1): - w(rec2) + l(rec2,por10,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,2): - w(rec2) + l(rec2,por10,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,3): - w(rec2) + l(rec2,por10,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,4): - w(rec2) + l(rec2,por10,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,5): - w(rec2) + l(rec2,por10,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,6): - w(rec2) + l(rec2,por10,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,7): - w(rec2) + l(rec2,por10,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por10,8): - w(rec2) + l(rec2,por10,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,1): - w(rec2) + l(rec2,por11,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,2): - w(rec2) + l(rec2,por11,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,3): - w(rec2) + l(rec2,por11,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,4): - w(rec2) + l(rec2,por11,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,5): - w(rec2) + l(rec2,por11,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,6): - w(rec2) + l(rec2,por11,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,7): - w(rec2) + l(rec2,por11,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por11,8): - w(rec2) + l(rec2,por11,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,1): - w(rec2) + l(rec2,por12,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,2): - w(rec2) + l(rec2,por12,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,3): - w(rec2) + l(rec2,por12,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,4): - w(rec2) + l(rec2,por12,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,5): - w(rec2) + l(rec2,por12,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,6): - w(rec2) + l(rec2,por12,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,7): - w(rec2) + l(rec2,por12,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por12,8): - w(rec2) + l(rec2,por12,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,1): - w(rec2) + l(rec2,por13,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,2): - w(rec2) + l(rec2,por13,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,3): - w(rec2) + l(rec2,por13,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,4): - w(rec2) + l(rec2,por13,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,5): - w(rec2) + l(rec2,por13,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,6): - w(rec2) + l(rec2,por13,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,7): - w(rec2) + l(rec2,por13,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por13,8): - w(rec2) + l(rec2,por13,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,1): - w(rec2) + l(rec2,por14,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,2): - w(rec2) + l(rec2,por14,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,3): - w(rec2) + l(rec2,por14,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,4): - w(rec2) + l(rec2,por14,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,5): - w(rec2) + l(rec2,por14,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,6): - w(rec2) + l(rec2,por14,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,7): - w(rec2) + l(rec2,por14,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por14,8): - w(rec2) + l(rec2,por14,8)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,1): - w(rec2) + l(rec2,por15,1)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,2): - w(rec2) + l(rec2,por15,2)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,3): - w(rec2) + l(rec2,por15,3)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,4): - w(rec2) + l(rec2,por15,4)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,5): - w(rec2) + l(rec2,por15,5)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,6): - w(rec2) + l(rec2,por15,6)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,7): - w(rec2) + l(rec2,por15,7)
 <= 1
 maxCoverageDueToRegionWidth(rec2,por15,8): - w(rec2) + l(rec2,por15,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,1): - w(rec3) + l(rec3,por1,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,2): - w(rec3) + l(rec3,por1,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,3): - w(rec3) + l(rec3,por1,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,4): - w(rec3) + l(rec3,por1,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,5): - w(rec3) + l(rec3,por1,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,6): - w(rec3) + l(rec3,por1,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,7): - w(rec3) + l(rec3,por1,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por1,8): - w(rec3) + l(rec3,por1,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,1): - w(rec3) + l(rec3,por2,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,2): - w(rec3) + l(rec3,por2,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,3): - w(rec3) + l(rec3,por2,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,4): - w(rec3) + l(rec3,por2,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,5): - w(rec3) + l(rec3,por2,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,6): - w(rec3) + l(rec3,por2,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,7): - w(rec3) + l(rec3,por2,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por2,8): - w(rec3) + l(rec3,por2,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,1): - w(rec3) + l(rec3,por3,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,2): - w(rec3) + l(rec3,por3,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,3): - w(rec3) + l(rec3,por3,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,4): - w(rec3) + l(rec3,por3,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,5): - w(rec3) + l(rec3,por3,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,6): - w(rec3) + l(rec3,por3,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,7): - w(rec3) + l(rec3,por3,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por3,8): - w(rec3) + l(rec3,por3,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,1): - w(rec3) + l(rec3,por4,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,2): - w(rec3) + l(rec3,por4,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,3): - w(rec3) + l(rec3,por4,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,4): - w(rec3) + l(rec3,por4,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,5): - w(rec3) + l(rec3,por4,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,6): - w(rec3) + l(rec3,por4,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,7): - w(rec3) + l(rec3,por4,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por4,8): - w(rec3) + l(rec3,por4,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,1): - w(rec3) + l(rec3,por5,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,2): - w(rec3) + l(rec3,por5,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,3): - w(rec3) + l(rec3,por5,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,4): - w(rec3) + l(rec3,por5,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,5): - w(rec3) + l(rec3,por5,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,6): - w(rec3) + l(rec3,por5,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,7): - w(rec3) + l(rec3,por5,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por5,8): - w(rec3) + l(rec3,por5,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,1): - w(rec3) + l(rec3,por6,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,2): - w(rec3) + l(rec3,por6,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,3): - w(rec3) + l(rec3,por6,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,4): - w(rec3) + l(rec3,por6,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,5): - w(rec3) + l(rec3,por6,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,6): - w(rec3) + l(rec3,por6,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,7): - w(rec3) + l(rec3,por6,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por6,8): - w(rec3) + l(rec3,por6,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,1): - w(rec3) + l(rec3,por7,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,2): - w(rec3) + l(rec3,por7,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,3): - w(rec3) + l(rec3,por7,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,4): - w(rec3) + l(rec3,por7,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,5): - w(rec3) + l(rec3,por7,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,6): - w(rec3) + l(rec3,por7,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,7): - w(rec3) + l(rec3,por7,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por7,8): - w(rec3) + l(rec3,por7,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,1): - w(rec3) + l(rec3,por8,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,2): - w(rec3) + l(rec3,por8,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,3): - w(rec3) + l(rec3,por8,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,4): - w(rec3) + l(rec3,por8,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,5): - w(rec3) + l(rec3,por8,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,6): - w(rec3) + l(rec3,por8,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,7): - w(rec3) + l(rec3,por8,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por8,8): - w(rec3) + l(rec3,por8,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,1): - w(rec3) + l(rec3,por9,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,2): - w(rec3) + l(rec3,por9,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,3): - w(rec3) + l(rec3,por9,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,4): - w(rec3) + l(rec3,por9,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,5): - w(rec3) + l(rec3,por9,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,6): - w(rec3) + l(rec3,por9,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,7): - w(rec3) + l(rec3,por9,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por9,8): - w(rec3) + l(rec3,por9,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,1): - w(rec3) + l(rec3,por10,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,2): - w(rec3) + l(rec3,por10,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,3): - w(rec3) + l(rec3,por10,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,4): - w(rec3) + l(rec3,por10,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,5): - w(rec3) + l(rec3,por10,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,6): - w(rec3) + l(rec3,por10,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,7): - w(rec3) + l(rec3,por10,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por10,8): - w(rec3) + l(rec3,por10,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,1): - w(rec3) + l(rec3,por11,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,2): - w(rec3) + l(rec3,por11,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,3): - w(rec3) + l(rec3,por11,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,4): - w(rec3) + l(rec3,por11,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,5): - w(rec3) + l(rec3,por11,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,6): - w(rec3) + l(rec3,por11,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,7): - w(rec3) + l(rec3,por11,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por11,8): - w(rec3) + l(rec3,por11,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,1): - w(rec3) + l(rec3,por12,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,2): - w(rec3) + l(rec3,por12,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,3): - w(rec3) + l(rec3,por12,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,4): - w(rec3) + l(rec3,por12,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,5): - w(rec3) + l(rec3,por12,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,6): - w(rec3) + l(rec3,por12,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,7): - w(rec3) + l(rec3,por12,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por12,8): - w(rec3) + l(rec3,por12,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,1): - w(rec3) + l(rec3,por13,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,2): - w(rec3) + l(rec3,por13,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,3): - w(rec3) + l(rec3,por13,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,4): - w(rec3) + l(rec3,por13,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,5): - w(rec3) + l(rec3,por13,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,6): - w(rec3) + l(rec3,por13,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,7): - w(rec3) + l(rec3,por13,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por13,8): - w(rec3) + l(rec3,por13,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,1): - w(rec3) + l(rec3,por14,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,2): - w(rec3) + l(rec3,por14,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,3): - w(rec3) + l(rec3,por14,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,4): - w(rec3) + l(rec3,por14,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,5): - w(rec3) + l(rec3,por14,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,6): - w(rec3) + l(rec3,por14,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,7): - w(rec3) + l(rec3,por14,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por14,8): - w(rec3) + l(rec3,por14,8)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,1): - w(rec3) + l(rec3,por15,1)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,2): - w(rec3) + l(rec3,por15,2)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,3): - w(rec3) + l(rec3,por15,3)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,4): - w(rec3) + l(rec3,por15,4)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,5): - w(rec3) + l(rec3,por15,5)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,6): - w(rec3) + l(rec3,por15,6)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,7): - w(rec3) + l(rec3,por15,7)
 <= 1
 maxCoverageDueToRegionWidth(rec3,por15,8): - w(rec3) + l(rec3,por15,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,1): - w(rec4) + l(rec4,por1,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,2): - w(rec4) + l(rec4,por1,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,3): - w(rec4) + l(rec4,por1,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,4): - w(rec4) + l(rec4,por1,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,5): - w(rec4) + l(rec4,por1,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,6): - w(rec4) + l(rec4,por1,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,7): - w(rec4) + l(rec4,por1,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por1,8): - w(rec4) + l(rec4,por1,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,1): - w(rec4) + l(rec4,por2,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,2): - w(rec4) + l(rec4,por2,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,3): - w(rec4) + l(rec4,por2,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,4): - w(rec4) + l(rec4,por2,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,5): - w(rec4) + l(rec4,por2,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,6): - w(rec4) + l(rec4,por2,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,7): - w(rec4) + l(rec4,por2,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por2,8): - w(rec4) + l(rec4,por2,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,1): - w(rec4) + l(rec4,por3,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,2): - w(rec4) + l(rec4,por3,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,3): - w(rec4) + l(rec4,por3,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,4): - w(rec4) + l(rec4,por3,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,5): - w(rec4) + l(rec4,por3,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,6): - w(rec4) + l(rec4,por3,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,7): - w(rec4) + l(rec4,por3,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por3,8): - w(rec4) + l(rec4,por3,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,1): - w(rec4) + l(rec4,por4,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,2): - w(rec4) + l(rec4,por4,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,3): - w(rec4) + l(rec4,por4,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,4): - w(rec4) + l(rec4,por4,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,5): - w(rec4) + l(rec4,por4,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,6): - w(rec4) + l(rec4,por4,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,7): - w(rec4) + l(rec4,por4,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por4,8): - w(rec4) + l(rec4,por4,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,1): - w(rec4) + l(rec4,por5,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,2): - w(rec4) + l(rec4,por5,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,3): - w(rec4) + l(rec4,por5,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,4): - w(rec4) + l(rec4,por5,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,5): - w(rec4) + l(rec4,por5,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,6): - w(rec4) + l(rec4,por5,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,7): - w(rec4) + l(rec4,por5,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por5,8): - w(rec4) + l(rec4,por5,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,1): - w(rec4) + l(rec4,por6,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,2): - w(rec4) + l(rec4,por6,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,3): - w(rec4) + l(rec4,por6,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,4): - w(rec4) + l(rec4,por6,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,5): - w(rec4) + l(rec4,por6,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,6): - w(rec4) + l(rec4,por6,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,7): - w(rec4) + l(rec4,por6,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por6,8): - w(rec4) + l(rec4,por6,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,1): - w(rec4) + l(rec4,por7,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,2): - w(rec4) + l(rec4,por7,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,3): - w(rec4) + l(rec4,por7,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,4): - w(rec4) + l(rec4,por7,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,5): - w(rec4) + l(rec4,por7,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,6): - w(rec4) + l(rec4,por7,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,7): - w(rec4) + l(rec4,por7,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por7,8): - w(rec4) + l(rec4,por7,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,1): - w(rec4) + l(rec4,por8,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,2): - w(rec4) + l(rec4,por8,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,3): - w(rec4) + l(rec4,por8,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,4): - w(rec4) + l(rec4,por8,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,5): - w(rec4) + l(rec4,por8,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,6): - w(rec4) + l(rec4,por8,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,7): - w(rec4) + l(rec4,por8,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por8,8): - w(rec4) + l(rec4,por8,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,1): - w(rec4) + l(rec4,por9,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,2): - w(rec4) + l(rec4,por9,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,3): - w(rec4) + l(rec4,por9,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,4): - w(rec4) + l(rec4,por9,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,5): - w(rec4) + l(rec4,por9,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,6): - w(rec4) + l(rec4,por9,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,7): - w(rec4) + l(rec4,por9,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por9,8): - w(rec4) + l(rec4,por9,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,1): - w(rec4) + l(rec4,por10,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,2): - w(rec4) + l(rec4,por10,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,3): - w(rec4) + l(rec4,por10,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,4): - w(rec4) + l(rec4,por10,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,5): - w(rec4) + l(rec4,por10,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,6): - w(rec4) + l(rec4,por10,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,7): - w(rec4) + l(rec4,por10,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por10,8): - w(rec4) + l(rec4,por10,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,1): - w(rec4) + l(rec4,por11,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,2): - w(rec4) + l(rec4,por11,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,3): - w(rec4) + l(rec4,por11,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,4): - w(rec4) + l(rec4,por11,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,5): - w(rec4) + l(rec4,por11,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,6): - w(rec4) + l(rec4,por11,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,7): - w(rec4) + l(rec4,por11,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por11,8): - w(rec4) + l(rec4,por11,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,1): - w(rec4) + l(rec4,por12,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,2): - w(rec4) + l(rec4,por12,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,3): - w(rec4) + l(rec4,por12,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,4): - w(rec4) + l(rec4,por12,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,5): - w(rec4) + l(rec4,por12,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,6): - w(rec4) + l(rec4,por12,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,7): - w(rec4) + l(rec4,por12,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por12,8): - w(rec4) + l(rec4,por12,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,1): - w(rec4) + l(rec4,por13,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,2): - w(rec4) + l(rec4,por13,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,3): - w(rec4) + l(rec4,por13,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,4): - w(rec4) + l(rec4,por13,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,5): - w(rec4) + l(rec4,por13,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,6): - w(rec4) + l(rec4,por13,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,7): - w(rec4) + l(rec4,por13,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por13,8): - w(rec4) + l(rec4,por13,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,1): - w(rec4) + l(rec4,por14,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,2): - w(rec4) + l(rec4,por14,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,3): - w(rec4) + l(rec4,por14,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,4): - w(rec4) + l(rec4,por14,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,5): - w(rec4) + l(rec4,por14,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,6): - w(rec4) + l(rec4,por14,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,7): - w(rec4) + l(rec4,por14,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por14,8): - w(rec4) + l(rec4,por14,8)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,1): - w(rec4) + l(rec4,por15,1)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,2): - w(rec4) + l(rec4,por15,2)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,3): - w(rec4) + l(rec4,por15,3)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,4): - w(rec4) + l(rec4,por15,4)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,5): - w(rec4) + l(rec4,por15,5)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,6): - w(rec4) + l(rec4,por15,6)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,7): - w(rec4) + l(rec4,por15,7)
 <= 1
 maxCoverageDueToRegionWidth(rec4,por15,8): - w(rec4) + l(rec4,por15,8)
 <= 1
 maxCoverageDueToPortionWidth(rec1,por1,1): + l(rec1,por1,1) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,2): + l(rec1,por1,2) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,3): + l(rec1,por1,3) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,4): + l(rec1,por1,4) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,5): + l(rec1,por1,5) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,6): + l(rec1,por1,6) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,7): + l(rec1,por1,7) <= 4
 maxCoverageDueToPortionWidth(rec1,por1,8): + l(rec1,por1,8) <= 4
 maxCoverageDueToPortionWidth(rec1,por2,1): + l(rec1,por2,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,2): + l(rec1,por2,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,3): + l(rec1,por2,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,4): + l(rec1,por2,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,5): + l(rec1,por2,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,6): + l(rec1,por2,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,7): + l(rec1,por2,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por2,8): + l(rec1,por2,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por3,1): + l(rec1,por3,1) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,2): + l(rec1,por3,2) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,3): + l(rec1,por3,3) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,4): + l(rec1,por3,4) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,5): + l(rec1,por3,5) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,6): + l(rec1,por3,6) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,7): + l(rec1,por3,7) <= 10
 maxCoverageDueToPortionWidth(rec1,por3,8): + l(rec1,por3,8) <= 10
 maxCoverageDueToPortionWidth(rec1,por4,1): + l(rec1,por4,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,2): + l(rec1,por4,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,3): + l(rec1,por4,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,4): + l(rec1,por4,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,5): + l(rec1,por4,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,6): + l(rec1,por4,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,7): + l(rec1,por4,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por4,8): + l(rec1,por4,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por5,1): + l(rec1,por5,1) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,2): + l(rec1,por5,2) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,3): + l(rec1,por5,3) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,4): + l(rec1,por5,4) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,5): + l(rec1,por5,5) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,6): + l(rec1,por5,6) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,7): + l(rec1,por5,7) <= 2
 maxCoverageDueToPortionWidth(rec1,por5,8): + l(rec1,por5,8) <= 2
 maxCoverageDueToPortionWidth(rec1,por6,1): + l(rec1,por6,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,2): + l(rec1,por6,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,3): + l(rec1,por6,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,4): + l(rec1,por6,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,5): + l(rec1,por6,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,6): + l(rec1,por6,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,7): + l(rec1,por6,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por6,8): + l(rec1,por6,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por7,1): + l(rec1,por7,1) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,2): + l(rec1,por7,2) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,3): + l(rec1,por7,3) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,4): + l(rec1,por7,4) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,5): + l(rec1,por7,5) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,6): + l(rec1,por7,6) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,7): + l(rec1,por7,7) <= 8
 maxCoverageDueToPortionWidth(rec1,por7,8): + l(rec1,por7,8) <= 8
 maxCoverageDueToPortionWidth(rec1,por8,1): + l(rec1,por8,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,2): + l(rec1,por8,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,3): + l(rec1,por8,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,4): + l(rec1,por8,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,5): + l(rec1,por8,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,6): + l(rec1,por8,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,7): + l(rec1,por8,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por8,8): + l(rec1,por8,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por9,1): + l(rec1,por9,1) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,2): + l(rec1,por9,2) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,3): + l(rec1,por9,3) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,4): + l(rec1,por9,4) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,5): + l(rec1,por9,5) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,6): + l(rec1,por9,6) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,7): + l(rec1,por9,7) <= 12
 maxCoverageDueToPortionWidth(rec1,por9,8): + l(rec1,por9,8) <= 12
 maxCoverageDueToPortionWidth(rec1,por10,1): + l(rec1,por10,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,2): + l(rec1,por10,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,3): + l(rec1,por10,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,4): + l(rec1,por10,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,5): + l(rec1,por10,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,6): + l(rec1,por10,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,7): + l(rec1,por10,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por10,8): + l(rec1,por10,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por11,1): + l(rec1,por11,1) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,2): + l(rec1,por11,2) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,3): + l(rec1,por11,3) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,4): + l(rec1,por11,4) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,5): + l(rec1,por11,5) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,6): + l(rec1,por11,6) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,7): + l(rec1,por11,7) <= 10
 maxCoverageDueToPortionWidth(rec1,por11,8): + l(rec1,por11,8) <= 10
 maxCoverageDueToPortionWidth(rec1,por12,1): + l(rec1,por12,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,2): + l(rec1,por12,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,3): + l(rec1,por12,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,4): + l(rec1,por12,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,5): + l(rec1,por12,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,6): + l(rec1,por12,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,7): + l(rec1,por12,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por12,8): + l(rec1,por12,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por13,1): + l(rec1,por13,1) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,2): + l(rec1,por13,2) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,3): + l(rec1,por13,3) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,4): + l(rec1,por13,4) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,5): + l(rec1,por13,5) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,6): + l(rec1,por13,6) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,7): + l(rec1,por13,7) <= 4
 maxCoverageDueToPortionWidth(rec1,por13,8): + l(rec1,por13,8) <= 4
 maxCoverageDueToPortionWidth(rec1,por14,1): + l(rec1,por14,1) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,2): + l(rec1,por14,2) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,3): + l(rec1,por14,3) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,4): + l(rec1,por14,4) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,5): + l(rec1,por14,5) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,6): + l(rec1,por14,6) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,7): + l(rec1,por14,7) <= 1
 maxCoverageDueToPortionWidth(rec1,por14,8): + l(rec1,por14,8) <= 1
 maxCoverageDueToPortionWidth(rec1,por15,1): + l(rec1,por15,1) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,2): + l(rec1,por15,2) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,3): + l(rec1,por15,3) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,4): + l(rec1,por15,4) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,5): + l(rec1,por15,5) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,6): + l(rec1,por15,6) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,7): + l(rec1,por15,7) <= 4
 maxCoverageDueToPortionWidth(rec1,por15,8): + l(rec1,por15,8) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,1): + l(rec2,por1,1) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,2): + l(rec2,por1,2) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,3): + l(rec2,por1,3) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,4): + l(rec2,por1,4) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,5): + l(rec2,por1,5) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,6): + l(rec2,por1,6) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,7): + l(rec2,por1,7) <= 4
 maxCoverageDueToPortionWidth(rec2,por1,8): + l(rec2,por1,8) <= 4
 maxCoverageDueToPortionWidth(rec2,por2,1): + l(rec2,por2,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,2): + l(rec2,por2,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,3): + l(rec2,por2,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,4): + l(rec2,por2,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,5): + l(rec2,por2,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,6): + l(rec2,por2,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,7): + l(rec2,por2,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por2,8): + l(rec2,por2,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por3,1): + l(rec2,por3,1) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,2): + l(rec2,por3,2) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,3): + l(rec2,por3,3) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,4): + l(rec2,por3,4) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,5): + l(rec2,por3,5) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,6): + l(rec2,por3,6) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,7): + l(rec2,por3,7) <= 10
 maxCoverageDueToPortionWidth(rec2,por3,8): + l(rec2,por3,8) <= 10
 maxCoverageDueToPortionWidth(rec2,por4,1): + l(rec2,por4,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,2): + l(rec2,por4,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,3): + l(rec2,por4,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,4): + l(rec2,por4,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,5): + l(rec2,por4,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,6): + l(rec2,por4,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,7): + l(rec2,por4,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por4,8): + l(rec2,por4,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por5,1): + l(rec2,por5,1) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,2): + l(rec2,por5,2) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,3): + l(rec2,por5,3) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,4): + l(rec2,por5,4) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,5): + l(rec2,por5,5) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,6): + l(rec2,por5,6) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,7): + l(rec2,por5,7) <= 2
 maxCoverageDueToPortionWidth(rec2,por5,8): + l(rec2,por5,8) <= 2
 maxCoverageDueToPortionWidth(rec2,por6,1): + l(rec2,por6,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,2): + l(rec2,por6,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,3): + l(rec2,por6,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,4): + l(rec2,por6,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,5): + l(rec2,por6,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,6): + l(rec2,por6,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,7): + l(rec2,por6,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por6,8): + l(rec2,por6,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por7,1): + l(rec2,por7,1) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,2): + l(rec2,por7,2) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,3): + l(rec2,por7,3) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,4): + l(rec2,por7,4) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,5): + l(rec2,por7,5) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,6): + l(rec2,por7,6) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,7): + l(rec2,por7,7) <= 8
 maxCoverageDueToPortionWidth(rec2,por7,8): + l(rec2,por7,8) <= 8
 maxCoverageDueToPortionWidth(rec2,por8,1): + l(rec2,por8,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,2): + l(rec2,por8,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,3): + l(rec2,por8,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,4): + l(rec2,por8,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,5): + l(rec2,por8,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,6): + l(rec2,por8,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,7): + l(rec2,por8,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por8,8): + l(rec2,por8,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por9,1): + l(rec2,por9,1) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,2): + l(rec2,por9,2) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,3): + l(rec2,por9,3) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,4): + l(rec2,por9,4) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,5): + l(rec2,por9,5) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,6): + l(rec2,por9,6) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,7): + l(rec2,por9,7) <= 12
 maxCoverageDueToPortionWidth(rec2,por9,8): + l(rec2,por9,8) <= 12
 maxCoverageDueToPortionWidth(rec2,por10,1): + l(rec2,por10,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,2): + l(rec2,por10,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,3): + l(rec2,por10,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,4): + l(rec2,por10,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,5): + l(rec2,por10,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,6): + l(rec2,por10,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,7): + l(rec2,por10,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por10,8): + l(rec2,por10,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por11,1): + l(rec2,por11,1) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,2): + l(rec2,por11,2) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,3): + l(rec2,por11,3) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,4): + l(rec2,por11,4) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,5): + l(rec2,por11,5) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,6): + l(rec2,por11,6) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,7): + l(rec2,por11,7) <= 10
 maxCoverageDueToPortionWidth(rec2,por11,8): + l(rec2,por11,8) <= 10
 maxCoverageDueToPortionWidth(rec2,por12,1): + l(rec2,por12,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,2): + l(rec2,por12,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,3): + l(rec2,por12,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,4): + l(rec2,por12,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,5): + l(rec2,por12,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,6): + l(rec2,por12,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,7): + l(rec2,por12,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por12,8): + l(rec2,por12,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por13,1): + l(rec2,por13,1) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,2): + l(rec2,por13,2) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,3): + l(rec2,por13,3) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,4): + l(rec2,por13,4) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,5): + l(rec2,por13,5) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,6): + l(rec2,por13,6) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,7): + l(rec2,por13,7) <= 4
 maxCoverageDueToPortionWidth(rec2,por13,8): + l(rec2,por13,8) <= 4
 maxCoverageDueToPortionWidth(rec2,por14,1): + l(rec2,por14,1) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,2): + l(rec2,por14,2) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,3): + l(rec2,por14,3) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,4): + l(rec2,por14,4) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,5): + l(rec2,por14,5) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,6): + l(rec2,por14,6) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,7): + l(rec2,por14,7) <= 1
 maxCoverageDueToPortionWidth(rec2,por14,8): + l(rec2,por14,8) <= 1
 maxCoverageDueToPortionWidth(rec2,por15,1): + l(rec2,por15,1) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,2): + l(rec2,por15,2) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,3): + l(rec2,por15,3) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,4): + l(rec2,por15,4) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,5): + l(rec2,por15,5) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,6): + l(rec2,por15,6) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,7): + l(rec2,por15,7) <= 4
 maxCoverageDueToPortionWidth(rec2,por15,8): + l(rec2,por15,8) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,1): + l(rec3,por1,1) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,2): + l(rec3,por1,2) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,3): + l(rec3,por1,3) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,4): + l(rec3,por1,4) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,5): + l(rec3,por1,5) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,6): + l(rec3,por1,6) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,7): + l(rec3,por1,7) <= 4
 maxCoverageDueToPortionWidth(rec3,por1,8): + l(rec3,por1,8) <= 4
 maxCoverageDueToPortionWidth(rec3,por2,1): + l(rec3,por2,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,2): + l(rec3,por2,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,3): + l(rec3,por2,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,4): + l(rec3,por2,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,5): + l(rec3,por2,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,6): + l(rec3,por2,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,7): + l(rec3,por2,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por2,8): + l(rec3,por2,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por3,1): + l(rec3,por3,1) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,2): + l(rec3,por3,2) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,3): + l(rec3,por3,3) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,4): + l(rec3,por3,4) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,5): + l(rec3,por3,5) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,6): + l(rec3,por3,6) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,7): + l(rec3,por3,7) <= 10
 maxCoverageDueToPortionWidth(rec3,por3,8): + l(rec3,por3,8) <= 10
 maxCoverageDueToPortionWidth(rec3,por4,1): + l(rec3,por4,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,2): + l(rec3,por4,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,3): + l(rec3,por4,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,4): + l(rec3,por4,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,5): + l(rec3,por4,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,6): + l(rec3,por4,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,7): + l(rec3,por4,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por4,8): + l(rec3,por4,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por5,1): + l(rec3,por5,1) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,2): + l(rec3,por5,2) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,3): + l(rec3,por5,3) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,4): + l(rec3,por5,4) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,5): + l(rec3,por5,5) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,6): + l(rec3,por5,6) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,7): + l(rec3,por5,7) <= 2
 maxCoverageDueToPortionWidth(rec3,por5,8): + l(rec3,por5,8) <= 2
 maxCoverageDueToPortionWidth(rec3,por6,1): + l(rec3,por6,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,2): + l(rec3,por6,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,3): + l(rec3,por6,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,4): + l(rec3,por6,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,5): + l(rec3,por6,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,6): + l(rec3,por6,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,7): + l(rec3,por6,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por6,8): + l(rec3,por6,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por7,1): + l(rec3,por7,1) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,2): + l(rec3,por7,2) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,3): + l(rec3,por7,3) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,4): + l(rec3,por7,4) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,5): + l(rec3,por7,5) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,6): + l(rec3,por7,6) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,7): + l(rec3,por7,7) <= 8
 maxCoverageDueToPortionWidth(rec3,por7,8): + l(rec3,por7,8) <= 8
 maxCoverageDueToPortionWidth(rec3,por8,1): + l(rec3,por8,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,2): + l(rec3,por8,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,3): + l(rec3,por8,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,4): + l(rec3,por8,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,5): + l(rec3,por8,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,6): + l(rec3,por8,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,7): + l(rec3,por8,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por8,8): + l(rec3,por8,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por9,1): + l(rec3,por9,1) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,2): + l(rec3,por9,2) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,3): + l(rec3,por9,3) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,4): + l(rec3,por9,4) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,5): + l(rec3,por9,5) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,6): + l(rec3,por9,6) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,7): + l(rec3,por9,7) <= 12
 maxCoverageDueToPortionWidth(rec3,por9,8): + l(rec3,por9,8) <= 12
 maxCoverageDueToPortionWidth(rec3,por10,1): + l(rec3,por10,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,2): + l(rec3,por10,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,3): + l(rec3,por10,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,4): + l(rec3,por10,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,5): + l(rec3,por10,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,6): + l(rec3,por10,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,7): + l(rec3,por10,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por10,8): + l(rec3,por10,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por11,1): + l(rec3,por11,1) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,2): + l(rec3,por11,2) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,3): + l(rec3,por11,3) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,4): + l(rec3,por11,4) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,5): + l(rec3,por11,5) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,6): + l(rec3,por11,6) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,7): + l(rec3,por11,7) <= 10
 maxCoverageDueToPortionWidth(rec3,por11,8): + l(rec3,por11,8) <= 10
 maxCoverageDueToPortionWidth(rec3,por12,1): + l(rec3,por12,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,2): + l(rec3,por12,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,3): + l(rec3,por12,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,4): + l(rec3,por12,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,5): + l(rec3,por12,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,6): + l(rec3,por12,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,7): + l(rec3,por12,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por12,8): + l(rec3,por12,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por13,1): + l(rec3,por13,1) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,2): + l(rec3,por13,2) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,3): + l(rec3,por13,3) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,4): + l(rec3,por13,4) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,5): + l(rec3,por13,5) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,6): + l(rec3,por13,6) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,7): + l(rec3,por13,7) <= 4
 maxCoverageDueToPortionWidth(rec3,por13,8): + l(rec3,por13,8) <= 4
 maxCoverageDueToPortionWidth(rec3,por14,1): + l(rec3,por14,1) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,2): + l(rec3,por14,2) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,3): + l(rec3,por14,3) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,4): + l(rec3,por14,4) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,5): + l(rec3,por14,5) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,6): + l(rec3,por14,6) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,7): + l(rec3,por14,7) <= 1
 maxCoverageDueToPortionWidth(rec3,por14,8): + l(rec3,por14,8) <= 1
 maxCoverageDueToPortionWidth(rec3,por15,1): + l(rec3,por15,1) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,2): + l(rec3,por15,2) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,3): + l(rec3,por15,3) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,4): + l(rec3,por15,4) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,5): + l(rec3,por15,5) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,6): + l(rec3,por15,6) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,7): + l(rec3,por15,7) <= 4
 maxCoverageDueToPortionWidth(rec3,por15,8): + l(rec3,por15,8) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,1): + l(rec4,por1,1) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,2): + l(rec4,por1,2) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,3): + l(rec4,por1,3) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,4): + l(rec4,por1,4) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,5): + l(rec4,por1,5) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,6): + l(rec4,por1,6) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,7): + l(rec4,por1,7) <= 4
 maxCoverageDueToPortionWidth(rec4,por1,8): + l(rec4,por1,8) <= 4
 maxCoverageDueToPortionWidth(rec4,por2,1): + l(rec4,por2,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,2): + l(rec4,por2,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,3): + l(rec4,por2,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,4): + l(rec4,por2,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,5): + l(rec4,por2,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,6): + l(rec4,por2,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,7): + l(rec4,por2,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por2,8): + l(rec4,por2,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por3,1): + l(rec4,por3,1) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,2): + l(rec4,por3,2) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,3): + l(rec4,por3,3) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,4): + l(rec4,por3,4) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,5): + l(rec4,por3,5) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,6): + l(rec4,por3,6) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,7): + l(rec4,por3,7) <= 10
 maxCoverageDueToPortionWidth(rec4,por3,8): + l(rec4,por3,8) <= 10
 maxCoverageDueToPortionWidth(rec4,por4,1): + l(rec4,por4,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,2): + l(rec4,por4,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,3): + l(rec4,por4,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,4): + l(rec4,por4,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,5): + l(rec4,por4,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,6): + l(rec4,por4,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,7): + l(rec4,por4,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por4,8): + l(rec4,por4,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por5,1): + l(rec4,por5,1) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,2): + l(rec4,por5,2) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,3): + l(rec4,por5,3) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,4): + l(rec4,por5,4) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,5): + l(rec4,por5,5) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,6): + l(rec4,por5,6) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,7): + l(rec4,por5,7) <= 2
 maxCoverageDueToPortionWidth(rec4,por5,8): + l(rec4,por5,8) <= 2
 maxCoverageDueToPortionWidth(rec4,por6,1): + l(rec4,por6,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,2): + l(rec4,por6,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,3): + l(rec4,por6,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,4): + l(rec4,por6,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,5): + l(rec4,por6,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,6): + l(rec4,por6,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,7): + l(rec4,por6,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por6,8): + l(rec4,por6,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por7,1): + l(rec4,por7,1) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,2): + l(rec4,por7,2) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,3): + l(rec4,por7,3) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,4): + l(rec4,por7,4) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,5): + l(rec4,por7,5) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,6): + l(rec4,por7,6) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,7): + l(rec4,por7,7) <= 8
 maxCoverageDueToPortionWidth(rec4,por7,8): + l(rec4,por7,8) <= 8
 maxCoverageDueToPortionWidth(rec4,por8,1): + l(rec4,por8,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,2): + l(rec4,por8,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,3): + l(rec4,por8,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,4): + l(rec4,por8,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,5): + l(rec4,por8,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,6): + l(rec4,por8,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,7): + l(rec4,por8,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por8,8): + l(rec4,por8,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por9,1): + l(rec4,por9,1) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,2): + l(rec4,por9,2) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,3): + l(rec4,por9,3) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,4): + l(rec4,por9,4) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,5): + l(rec4,por9,5) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,6): + l(rec4,por9,6) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,7): + l(rec4,por9,7) <= 12
 maxCoverageDueToPortionWidth(rec4,por9,8): + l(rec4,por9,8) <= 12
 maxCoverageDueToPortionWidth(rec4,por10,1): + l(rec4,por10,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,2): + l(rec4,por10,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,3): + l(rec4,por10,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,4): + l(rec4,por10,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,5): + l(rec4,por10,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,6): + l(rec4,por10,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,7): + l(rec4,por10,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por10,8): + l(rec4,por10,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por11,1): + l(rec4,por11,1) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,2): + l(rec4,por11,2) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,3): + l(rec4,por11,3) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,4): + l(rec4,por11,4) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,5): + l(rec4,por11,5) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,6): + l(rec4,por11,6) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,7): + l(rec4,por11,7) <= 10
 maxCoverageDueToPortionWidth(rec4,por11,8): + l(rec4,por11,8) <= 10
 maxCoverageDueToPortionWidth(rec4,por12,1): + l(rec4,por12,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,2): + l(rec4,por12,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,3): + l(rec4,por12,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,4): + l(rec4,por12,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,5): + l(rec4,por12,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,6): + l(rec4,por12,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,7): + l(rec4,por12,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por12,8): + l(rec4,por12,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por13,1): + l(rec4,por13,1) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,2): + l(rec4,por13,2) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,3): + l(rec4,por13,3) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,4): + l(rec4,por13,4) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,5): + l(rec4,por13,5) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,6): + l(rec4,por13,6) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,7): + l(rec4,por13,7) <= 4
 maxCoverageDueToPortionWidth(rec4,por13,8): + l(rec4,por13,8) <= 4
 maxCoverageDueToPortionWidth(rec4,por14,1): + l(rec4,por14,1) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,2): + l(rec4,por14,2) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,3): + l(rec4,por14,3) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,4): + l(rec4,por14,4) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,5): + l(rec4,por14,5) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,6): + l(rec4,por14,6) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,7): + l(rec4,por14,7) <= 1
 maxCoverageDueToPortionWidth(rec4,por14,8): + l(rec4,por14,8) <= 1
 maxCoverageDueToPortionWidth(rec4,por15,1): + l(rec4,por15,1) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,2): + l(rec4,por15,2) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,3): + l(rec4,por15,3) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,4): + l(rec4,por15,4) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,5): + l(rec4,por15,5) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,6): + l(rec4,por15,6) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,7): + l(rec4,por15,7) <= 4
 maxCoverageDueToPortionWidth(rec4,por15,8): + l(rec4,por15,8) <= 4
 maxCoverageIntersectionLeft(rec1,por1,1): - x(rec1) - w(rec1)
 + l(rec1,por1,1) <= 1
 maxCoverageIntersectionLeft(rec1,por1,2): - x(rec1) - w(rec1)
 + l(rec1,por1,2) <= 1
 maxCoverageIntersectionLeft(rec1,por1,3): - x(rec1) - w(rec1)
 + l(rec1,por1,3) <= 1
 maxCoverageIntersectionLeft(rec1,por1,4): - x(rec1) - w(rec1)
 + l(rec1,por1,4) <= 1
 maxCoverageIntersectionLeft(rec1,por1,5): - x(rec1) - w(rec1)
 + l(rec1,por1,5) <= 1
 maxCoverageIntersectionLeft(rec1,por1,6): - x(rec1) - w(rec1)
 + l(rec1,por1,6) <= 1
 maxCoverageIntersectionLeft(rec1,por1,7): - x(rec1) - w(rec1)
 + l(rec1,por1,7) <= 1
 maxCoverageIntersectionLeft(rec1,por1,8): - x(rec1) - w(rec1)
 + l(rec1,por1,8) <= 1
 maxCoverageIntersectionLeft(rec1,por2,1): - x(rec1) - w(rec1)
 + l(rec1,por2,1) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,2): - x(rec1) - w(rec1)
 + l(rec1,por2,2) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,3): - x(rec1) - w(rec1)
 + l(rec1,por2,3) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,4): - x(rec1) - w(rec1)
 + l(rec1,por2,4) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,5): - x(rec1) - w(rec1)
 + l(rec1,por2,5) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,6): - x(rec1) - w(rec1)
 + l(rec1,por2,6) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,7): - x(rec1) - w(rec1)
 + l(rec1,por2,7) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por2,8): - x(rec1) - w(rec1)
 + l(rec1,por2,8) + 4 k1(rec1,por2) <= 1
 maxCoverageIntersectionLeft(rec1,por3,1): - x(rec1) - w(rec1)
 + l(rec1,por3,1) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,2): - x(rec1) - w(rec1)
 + l(rec1,por3,2) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,3): - x(rec1) - w(rec1)
 + l(rec1,por3,3) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,4): - x(rec1) - w(rec1)
 + l(rec1,por3,4) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,5): - x(rec1) - w(rec1)
 + l(rec1,por3,5) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,6): - x(rec1) - w(rec1)
 + l(rec1,por3,6) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,7): - x(rec1) - w(rec1)
 + l(rec1,por3,7) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por3,8): - x(rec1) - w(rec1)
 + l(rec1,por3,8) + 5 k1(rec1,por3) <= 1
 maxCoverageIntersectionLeft(rec1,por4,1): - x(rec1) - w(rec1)
 + l(rec1,por4,1) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,2): - x(rec1) - w(rec1)
 + l(rec1,por4,2) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,3): - x(rec1) - w(rec1)
 + l(rec1,por4,3) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,4): - x(rec1) - w(rec1)
 + l(rec1,por4,4) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,5): - x(rec1) - w(rec1)
 + l(rec1,por4,5) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,6): - x(rec1) - w(rec1)
 + l(rec1,por4,6) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,7): - x(rec1) - w(rec1)
 + l(rec1,por4,7) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por4,8): - x(rec1) - w(rec1)
 + l(rec1,por4,8) + 15 k1(rec1,por4) <= 1
 maxCoverageIntersectionLeft(rec1,por5,1): - x(rec1) - w(rec1)
 + l(rec1,por5,1) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,2): - x(rec1) - w(rec1)
 + l(rec1,por5,2) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,3): - x(rec1) - w(rec1)
 + l(rec1,por5,3) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,4): - x(rec1) - w(rec1)
 + l(rec1,por5,4) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,5): - x(rec1) - w(rec1)
 + l(rec1,por5,5) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,6): - x(rec1) - w(rec1)
 + l(rec1,por5,6) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,7): - x(rec1) - w(rec1)
 + l(rec1,por5,7) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por5,8): - x(rec1) - w(rec1)
 + l(rec1,por5,8) + 16 k1(rec1,por5) <= 1
 maxCoverageIntersectionLeft(rec1,por6,1): - x(rec1) - w(rec1)
 + l(rec1,por6,1) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,2): - x(rec1) - w(rec1)
 + l(rec1,por6,2) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,3): - x(rec1) - w(rec1)
 + l(rec1,por6,3) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,4): - x(rec1) - w(rec1)
 + l(rec1,por6,4) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,5): - x(rec1) - w(rec1)
 + l(rec1,por6,5) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,6): - x(rec1) - w(rec1)
 + l(rec1,por6,6) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,7): - x(rec1) - w(rec1)
 + l(rec1,por6,7) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por6,8): - x(rec1) - w(rec1)
 + l(rec1,por6,8) + 18 k1(rec1,por6) <= 1
 maxCoverageIntersectionLeft(rec1,por7,1): - x(rec1) - w(rec1)
 + l(rec1,por7,1) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,2): - x(rec1) - w(rec1)
 + l(rec1,por7,2) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,3): - x(rec1) - w(rec1)
 + l(rec1,por7,3) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,4): - x(rec1) - w(rec1)
 + l(rec1,por7,4) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,5): - x(rec1) - w(rec1)
 + l(rec1,por7,5) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,6): - x(rec1) - w(rec1)
 + l(rec1,por7,6) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,7): - x(rec1) - w(rec1)
 + l(rec1,por7,7) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por7,8): - x(rec1) - w(rec1)
 + l(rec1,por7,8) + 19 k1(rec1,por7) <= 1
 maxCoverageIntersectionLeft(rec1,por8,1): - x(rec1) - w(rec1)
 + l(rec1,por8,1) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,2): - x(rec1) - w(rec1)
 + l(rec1,por8,2) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,3): - x(rec1) - w(rec1)
 + l(rec1,por8,3) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,4): - x(rec1) - w(rec1)
 + l(rec1,por8,4) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,5): - x(rec1) - w(rec1)
 + l(rec1,por8,5) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,6): - x(rec1) - w(rec1)
 + l(rec1,por8,6) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,7): - x(rec1) - w(rec1)
 + l(rec1,por8,7) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por8,8): - x(rec1) - w(rec1)
 + l(rec1,por8,8) + 27 k1(rec1,por8) <= 1
 maxCoverageIntersectionLeft(rec1,por9,1): - x(rec1) - w(rec1)
 + l(rec1,por9,1) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,2): - x(rec1) - w(rec1)
 + l(rec1,por9,2) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,3): - x(rec1) - w(rec1)
 + l(rec1,por9,3) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,4): - x(rec1) - w(rec1)
 + l(rec1,por9,4) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,5): - x(rec1) - w(rec1)
 + l(rec1,por9,5) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,6): - x(rec1) - w(rec1)
 + l(rec1,por9,6) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,7): - x(rec1) - w(rec1)
 + l(rec1,por9,7) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por9,8): - x(rec1) - w(rec1)
 + l(rec1,por9,8) + 28 k1(rec1,por9) <= 1
 maxCoverageIntersectionLeft(rec1,por10,1): - x(rec1) - w(rec1)
 + l(rec1,por10,1) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,2): - x(rec1) - w(rec1)
 + l(rec1,por10,2) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,3): - x(rec1) - w(rec1)
 + l(rec1,por10,3) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,4): - x(rec1) - w(rec1)
 + l(rec1,por10,4) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,5): - x(rec1) - w(rec1)
 + l(rec1,por10,5) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,6): - x(rec1) - w(rec1)
 + l(rec1,por10,6) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,7): - x(rec1) - w(rec1)
 + l(rec1,por10,7) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por10,8): - x(rec1) - w(rec1)
 + l(rec1,por10,8) + 40 k1(rec1,por10) <= 1
 maxCoverageIntersectionLeft(rec1,por11,1): - x(rec1) - w(rec1)
 + l(rec1,por11,1) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,2): - x(rec1) - w(rec1)
 + l(rec1,por11,2) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,3): - x(rec1) - w(rec1)
 + l(rec1,por11,3) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,4): - x(rec1) - w(rec1)
 + l(rec1,por11,4) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,5): - x(rec1) - w(rec1)
 + l(rec1,por11,5) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,6): - x(rec1) - w(rec1)
 + l(rec1,por11,6) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,7): - x(rec1) - w(rec1)
 + l(rec1,por11,7) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por11,8): - x(rec1) - w(rec1)
 + l(rec1,por11,8) + 41 k1(rec1,por11) <= 1
 maxCoverageIntersectionLeft(rec1,por12,1): - x(rec1) - w(rec1)
 + l(rec1,por12,1) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,2): - x(rec1) - w(rec1)
 + l(rec1,por12,2) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,3): - x(rec1) - w(rec1)
 + l(rec1,por12,3) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,4): - x(rec1) - w(rec1)
 + l(rec1,por12,4) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,5): - x(rec1) - w(rec1)
 + l(rec1,por12,5) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,6): - x(rec1) - w(rec1)
 + l(rec1,por12,6) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,7): - x(rec1) - w(rec1)
 + l(rec1,por12,7) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por12,8): - x(rec1) - w(rec1)
 + l(rec1,por12,8) + 51 k1(rec1,por12) <= 1
 maxCoverageIntersectionLeft(rec1,por13,1): - x(rec1) - w(rec1)
 + l(rec1,por13,1) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,2): - x(rec1) - w(rec1)
 + l(rec1,por13,2) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,3): - x(rec1) - w(rec1)
 + l(rec1,por13,3) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,4): - x(rec1) - w(rec1)
 + l(rec1,por13,4) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,5): - x(rec1) - w(rec1)
 + l(rec1,por13,5) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,6): - x(rec1) - w(rec1)
 + l(rec1,por13,6) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,7): - x(rec1) - w(rec1)
 + l(rec1,por13,7) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por13,8): - x(rec1) - w(rec1)
 + l(rec1,por13,8) + 52 k1(rec1,por13) <= 1
 maxCoverageIntersectionLeft(rec1,por14,1): - x(rec1) - w(rec1)
 + l(rec1,por14,1) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,2): - x(rec1) - w(rec1)
 + l(rec1,por14,2) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,3): - x(rec1) - w(rec1)
 + l(rec1,por14,3) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,4): - x(rec1) - w(rec1)
 + l(rec1,por14,4) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,5): - x(rec1) - w(rec1)
 + l(rec1,por14,5) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,6): - x(rec1) - w(rec1)
 + l(rec1,por14,6) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,7): - x(rec1) - w(rec1)
 + l(rec1,por14,7) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por14,8): - x(rec1) - w(rec1)
 + l(rec1,por14,8) + 56 k1(rec1,por14) <= 1
 maxCoverageIntersectionLeft(rec1,por15,1): - x(rec1) - w(rec1)
 + l(rec1,por15,1) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,2): - x(rec1) - w(rec1)
 + l(rec1,por15,2) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,3): - x(rec1) - w(rec1)
 + l(rec1,por15,3) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,4): - x(rec1) - w(rec1)
 + l(rec1,por15,4) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,5): - x(rec1) - w(rec1)
 + l(rec1,por15,5) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,6): - x(rec1) - w(rec1)
 + l(rec1,por15,6) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,7): - x(rec1) - w(rec1)
 + l(rec1,por15,7) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec1,por15,8): - x(rec1) - w(rec1)
 + l(rec1,por15,8) + 57 k1(rec1,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por1,1): - x(rec2) - w(rec2)
 + l(rec2,por1,1) <= 1
 maxCoverageIntersectionLeft(rec2,por1,2): - x(rec2) - w(rec2)
 + l(rec2,por1,2) <= 1
 maxCoverageIntersectionLeft(rec2,por1,3): - x(rec2) - w(rec2)
 + l(rec2,por1,3) <= 1
 maxCoverageIntersectionLeft(rec2,por1,4): - x(rec2) - w(rec2)
 + l(rec2,por1,4) <= 1
 maxCoverageIntersectionLeft(rec2,por1,5): - x(rec2) - w(rec2)
 + l(rec2,por1,5) <= 1
 maxCoverageIntersectionLeft(rec2,por1,6): - x(rec2) - w(rec2)
 + l(rec2,por1,6) <= 1
 maxCoverageIntersectionLeft(rec2,por1,7): - x(rec2) - w(rec2)
 + l(rec2,por1,7) <= 1
 maxCoverageIntersectionLeft(rec2,por1,8): - x(rec2) - w(rec2)
 + l(rec2,por1,8) <= 1
 maxCoverageIntersectionLeft(rec2,por2,1): - x(rec2) - w(rec2)
 + l(rec2,por2,1) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,2): - x(rec2) - w(rec2)
 + l(rec2,por2,2) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,3): - x(rec2) - w(rec2)
 + l(rec2,por2,3) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,4): - x(rec2) - w(rec2)
 + l(rec2,por2,4) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,5): - x(rec2) - w(rec2)
 + l(rec2,por2,5) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,6): - x(rec2) - w(rec2)
 + l(rec2,por2,6) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,7): - x(rec2) - w(rec2)
 + l(rec2,por2,7) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por2,8): - x(rec2) - w(rec2)
 + l(rec2,por2,8) + 4 k1(rec2,por2) <= 1
 maxCoverageIntersectionLeft(rec2,por3,1): - x(rec2) - w(rec2)
 + l(rec2,por3,1) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,2): - x(rec2) - w(rec2)
 + l(rec2,por3,2) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,3): - x(rec2) - w(rec2)
 + l(rec2,por3,3) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,4): - x(rec2) - w(rec2)
 + l(rec2,por3,4) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,5): - x(rec2) - w(rec2)
 + l(rec2,por3,5) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,6): - x(rec2) - w(rec2)
 + l(rec2,por3,6) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,7): - x(rec2) - w(rec2)
 + l(rec2,por3,7) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por3,8): - x(rec2) - w(rec2)
 + l(rec2,por3,8) + 5 k1(rec2,por3) <= 1
 maxCoverageIntersectionLeft(rec2,por4,1): - x(rec2) - w(rec2)
 + l(rec2,por4,1) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,2): - x(rec2) - w(rec2)
 + l(rec2,por4,2) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,3): - x(rec2) - w(rec2)
 + l(rec2,por4,3) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,4): - x(rec2) - w(rec2)
 + l(rec2,por4,4) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,5): - x(rec2) - w(rec2)
 + l(rec2,por4,5) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,6): - x(rec2) - w(rec2)
 + l(rec2,por4,6) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,7): - x(rec2) - w(rec2)
 + l(rec2,por4,7) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por4,8): - x(rec2) - w(rec2)
 + l(rec2,por4,8) + 15 k1(rec2,por4) <= 1
 maxCoverageIntersectionLeft(rec2,por5,1): - x(rec2) - w(rec2)
 + l(rec2,por5,1) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,2): - x(rec2) - w(rec2)
 + l(rec2,por5,2) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,3): - x(rec2) - w(rec2)
 + l(rec2,por5,3) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,4): - x(rec2) - w(rec2)
 + l(rec2,por5,4) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,5): - x(rec2) - w(rec2)
 + l(rec2,por5,5) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,6): - x(rec2) - w(rec2)
 + l(rec2,por5,6) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,7): - x(rec2) - w(rec2)
 + l(rec2,por5,7) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por5,8): - x(rec2) - w(rec2)
 + l(rec2,por5,8) + 16 k1(rec2,por5) <= 1
 maxCoverageIntersectionLeft(rec2,por6,1): - x(rec2) - w(rec2)
 + l(rec2,por6,1) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,2): - x(rec2) - w(rec2)
 + l(rec2,por6,2) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,3): - x(rec2) - w(rec2)
 + l(rec2,por6,3) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,4): - x(rec2) - w(rec2)
 + l(rec2,por6,4) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,5): - x(rec2) - w(rec2)
 + l(rec2,por6,5) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,6): - x(rec2) - w(rec2)
 + l(rec2,por6,6) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,7): - x(rec2) - w(rec2)
 + l(rec2,por6,7) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por6,8): - x(rec2) - w(rec2)
 + l(rec2,por6,8) + 18 k1(rec2,por6) <= 1
 maxCoverageIntersectionLeft(rec2,por7,1): - x(rec2) - w(rec2)
 + l(rec2,por7,1) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,2): - x(rec2) - w(rec2)
 + l(rec2,por7,2) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,3): - x(rec2) - w(rec2)
 + l(rec2,por7,3) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,4): - x(rec2) - w(rec2)
 + l(rec2,por7,4) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,5): - x(rec2) - w(rec2)
 + l(rec2,por7,5) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,6): - x(rec2) - w(rec2)
 + l(rec2,por7,6) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,7): - x(rec2) - w(rec2)
 + l(rec2,por7,7) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por7,8): - x(rec2) - w(rec2)
 + l(rec2,por7,8) + 19 k1(rec2,por7) <= 1
 maxCoverageIntersectionLeft(rec2,por8,1): - x(rec2) - w(rec2)
 + l(rec2,por8,1) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,2): - x(rec2) - w(rec2)
 + l(rec2,por8,2) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,3): - x(rec2) - w(rec2)
 + l(rec2,por8,3) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,4): - x(rec2) - w(rec2)
 + l(rec2,por8,4) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,5): - x(rec2) - w(rec2)
 + l(rec2,por8,5) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,6): - x(rec2) - w(rec2)
 + l(rec2,por8,6) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,7): - x(rec2) - w(rec2)
 + l(rec2,por8,7) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por8,8): - x(rec2) - w(rec2)
 + l(rec2,por8,8) + 27 k1(rec2,por8) <= 1
 maxCoverageIntersectionLeft(rec2,por9,1): - x(rec2) - w(rec2)
 + l(rec2,por9,1) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,2): - x(rec2) - w(rec2)
 + l(rec2,por9,2) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,3): - x(rec2) - w(rec2)
 + l(rec2,por9,3) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,4): - x(rec2) - w(rec2)
 + l(rec2,por9,4) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,5): - x(rec2) - w(rec2)
 + l(rec2,por9,5) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,6): - x(rec2) - w(rec2)
 + l(rec2,por9,6) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,7): - x(rec2) - w(rec2)
 + l(rec2,por9,7) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por9,8): - x(rec2) - w(rec2)
 + l(rec2,por9,8) + 28 k1(rec2,por9) <= 1
 maxCoverageIntersectionLeft(rec2,por10,1): - x(rec2) - w(rec2)
 + l(rec2,por10,1) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,2): - x(rec2) - w(rec2)
 + l(rec2,por10,2) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,3): - x(rec2) - w(rec2)
 + l(rec2,por10,3) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,4): - x(rec2) - w(rec2)
 + l(rec2,por10,4) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,5): - x(rec2) - w(rec2)
 + l(rec2,por10,5) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,6): - x(rec2) - w(rec2)
 + l(rec2,por10,6) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,7): - x(rec2) - w(rec2)
 + l(rec2,por10,7) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por10,8): - x(rec2) - w(rec2)
 + l(rec2,por10,8) + 40 k1(rec2,por10) <= 1
 maxCoverageIntersectionLeft(rec2,por11,1): - x(rec2) - w(rec2)
 + l(rec2,por11,1) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,2): - x(rec2) - w(rec2)
 + l(rec2,por11,2) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,3): - x(rec2) - w(rec2)
 + l(rec2,por11,3) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,4): - x(rec2) - w(rec2)
 + l(rec2,por11,4) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,5): - x(rec2) - w(rec2)
 + l(rec2,por11,5) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,6): - x(rec2) - w(rec2)
 + l(rec2,por11,6) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,7): - x(rec2) - w(rec2)
 + l(rec2,por11,7) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por11,8): - x(rec2) - w(rec2)
 + l(rec2,por11,8) + 41 k1(rec2,por11) <= 1
 maxCoverageIntersectionLeft(rec2,por12,1): - x(rec2) - w(rec2)
 + l(rec2,por12,1) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,2): - x(rec2) - w(rec2)
 + l(rec2,por12,2) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,3): - x(rec2) - w(rec2)
 + l(rec2,por12,3) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,4): - x(rec2) - w(rec2)
 + l(rec2,por12,4) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,5): - x(rec2) - w(rec2)
 + l(rec2,por12,5) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,6): - x(rec2) - w(rec2)
 + l(rec2,por12,6) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,7): - x(rec2) - w(rec2)
 + l(rec2,por12,7) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por12,8): - x(rec2) - w(rec2)
 + l(rec2,por12,8) + 51 k1(rec2,por12) <= 1
 maxCoverageIntersectionLeft(rec2,por13,1): - x(rec2) - w(rec2)
 + l(rec2,por13,1) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,2): - x(rec2) - w(rec2)
 + l(rec2,por13,2) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,3): - x(rec2) - w(rec2)
 + l(rec2,por13,3) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,4): - x(rec2) - w(rec2)
 + l(rec2,por13,4) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,5): - x(rec2) - w(rec2)
 + l(rec2,por13,5) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,6): - x(rec2) - w(rec2)
 + l(rec2,por13,6) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,7): - x(rec2) - w(rec2)
 + l(rec2,por13,7) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por13,8): - x(rec2) - w(rec2)
 + l(rec2,por13,8) + 52 k1(rec2,por13) <= 1
 maxCoverageIntersectionLeft(rec2,por14,1): - x(rec2) - w(rec2)
 + l(rec2,por14,1) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,2): - x(rec2) - w(rec2)
 + l(rec2,por14,2) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,3): - x(rec2) - w(rec2)
 + l(rec2,por14,3) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,4): - x(rec2) - w(rec2)
 + l(rec2,por14,4) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,5): - x(rec2) - w(rec2)
 + l(rec2,por14,5) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,6): - x(rec2) - w(rec2)
 + l(rec2,por14,6) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,7): - x(rec2) - w(rec2)
 + l(rec2,por14,7) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por14,8): - x(rec2) - w(rec2)
 + l(rec2,por14,8) + 56 k1(rec2,por14) <= 1
 maxCoverageIntersectionLeft(rec2,por15,1): - x(rec2) - w(rec2)
 + l(rec2,por15,1) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,2): - x(rec2) - w(rec2)
 + l(rec2,por15,2) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,3): - x(rec2) - w(rec2)
 + l(rec2,por15,3) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,4): - x(rec2) - w(rec2)
 + l(rec2,por15,4) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,5): - x(rec2) - w(rec2)
 + l(rec2,por15,5) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,6): - x(rec2) - w(rec2)
 + l(rec2,por15,6) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,7): - x(rec2) - w(rec2)
 + l(rec2,por15,7) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec2,por15,8): - x(rec2) - w(rec2)
 + l(rec2,por15,8) + 57 k1(rec2,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por1,1): - x(rec3) - w(rec3)
 + l(rec3,por1,1) <= 1
 maxCoverageIntersectionLeft(rec3,por1,2): - x(rec3) - w(rec3)
 + l(rec3,por1,2) <= 1
 maxCoverageIntersectionLeft(rec3,por1,3): - x(rec3) - w(rec3)
 + l(rec3,por1,3) <= 1
 maxCoverageIntersectionLeft(rec3,por1,4): - x(rec3) - w(rec3)
 + l(rec3,por1,4) <= 1
 maxCoverageIntersectionLeft(rec3,por1,5): - x(rec3) - w(rec3)
 + l(rec3,por1,5) <= 1
 maxCoverageIntersectionLeft(rec3,por1,6): - x(rec3) - w(rec3)
 + l(rec3,por1,6) <= 1
 maxCoverageIntersectionLeft(rec3,por1,7): - x(rec3) - w(rec3)
 + l(rec3,por1,7) <= 1
 maxCoverageIntersectionLeft(rec3,por1,8): - x(rec3) - w(rec3)
 + l(rec3,por1,8) <= 1
 maxCoverageIntersectionLeft(rec3,por2,1): - x(rec3) - w(rec3)
 + l(rec3,por2,1) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,2): - x(rec3) - w(rec3)
 + l(rec3,por2,2) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,3): - x(rec3) - w(rec3)
 + l(rec3,por2,3) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,4): - x(rec3) - w(rec3)
 + l(rec3,por2,4) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,5): - x(rec3) - w(rec3)
 + l(rec3,por2,5) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,6): - x(rec3) - w(rec3)
 + l(rec3,por2,6) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,7): - x(rec3) - w(rec3)
 + l(rec3,por2,7) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por2,8): - x(rec3) - w(rec3)
 + l(rec3,por2,8) + 4 k1(rec3,por2) <= 1
 maxCoverageIntersectionLeft(rec3,por3,1): - x(rec3) - w(rec3)
 + l(rec3,por3,1) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,2): - x(rec3) - w(rec3)
 + l(rec3,por3,2) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,3): - x(rec3) - w(rec3)
 + l(rec3,por3,3) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,4): - x(rec3) - w(rec3)
 + l(rec3,por3,4) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,5): - x(rec3) - w(rec3)
 + l(rec3,por3,5) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,6): - x(rec3) - w(rec3)
 + l(rec3,por3,6) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,7): - x(rec3) - w(rec3)
 + l(rec3,por3,7) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por3,8): - x(rec3) - w(rec3)
 + l(rec3,por3,8) + 5 k1(rec3,por3) <= 1
 maxCoverageIntersectionLeft(rec3,por4,1): - x(rec3) - w(rec3)
 + l(rec3,por4,1) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,2): - x(rec3) - w(rec3)
 + l(rec3,por4,2) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,3): - x(rec3) - w(rec3)
 + l(rec3,por4,3) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,4): - x(rec3) - w(rec3)
 + l(rec3,por4,4) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,5): - x(rec3) - w(rec3)
 + l(rec3,por4,5) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,6): - x(rec3) - w(rec3)
 + l(rec3,por4,6) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,7): - x(rec3) - w(rec3)
 + l(rec3,por4,7) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por4,8): - x(rec3) - w(rec3)
 + l(rec3,por4,8) + 15 k1(rec3,por4) <= 1
 maxCoverageIntersectionLeft(rec3,por5,1): - x(rec3) - w(rec3)
 + l(rec3,por5,1) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,2): - x(rec3) - w(rec3)
 + l(rec3,por5,2) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,3): - x(rec3) - w(rec3)
 + l(rec3,por5,3) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,4): - x(rec3) - w(rec3)
 + l(rec3,por5,4) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,5): - x(rec3) - w(rec3)
 + l(rec3,por5,5) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,6): - x(rec3) - w(rec3)
 + l(rec3,por5,6) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,7): - x(rec3) - w(rec3)
 + l(rec3,por5,7) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por5,8): - x(rec3) - w(rec3)
 + l(rec3,por5,8) + 16 k1(rec3,por5) <= 1
 maxCoverageIntersectionLeft(rec3,por6,1): - x(rec3) - w(rec3)
 + l(rec3,por6,1) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,2): - x(rec3) - w(rec3)
 + l(rec3,por6,2) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,3): - x(rec3) - w(rec3)
 + l(rec3,por6,3) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,4): - x(rec3) - w(rec3)
 + l(rec3,por6,4) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,5): - x(rec3) - w(rec3)
 + l(rec3,por6,5) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,6): - x(rec3) - w(rec3)
 + l(rec3,por6,6) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,7): - x(rec3) - w(rec3)
 + l(rec3,por6,7) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por6,8): - x(rec3) - w(rec3)
 + l(rec3,por6,8) + 18 k1(rec3,por6) <= 1
 maxCoverageIntersectionLeft(rec3,por7,1): - x(rec3) - w(rec3)
 + l(rec3,por7,1) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,2): - x(rec3) - w(rec3)
 + l(rec3,por7,2) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,3): - x(rec3) - w(rec3)
 + l(rec3,por7,3) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,4): - x(rec3) - w(rec3)
 + l(rec3,por7,4) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,5): - x(rec3) - w(rec3)
 + l(rec3,por7,5) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,6): - x(rec3) - w(rec3)
 + l(rec3,por7,6) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,7): - x(rec3) - w(rec3)
 + l(rec3,por7,7) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por7,8): - x(rec3) - w(rec3)
 + l(rec3,por7,8) + 19 k1(rec3,por7) <= 1
 maxCoverageIntersectionLeft(rec3,por8,1): - x(rec3) - w(rec3)
 + l(rec3,por8,1) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,2): - x(rec3) - w(rec3)
 + l(rec3,por8,2) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,3): - x(rec3) - w(rec3)
 + l(rec3,por8,3) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,4): - x(rec3) - w(rec3)
 + l(rec3,por8,4) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,5): - x(rec3) - w(rec3)
 + l(rec3,por8,5) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,6): - x(rec3) - w(rec3)
 + l(rec3,por8,6) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,7): - x(rec3) - w(rec3)
 + l(rec3,por8,7) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por8,8): - x(rec3) - w(rec3)
 + l(rec3,por8,8) + 27 k1(rec3,por8) <= 1
 maxCoverageIntersectionLeft(rec3,por9,1): - x(rec3) - w(rec3)
 + l(rec3,por9,1) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,2): - x(rec3) - w(rec3)
 + l(rec3,por9,2) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,3): - x(rec3) - w(rec3)
 + l(rec3,por9,3) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,4): - x(rec3) - w(rec3)
 + l(rec3,por9,4) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,5): - x(rec3) - w(rec3)
 + l(rec3,por9,5) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,6): - x(rec3) - w(rec3)
 + l(rec3,por9,6) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,7): - x(rec3) - w(rec3)
 + l(rec3,por9,7) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por9,8): - x(rec3) - w(rec3)
 + l(rec3,por9,8) + 28 k1(rec3,por9) <= 1
 maxCoverageIntersectionLeft(rec3,por10,1): - x(rec3) - w(rec3)
 + l(rec3,por10,1) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,2): - x(rec3) - w(rec3)
 + l(rec3,por10,2) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,3): - x(rec3) - w(rec3)
 + l(rec3,por10,3) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,4): - x(rec3) - w(rec3)
 + l(rec3,por10,4) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,5): - x(rec3) - w(rec3)
 + l(rec3,por10,5) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,6): - x(rec3) - w(rec3)
 + l(rec3,por10,6) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,7): - x(rec3) - w(rec3)
 + l(rec3,por10,7) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por10,8): - x(rec3) - w(rec3)
 + l(rec3,por10,8) + 40 k1(rec3,por10) <= 1
 maxCoverageIntersectionLeft(rec3,por11,1): - x(rec3) - w(rec3)
 + l(rec3,por11,1) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,2): - x(rec3) - w(rec3)
 + l(rec3,por11,2) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,3): - x(rec3) - w(rec3)
 + l(rec3,por11,3) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,4): - x(rec3) - w(rec3)
 + l(rec3,por11,4) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,5): - x(rec3) - w(rec3)
 + l(rec3,por11,5) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,6): - x(rec3) - w(rec3)
 + l(rec3,por11,6) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,7): - x(rec3) - w(rec3)
 + l(rec3,por11,7) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por11,8): - x(rec3) - w(rec3)
 + l(rec3,por11,8) + 41 k1(rec3,por11) <= 1
 maxCoverageIntersectionLeft(rec3,por12,1): - x(rec3) - w(rec3)
 + l(rec3,por12,1) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,2): - x(rec3) - w(rec3)
 + l(rec3,por12,2) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,3): - x(rec3) - w(rec3)
 + l(rec3,por12,3) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,4): - x(rec3) - w(rec3)
 + l(rec3,por12,4) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,5): - x(rec3) - w(rec3)
 + l(rec3,por12,5) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,6): - x(rec3) - w(rec3)
 + l(rec3,por12,6) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,7): - x(rec3) - w(rec3)
 + l(rec3,por12,7) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por12,8): - x(rec3) - w(rec3)
 + l(rec3,por12,8) + 51 k1(rec3,por12) <= 1
 maxCoverageIntersectionLeft(rec3,por13,1): - x(rec3) - w(rec3)
 + l(rec3,por13,1) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,2): - x(rec3) - w(rec3)
 + l(rec3,por13,2) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,3): - x(rec3) - w(rec3)
 + l(rec3,por13,3) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,4): - x(rec3) - w(rec3)
 + l(rec3,por13,4) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,5): - x(rec3) - w(rec3)
 + l(rec3,por13,5) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,6): - x(rec3) - w(rec3)
 + l(rec3,por13,6) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,7): - x(rec3) - w(rec3)
 + l(rec3,por13,7) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por13,8): - x(rec3) - w(rec3)
 + l(rec3,por13,8) + 52 k1(rec3,por13) <= 1
 maxCoverageIntersectionLeft(rec3,por14,1): - x(rec3) - w(rec3)
 + l(rec3,por14,1) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,2): - x(rec3) - w(rec3)
 + l(rec3,por14,2) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,3): - x(rec3) - w(rec3)
 + l(rec3,por14,3) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,4): - x(rec3) - w(rec3)
 + l(rec3,por14,4) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,5): - x(rec3) - w(rec3)
 + l(rec3,por14,5) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,6): - x(rec3) - w(rec3)
 + l(rec3,por14,6) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,7): - x(rec3) - w(rec3)
 + l(rec3,por14,7) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por14,8): - x(rec3) - w(rec3)
 + l(rec3,por14,8) + 56 k1(rec3,por14) <= 1
 maxCoverageIntersectionLeft(rec3,por15,1): - x(rec3) - w(rec3)
 + l(rec3,por15,1) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,2): - x(rec3) - w(rec3)
 + l(rec3,por15,2) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,3): - x(rec3) - w(rec3)
 + l(rec3,por15,3) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,4): - x(rec3) - w(rec3)
 + l(rec3,por15,4) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,5): - x(rec3) - w(rec3)
 + l(rec3,por15,5) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,6): - x(rec3) - w(rec3)
 + l(rec3,por15,6) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,7): - x(rec3) - w(rec3)
 + l(rec3,por15,7) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec3,por15,8): - x(rec3) - w(rec3)
 + l(rec3,por15,8) + 57 k1(rec3,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por1,1): - x(rec4) - w(rec4)
 + l(rec4,por1,1) <= 1
 maxCoverageIntersectionLeft(rec4,por1,2): - x(rec4) - w(rec4)
 + l(rec4,por1,2) <= 1
 maxCoverageIntersectionLeft(rec4,por1,3): - x(rec4) - w(rec4)
 + l(rec4,por1,3) <= 1
 maxCoverageIntersectionLeft(rec4,por1,4): - x(rec4) - w(rec4)
 + l(rec4,por1,4) <= 1
 maxCoverageIntersectionLeft(rec4,por1,5): - x(rec4) - w(rec4)
 + l(rec4,por1,5) <= 1
 maxCoverageIntersectionLeft(rec4,por1,6): - x(rec4) - w(rec4)
 + l(rec4,por1,6) <= 1
 maxCoverageIntersectionLeft(rec4,por1,7): - x(rec4) - w(rec4)
 + l(rec4,por1,7) <= 1
 maxCoverageIntersectionLeft(rec4,por1,8): - x(rec4) - w(rec4)
 + l(rec4,por1,8) <= 1
 maxCoverageIntersectionLeft(rec4,por2,1): - x(rec4) - w(rec4)
 + l(rec4,por2,1) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,2): - x(rec4) - w(rec4)
 + l(rec4,por2,2) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,3): - x(rec4) - w(rec4)
 + l(rec4,por2,3) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,4): - x(rec4) - w(rec4)
 + l(rec4,por2,4) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,5): - x(rec4) - w(rec4)
 + l(rec4,por2,5) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,6): - x(rec4) - w(rec4)
 + l(rec4,por2,6) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,7): - x(rec4) - w(rec4)
 + l(rec4,por2,7) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por2,8): - x(rec4) - w(rec4)
 + l(rec4,por2,8) + 4 k1(rec4,por2) <= 1
 maxCoverageIntersectionLeft(rec4,por3,1): - x(rec4) - w(rec4)
 + l(rec4,por3,1) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,2): - x(rec4) - w(rec4)
 + l(rec4,por3,2) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,3): - x(rec4) - w(rec4)
 + l(rec4,por3,3) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,4): - x(rec4) - w(rec4)
 + l(rec4,por3,4) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,5): - x(rec4) - w(rec4)
 + l(rec4,por3,5) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,6): - x(rec4) - w(rec4)
 + l(rec4,por3,6) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,7): - x(rec4) - w(rec4)
 + l(rec4,por3,7) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por3,8): - x(rec4) - w(rec4)
 + l(rec4,por3,8) + 5 k1(rec4,por3) <= 1
 maxCoverageIntersectionLeft(rec4,por4,1): - x(rec4) - w(rec4)
 + l(rec4,por4,1) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,2): - x(rec4) - w(rec4)
 + l(rec4,por4,2) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,3): - x(rec4) - w(rec4)
 + l(rec4,por4,3) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,4): - x(rec4) - w(rec4)
 + l(rec4,por4,4) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,5): - x(rec4) - w(rec4)
 + l(rec4,por4,5) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,6): - x(rec4) - w(rec4)
 + l(rec4,por4,6) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,7): - x(rec4) - w(rec4)
 + l(rec4,por4,7) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por4,8): - x(rec4) - w(rec4)
 + l(rec4,por4,8) + 15 k1(rec4,por4) <= 1
 maxCoverageIntersectionLeft(rec4,por5,1): - x(rec4) - w(rec4)
 + l(rec4,por5,1) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,2): - x(rec4) - w(rec4)
 + l(rec4,por5,2) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,3): - x(rec4) - w(rec4)
 + l(rec4,por5,3) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,4): - x(rec4) - w(rec4)
 + l(rec4,por5,4) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,5): - x(rec4) - w(rec4)
 + l(rec4,por5,5) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,6): - x(rec4) - w(rec4)
 + l(rec4,por5,6) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,7): - x(rec4) - w(rec4)
 + l(rec4,por5,7) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por5,8): - x(rec4) - w(rec4)
 + l(rec4,por5,8) + 16 k1(rec4,por5) <= 1
 maxCoverageIntersectionLeft(rec4,por6,1): - x(rec4) - w(rec4)
 + l(rec4,por6,1) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,2): - x(rec4) - w(rec4)
 + l(rec4,por6,2) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,3): - x(rec4) - w(rec4)
 + l(rec4,por6,3) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,4): - x(rec4) - w(rec4)
 + l(rec4,por6,4) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,5): - x(rec4) - w(rec4)
 + l(rec4,por6,5) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,6): - x(rec4) - w(rec4)
 + l(rec4,por6,6) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,7): - x(rec4) - w(rec4)
 + l(rec4,por6,7) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por6,8): - x(rec4) - w(rec4)
 + l(rec4,por6,8) + 18 k1(rec4,por6) <= 1
 maxCoverageIntersectionLeft(rec4,por7,1): - x(rec4) - w(rec4)
 + l(rec4,por7,1) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,2): - x(rec4) - w(rec4)
 + l(rec4,por7,2) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,3): - x(rec4) - w(rec4)
 + l(rec4,por7,3) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,4): - x(rec4) - w(rec4)
 + l(rec4,por7,4) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,5): - x(rec4) - w(rec4)
 + l(rec4,por7,5) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,6): - x(rec4) - w(rec4)
 + l(rec4,por7,6) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,7): - x(rec4) - w(rec4)
 + l(rec4,por7,7) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por7,8): - x(rec4) - w(rec4)
 + l(rec4,por7,8) + 19 k1(rec4,por7) <= 1
 maxCoverageIntersectionLeft(rec4,por8,1): - x(rec4) - w(rec4)
 + l(rec4,por8,1) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,2): - x(rec4) - w(rec4)
 + l(rec4,por8,2) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,3): - x(rec4) - w(rec4)
 + l(rec4,por8,3) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,4): - x(rec4) - w(rec4)
 + l(rec4,por8,4) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,5): - x(rec4) - w(rec4)
 + l(rec4,por8,5) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,6): - x(rec4) - w(rec4)
 + l(rec4,por8,6) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,7): - x(rec4) - w(rec4)
 + l(rec4,por8,7) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por8,8): - x(rec4) - w(rec4)
 + l(rec4,por8,8) + 27 k1(rec4,por8) <= 1
 maxCoverageIntersectionLeft(rec4,por9,1): - x(rec4) - w(rec4)
 + l(rec4,por9,1) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,2): - x(rec4) - w(rec4)
 + l(rec4,por9,2) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,3): - x(rec4) - w(rec4)
 + l(rec4,por9,3) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,4): - x(rec4) - w(rec4)
 + l(rec4,por9,4) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,5): - x(rec4) - w(rec4)
 + l(rec4,por9,5) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,6): - x(rec4) - w(rec4)
 + l(rec4,por9,6) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,7): - x(rec4) - w(rec4)
 + l(rec4,por9,7) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por9,8): - x(rec4) - w(rec4)
 + l(rec4,por9,8) + 28 k1(rec4,por9) <= 1
 maxCoverageIntersectionLeft(rec4,por10,1): - x(rec4) - w(rec4)
 + l(rec4,por10,1) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,2): - x(rec4) - w(rec4)
 + l(rec4,por10,2) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,3): - x(rec4) - w(rec4)
 + l(rec4,por10,3) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,4): - x(rec4) - w(rec4)
 + l(rec4,por10,4) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,5): - x(rec4) - w(rec4)
 + l(rec4,por10,5) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,6): - x(rec4) - w(rec4)
 + l(rec4,por10,6) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,7): - x(rec4) - w(rec4)
 + l(rec4,por10,7) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por10,8): - x(rec4) - w(rec4)
 + l(rec4,por10,8) + 40 k1(rec4,por10) <= 1
 maxCoverageIntersectionLeft(rec4,por11,1): - x(rec4) - w(rec4)
 + l(rec4,por11,1) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,2): - x(rec4) - w(rec4)
 + l(rec4,por11,2) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,3): - x(rec4) - w(rec4)
 + l(rec4,por11,3) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,4): - x(rec4) - w(rec4)
 + l(rec4,por11,4) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,5): - x(rec4) - w(rec4)
 + l(rec4,por11,5) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,6): - x(rec4) - w(rec4)
 + l(rec4,por11,6) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,7): - x(rec4) - w(rec4)
 + l(rec4,por11,7) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por11,8): - x(rec4) - w(rec4)
 + l(rec4,por11,8) + 41 k1(rec4,por11) <= 1
 maxCoverageIntersectionLeft(rec4,por12,1): - x(rec4) - w(rec4)
 + l(rec4,por12,1) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,2): - x(rec4) - w(rec4)
 + l(rec4,por12,2) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,3): - x(rec4) - w(rec4)
 + l(rec4,por12,3) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,4): - x(rec4) - w(rec4)
 + l(rec4,por12,4) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,5): - x(rec4) - w(rec4)
 + l(rec4,por12,5) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,6): - x(rec4) - w(rec4)
 + l(rec4,por12,6) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,7): - x(rec4) - w(rec4)
 + l(rec4,por12,7) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por12,8): - x(rec4) - w(rec4)
 + l(rec4,por12,8) + 51 k1(rec4,por12) <= 1
 maxCoverageIntersectionLeft(rec4,por13,1): - x(rec4) - w(rec4)
 + l(rec4,por13,1) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,2): - x(rec4) - w(rec4)
 + l(rec4,por13,2) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,3): - x(rec4) - w(rec4)
 + l(rec4,por13,3) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,4): - x(rec4) - w(rec4)
 + l(rec4,por13,4) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,5): - x(rec4) - w(rec4)
 + l(rec4,por13,5) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,6): - x(rec4) - w(rec4)
 + l(rec4,por13,6) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,7): - x(rec4) - w(rec4)
 + l(rec4,por13,7) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por13,8): - x(rec4) - w(rec4)
 + l(rec4,por13,8) + 52 k1(rec4,por13) <= 1
 maxCoverageIntersectionLeft(rec4,por14,1): - x(rec4) - w(rec4)
 + l(rec4,por14,1) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,2): - x(rec4) - w(rec4)
 + l(rec4,por14,2) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,3): - x(rec4) - w(rec4)
 + l(rec4,por14,3) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,4): - x(rec4) - w(rec4)
 + l(rec4,por14,4) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,5): - x(rec4) - w(rec4)
 + l(rec4,por14,5) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,6): - x(rec4) - w(rec4)
 + l(rec4,por14,6) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,7): - x(rec4) - w(rec4)
 + l(rec4,por14,7) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por14,8): - x(rec4) - w(rec4)
 + l(rec4,por14,8) + 56 k1(rec4,por14) <= 1
 maxCoverageIntersectionLeft(rec4,por15,1): - x(rec4) - w(rec4)
 + l(rec4,por15,1) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,2): - x(rec4) - w(rec4)
 + l(rec4,por15,2) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,3): - x(rec4) - w(rec4)
 + l(rec4,por15,3) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,4): - x(rec4) - w(rec4)
 + l(rec4,por15,4) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,5): - x(rec4) - w(rec4)
 + l(rec4,por15,5) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,6): - x(rec4) - w(rec4)
 + l(rec4,por15,6) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,7): - x(rec4) - w(rec4)
 + l(rec4,por15,7) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionLeft(rec4,por15,8): - x(rec4) - w(rec4)
 + l(rec4,por15,8) + 57 k1(rec4,por15) <= 1
 maxCoverageIntersectionRight(rec1,por1,1): + x(rec1) + l(rec1,por1,1)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,2): + x(rec1) + l(rec1,por1,2)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,3): + x(rec1) + l(rec1,por1,3)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,4): + x(rec1) + l(rec1,por1,4)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,5): + x(rec1) + l(rec1,por1,5)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,6): + x(rec1) + l(rec1,por1,6)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,7): + x(rec1) + l(rec1,por1,7)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por1,8): + x(rec1) + l(rec1,por1,8)
 + 57 k1(rec1,por1) <= 61
 maxCoverageIntersectionRight(rec1,por2,1): + x(rec1) + l(rec1,por2,1)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,2): + x(rec1) + l(rec1,por2,2)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,3): + x(rec1) + l(rec1,por2,3)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,4): + x(rec1) + l(rec1,por2,4)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,5): + x(rec1) + l(rec1,por2,5)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,6): + x(rec1) + l(rec1,por2,6)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,7): + x(rec1) + l(rec1,por2,7)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por2,8): + x(rec1) + l(rec1,por2,8)
 + 56 k1(rec1,por2) <= 61
 maxCoverageIntersectionRight(rec1,por3,1): + x(rec1) + l(rec1,por3,1)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,2): + x(rec1) + l(rec1,por3,2)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,3): + x(rec1) + l(rec1,por3,3)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,4): + x(rec1) + l(rec1,por3,4)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,5): + x(rec1) + l(rec1,por3,5)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,6): + x(rec1) + l(rec1,por3,6)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,7): + x(rec1) + l(rec1,por3,7)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por3,8): + x(rec1) + l(rec1,por3,8)
 + 46 k1(rec1,por3) <= 61
 maxCoverageIntersectionRight(rec1,por4,1): + x(rec1) + l(rec1,por4,1)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,2): + x(rec1) + l(rec1,por4,2)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,3): + x(rec1) + l(rec1,por4,3)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,4): + x(rec1) + l(rec1,por4,4)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,5): + x(rec1) + l(rec1,por4,5)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,6): + x(rec1) + l(rec1,por4,6)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,7): + x(rec1) + l(rec1,por4,7)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por4,8): + x(rec1) + l(rec1,por4,8)
 + 45 k1(rec1,por4) <= 61
 maxCoverageIntersectionRight(rec1,por5,1): + x(rec1) + l(rec1,por5,1)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,2): + x(rec1) + l(rec1,por5,2)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,3): + x(rec1) + l(rec1,por5,3)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,4): + x(rec1) + l(rec1,por5,4)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,5): + x(rec1) + l(rec1,por5,5)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,6): + x(rec1) + l(rec1,por5,6)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,7): + x(rec1) + l(rec1,por5,7)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por5,8): + x(rec1) + l(rec1,por5,8)
 + 43 k1(rec1,por5) <= 61
 maxCoverageIntersectionRight(rec1,por6,1): + x(rec1) + l(rec1,por6,1)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,2): + x(rec1) + l(rec1,por6,2)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,3): + x(rec1) + l(rec1,por6,3)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,4): + x(rec1) + l(rec1,por6,4)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,5): + x(rec1) + l(rec1,por6,5)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,6): + x(rec1) + l(rec1,por6,6)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,7): + x(rec1) + l(rec1,por6,7)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por6,8): + x(rec1) + l(rec1,por6,8)
 + 42 k1(rec1,por6) <= 61
 maxCoverageIntersectionRight(rec1,por7,1): + x(rec1) + l(rec1,por7,1)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,2): + x(rec1) + l(rec1,por7,2)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,3): + x(rec1) + l(rec1,por7,3)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,4): + x(rec1) + l(rec1,por7,4)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,5): + x(rec1) + l(rec1,por7,5)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,6): + x(rec1) + l(rec1,por7,6)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,7): + x(rec1) + l(rec1,por7,7)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por7,8): + x(rec1) + l(rec1,por7,8)
 + 34 k1(rec1,por7) <= 61
 maxCoverageIntersectionRight(rec1,por8,1): + x(rec1) + l(rec1,por8,1)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,2): + x(rec1) + l(rec1,por8,2)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,3): + x(rec1) + l(rec1,por8,3)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,4): + x(rec1) + l(rec1,por8,4)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,5): + x(rec1) + l(rec1,por8,5)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,6): + x(rec1) + l(rec1,por8,6)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,7): + x(rec1) + l(rec1,por8,7)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por8,8): + x(rec1) + l(rec1,por8,8)
 + 33 k1(rec1,por8) <= 61
 maxCoverageIntersectionRight(rec1,por9,1): + x(rec1) + l(rec1,por9,1)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,2): + x(rec1) + l(rec1,por9,2)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,3): + x(rec1) + l(rec1,por9,3)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,4): + x(rec1) + l(rec1,por9,4)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,5): + x(rec1) + l(rec1,por9,5)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,6): + x(rec1) + l(rec1,por9,6)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,7): + x(rec1) + l(rec1,por9,7)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por9,8): + x(rec1) + l(rec1,por9,8)
 + 21 k1(rec1,por9) <= 61
 maxCoverageIntersectionRight(rec1,por10,1): + x(rec1) + l(rec1,por10,1)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,2): + x(rec1) + l(rec1,por10,2)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,3): + x(rec1) + l(rec1,por10,3)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,4): + x(rec1) + l(rec1,por10,4)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,5): + x(rec1) + l(rec1,por10,5)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,6): + x(rec1) + l(rec1,por10,6)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,7): + x(rec1) + l(rec1,por10,7)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por10,8): + x(rec1) + l(rec1,por10,8)
 + 20 k1(rec1,por10) <= 61
 maxCoverageIntersectionRight(rec1,por11,1): + x(rec1) + l(rec1,por11,1)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,2): + x(rec1) + l(rec1,por11,2)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,3): + x(rec1) + l(rec1,por11,3)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,4): + x(rec1) + l(rec1,por11,4)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,5): + x(rec1) + l(rec1,por11,5)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,6): + x(rec1) + l(rec1,por11,6)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,7): + x(rec1) + l(rec1,por11,7)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por11,8): + x(rec1) + l(rec1,por11,8)
 + 10 k1(rec1,por11) <= 61
 maxCoverageIntersectionRight(rec1,por12,1): + x(rec1) + l(rec1,por12,1)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,2): + x(rec1) + l(rec1,por12,2)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,3): + x(rec1) + l(rec1,por12,3)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,4): + x(rec1) + l(rec1,por12,4)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,5): + x(rec1) + l(rec1,por12,5)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,6): + x(rec1) + l(rec1,por12,6)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,7): + x(rec1) + l(rec1,por12,7)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por12,8): + x(rec1) + l(rec1,por12,8)
 + 9 k1(rec1,por12) <= 61
 maxCoverageIntersectionRight(rec1,por13,1): + x(rec1) + l(rec1,por13,1)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,2): + x(rec1) + l(rec1,por13,2)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,3): + x(rec1) + l(rec1,por13,3)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,4): + x(rec1) + l(rec1,por13,4)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,5): + x(rec1) + l(rec1,por13,5)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,6): + x(rec1) + l(rec1,por13,6)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,7): + x(rec1) + l(rec1,por13,7)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por13,8): + x(rec1) + l(rec1,por13,8)
 + 5 k1(rec1,por13) <= 61
 maxCoverageIntersectionRight(rec1,por14,1): + x(rec1) + l(rec1,por14,1)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,2): + x(rec1) + l(rec1,por14,2)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,3): + x(rec1) + l(rec1,por14,3)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,4): + x(rec1) + l(rec1,por14,4)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,5): + x(rec1) + l(rec1,por14,5)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,6): + x(rec1) + l(rec1,por14,6)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,7): + x(rec1) + l(rec1,por14,7)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por14,8): + x(rec1) + l(rec1,por14,8)
 + 4 k1(rec1,por14) <= 61
 maxCoverageIntersectionRight(rec1,por15,1): + x(rec1) + l(rec1,por15,1)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,2): + x(rec1) + l(rec1,por15,2)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,3): + x(rec1) + l(rec1,por15,3)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,4): + x(rec1) + l(rec1,por15,4)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,5): + x(rec1) + l(rec1,por15,5)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,6): + x(rec1) + l(rec1,por15,6)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,7): + x(rec1) + l(rec1,por15,7)
 <= 61
 maxCoverageIntersectionRight(rec1,por15,8): + x(rec1) + l(rec1,por15,8)
 <= 61
 maxCoverageIntersectionRight(rec2,por1,1): + x(rec2) + l(rec2,por1,1)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,2): + x(rec2) + l(rec2,por1,2)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,3): + x(rec2) + l(rec2,por1,3)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,4): + x(rec2) + l(rec2,por1,4)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,5): + x(rec2) + l(rec2,por1,5)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,6): + x(rec2) + l(rec2,por1,6)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,7): + x(rec2) + l(rec2,por1,7)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por1,8): + x(rec2) + l(rec2,por1,8)
 + 57 k1(rec2,por1) <= 61
 maxCoverageIntersectionRight(rec2,por2,1): + x(rec2) + l(rec2,por2,1)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,2): + x(rec2) + l(rec2,por2,2)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,3): + x(rec2) + l(rec2,por2,3)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,4): + x(rec2) + l(rec2,por2,4)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,5): + x(rec2) + l(rec2,por2,5)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,6): + x(rec2) + l(rec2,por2,6)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,7): + x(rec2) + l(rec2,por2,7)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por2,8): + x(rec2) + l(rec2,por2,8)
 + 56 k1(rec2,por2) <= 61
 maxCoverageIntersectionRight(rec2,por3,1): + x(rec2) + l(rec2,por3,1)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,2): + x(rec2) + l(rec2,por3,2)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,3): + x(rec2) + l(rec2,por3,3)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,4): + x(rec2) + l(rec2,por3,4)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,5): + x(rec2) + l(rec2,por3,5)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,6): + x(rec2) + l(rec2,por3,6)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,7): + x(rec2) + l(rec2,por3,7)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por3,8): + x(rec2) + l(rec2,por3,8)
 + 46 k1(rec2,por3) <= 61
 maxCoverageIntersectionRight(rec2,por4,1): + x(rec2) + l(rec2,por4,1)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,2): + x(rec2) + l(rec2,por4,2)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,3): + x(rec2) + l(rec2,por4,3)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,4): + x(rec2) + l(rec2,por4,4)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,5): + x(rec2) + l(rec2,por4,5)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,6): + x(rec2) + l(rec2,por4,6)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,7): + x(rec2) + l(rec2,por4,7)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por4,8): + x(rec2) + l(rec2,por4,8)
 + 45 k1(rec2,por4) <= 61
 maxCoverageIntersectionRight(rec2,por5,1): + x(rec2) + l(rec2,por5,1)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,2): + x(rec2) + l(rec2,por5,2)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,3): + x(rec2) + l(rec2,por5,3)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,4): + x(rec2) + l(rec2,por5,4)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,5): + x(rec2) + l(rec2,por5,5)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,6): + x(rec2) + l(rec2,por5,6)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,7): + x(rec2) + l(rec2,por5,7)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por5,8): + x(rec2) + l(rec2,por5,8)
 + 43 k1(rec2,por5) <= 61
 maxCoverageIntersectionRight(rec2,por6,1): + x(rec2) + l(rec2,por6,1)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,2): + x(rec2) + l(rec2,por6,2)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,3): + x(rec2) + l(rec2,por6,3)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,4): + x(rec2) + l(rec2,por6,4)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,5): + x(rec2) + l(rec2,por6,5)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,6): + x(rec2) + l(rec2,por6,6)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,7): + x(rec2) + l(rec2,por6,7)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por6,8): + x(rec2) + l(rec2,por6,8)
 + 42 k1(rec2,por6) <= 61
 maxCoverageIntersectionRight(rec2,por7,1): + x(rec2) + l(rec2,por7,1)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,2): + x(rec2) + l(rec2,por7,2)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,3): + x(rec2) + l(rec2,por7,3)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,4): + x(rec2) + l(rec2,por7,4)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,5): + x(rec2) + l(rec2,por7,5)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,6): + x(rec2) + l(rec2,por7,6)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,7): + x(rec2) + l(rec2,por7,7)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por7,8): + x(rec2) + l(rec2,por7,8)
 + 34 k1(rec2,por7) <= 61
 maxCoverageIntersectionRight(rec2,por8,1): + x(rec2) + l(rec2,por8,1)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,2): + x(rec2) + l(rec2,por8,2)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,3): + x(rec2) + l(rec2,por8,3)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,4): + x(rec2) + l(rec2,por8,4)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,5): + x(rec2) + l(rec2,por8,5)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,6): + x(rec2) + l(rec2,por8,6)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,7): + x(rec2) + l(rec2,por8,7)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por8,8): + x(rec2) + l(rec2,por8,8)
 + 33 k1(rec2,por8) <= 61
 maxCoverageIntersectionRight(rec2,por9,1): + x(rec2) + l(rec2,por9,1)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,2): + x(rec2) + l(rec2,por9,2)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,3): + x(rec2) + l(rec2,por9,3)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,4): + x(rec2) + l(rec2,por9,4)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,5): + x(rec2) + l(rec2,por9,5)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,6): + x(rec2) + l(rec2,por9,6)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,7): + x(rec2) + l(rec2,por9,7)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por9,8): + x(rec2) + l(rec2,por9,8)
 + 21 k1(rec2,por9) <= 61
 maxCoverageIntersectionRight(rec2,por10,1): + x(rec2) + l(rec2,por10,1)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,2): + x(rec2) + l(rec2,por10,2)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,3): + x(rec2) + l(rec2,por10,3)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,4): + x(rec2) + l(rec2,por10,4)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,5): + x(rec2) + l(rec2,por10,5)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,6): + x(rec2) + l(rec2,por10,6)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,7): + x(rec2) + l(rec2,por10,7)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por10,8): + x(rec2) + l(rec2,por10,8)
 + 20 k1(rec2,por10) <= 61
 maxCoverageIntersectionRight(rec2,por11,1): + x(rec2) + l(rec2,por11,1)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,2): + x(rec2) + l(rec2,por11,2)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,3): + x(rec2) + l(rec2,por11,3)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,4): + x(rec2) + l(rec2,por11,4)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,5): + x(rec2) + l(rec2,por11,5)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,6): + x(rec2) + l(rec2,por11,6)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,7): + x(rec2) + l(rec2,por11,7)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por11,8): + x(rec2) + l(rec2,por11,8)
 + 10 k1(rec2,por11) <= 61
 maxCoverageIntersectionRight(rec2,por12,1): + x(rec2) + l(rec2,por12,1)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,2): + x(rec2) + l(rec2,por12,2)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,3): + x(rec2) + l(rec2,por12,3)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,4): + x(rec2) + l(rec2,por12,4)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,5): + x(rec2) + l(rec2,por12,5)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,6): + x(rec2) + l(rec2,por12,6)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,7): + x(rec2) + l(rec2,por12,7)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por12,8): + x(rec2) + l(rec2,por12,8)
 + 9 k1(rec2,por12) <= 61
 maxCoverageIntersectionRight(rec2,por13,1): + x(rec2) + l(rec2,por13,1)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,2): + x(rec2) + l(rec2,por13,2)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,3): + x(rec2) + l(rec2,por13,3)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,4): + x(rec2) + l(rec2,por13,4)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,5): + x(rec2) + l(rec2,por13,5)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,6): + x(rec2) + l(rec2,por13,6)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,7): + x(rec2) + l(rec2,por13,7)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por13,8): + x(rec2) + l(rec2,por13,8)
 + 5 k1(rec2,por13) <= 61
 maxCoverageIntersectionRight(rec2,por14,1): + x(rec2) + l(rec2,por14,1)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,2): + x(rec2) + l(rec2,por14,2)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,3): + x(rec2) + l(rec2,por14,3)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,4): + x(rec2) + l(rec2,por14,4)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,5): + x(rec2) + l(rec2,por14,5)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,6): + x(rec2) + l(rec2,por14,6)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,7): + x(rec2) + l(rec2,por14,7)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por14,8): + x(rec2) + l(rec2,por14,8)
 + 4 k1(rec2,por14) <= 61
 maxCoverageIntersectionRight(rec2,por15,1): + x(rec2) + l(rec2,por15,1)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,2): + x(rec2) + l(rec2,por15,2)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,3): + x(rec2) + l(rec2,por15,3)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,4): + x(rec2) + l(rec2,por15,4)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,5): + x(rec2) + l(rec2,por15,5)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,6): + x(rec2) + l(rec2,por15,6)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,7): + x(rec2) + l(rec2,por15,7)
 <= 61
 maxCoverageIntersectionRight(rec2,por15,8): + x(rec2) + l(rec2,por15,8)
 <= 61
 maxCoverageIntersectionRight(rec3,por1,1): + x(rec3) + l(rec3,por1,1)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,2): + x(rec3) + l(rec3,por1,2)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,3): + x(rec3) + l(rec3,por1,3)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,4): + x(rec3) + l(rec3,por1,4)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,5): + x(rec3) + l(rec3,por1,5)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,6): + x(rec3) + l(rec3,por1,6)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,7): + x(rec3) + l(rec3,por1,7)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por1,8): + x(rec3) + l(rec3,por1,8)
 + 57 k1(rec3,por1) <= 61
 maxCoverageIntersectionRight(rec3,por2,1): + x(rec3) + l(rec3,por2,1)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,2): + x(rec3) + l(rec3,por2,2)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,3): + x(rec3) + l(rec3,por2,3)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,4): + x(rec3) + l(rec3,por2,4)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,5): + x(rec3) + l(rec3,por2,5)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,6): + x(rec3) + l(rec3,por2,6)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,7): + x(rec3) + l(rec3,por2,7)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por2,8): + x(rec3) + l(rec3,por2,8)
 + 56 k1(rec3,por2) <= 61
 maxCoverageIntersectionRight(rec3,por3,1): + x(rec3) + l(rec3,por3,1)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,2): + x(rec3) + l(rec3,por3,2)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,3): + x(rec3) + l(rec3,por3,3)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,4): + x(rec3) + l(rec3,por3,4)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,5): + x(rec3) + l(rec3,por3,5)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,6): + x(rec3) + l(rec3,por3,6)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,7): + x(rec3) + l(rec3,por3,7)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por3,8): + x(rec3) + l(rec3,por3,8)
 + 46 k1(rec3,por3) <= 61
 maxCoverageIntersectionRight(rec3,por4,1): + x(rec3) + l(rec3,por4,1)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,2): + x(rec3) + l(rec3,por4,2)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,3): + x(rec3) + l(rec3,por4,3)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,4): + x(rec3) + l(rec3,por4,4)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,5): + x(rec3) + l(rec3,por4,5)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,6): + x(rec3) + l(rec3,por4,6)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,7): + x(rec3) + l(rec3,por4,7)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por4,8): + x(rec3) + l(rec3,por4,8)
 + 45 k1(rec3,por4) <= 61
 maxCoverageIntersectionRight(rec3,por5,1): + x(rec3) + l(rec3,por5,1)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,2): + x(rec3) + l(rec3,por5,2)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,3): + x(rec3) + l(rec3,por5,3)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,4): + x(rec3) + l(rec3,por5,4)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,5): + x(rec3) + l(rec3,por5,5)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,6): + x(rec3) + l(rec3,por5,6)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,7): + x(rec3) + l(rec3,por5,7)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por5,8): + x(rec3) + l(rec3,por5,8)
 + 43 k1(rec3,por5) <= 61
 maxCoverageIntersectionRight(rec3,por6,1): + x(rec3) + l(rec3,por6,1)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,2): + x(rec3) + l(rec3,por6,2)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,3): + x(rec3) + l(rec3,por6,3)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,4): + x(rec3) + l(rec3,por6,4)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,5): + x(rec3) + l(rec3,por6,5)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,6): + x(rec3) + l(rec3,por6,6)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,7): + x(rec3) + l(rec3,por6,7)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por6,8): + x(rec3) + l(rec3,por6,8)
 + 42 k1(rec3,por6) <= 61
 maxCoverageIntersectionRight(rec3,por7,1): + x(rec3) + l(rec3,por7,1)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,2): + x(rec3) + l(rec3,por7,2)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,3): + x(rec3) + l(rec3,por7,3)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,4): + x(rec3) + l(rec3,por7,4)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,5): + x(rec3) + l(rec3,por7,5)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,6): + x(rec3) + l(rec3,por7,6)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,7): + x(rec3) + l(rec3,por7,7)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por7,8): + x(rec3) + l(rec3,por7,8)
 + 34 k1(rec3,por7) <= 61
 maxCoverageIntersectionRight(rec3,por8,1): + x(rec3) + l(rec3,por8,1)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,2): + x(rec3) + l(rec3,por8,2)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,3): + x(rec3) + l(rec3,por8,3)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,4): + x(rec3) + l(rec3,por8,4)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,5): + x(rec3) + l(rec3,por8,5)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,6): + x(rec3) + l(rec3,por8,6)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,7): + x(rec3) + l(rec3,por8,7)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por8,8): + x(rec3) + l(rec3,por8,8)
 + 33 k1(rec3,por8) <= 61
 maxCoverageIntersectionRight(rec3,por9,1): + x(rec3) + l(rec3,por9,1)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,2): + x(rec3) + l(rec3,por9,2)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,3): + x(rec3) + l(rec3,por9,3)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,4): + x(rec3) + l(rec3,por9,4)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,5): + x(rec3) + l(rec3,por9,5)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,6): + x(rec3) + l(rec3,por9,6)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,7): + x(rec3) + l(rec3,por9,7)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por9,8): + x(rec3) + l(rec3,por9,8)
 + 21 k1(rec3,por9) <= 61
 maxCoverageIntersectionRight(rec3,por10,1): + x(rec3) + l(rec3,por10,1)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,2): + x(rec3) + l(rec3,por10,2)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,3): + x(rec3) + l(rec3,por10,3)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,4): + x(rec3) + l(rec3,por10,4)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,5): + x(rec3) + l(rec3,por10,5)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,6): + x(rec3) + l(rec3,por10,6)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,7): + x(rec3) + l(rec3,por10,7)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por10,8): + x(rec3) + l(rec3,por10,8)
 + 20 k1(rec3,por10) <= 61
 maxCoverageIntersectionRight(rec3,por11,1): + x(rec3) + l(rec3,por11,1)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,2): + x(rec3) + l(rec3,por11,2)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,3): + x(rec3) + l(rec3,por11,3)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,4): + x(rec3) + l(rec3,por11,4)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,5): + x(rec3) + l(rec3,por11,5)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,6): + x(rec3) + l(rec3,por11,6)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,7): + x(rec3) + l(rec3,por11,7)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por11,8): + x(rec3) + l(rec3,por11,8)
 + 10 k1(rec3,por11) <= 61
 maxCoverageIntersectionRight(rec3,por12,1): + x(rec3) + l(rec3,por12,1)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,2): + x(rec3) + l(rec3,por12,2)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,3): + x(rec3) + l(rec3,por12,3)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,4): + x(rec3) + l(rec3,por12,4)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,5): + x(rec3) + l(rec3,por12,5)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,6): + x(rec3) + l(rec3,por12,6)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,7): + x(rec3) + l(rec3,por12,7)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por12,8): + x(rec3) + l(rec3,por12,8)
 + 9 k1(rec3,por12) <= 61
 maxCoverageIntersectionRight(rec3,por13,1): + x(rec3) + l(rec3,por13,1)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,2): + x(rec3) + l(rec3,por13,2)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,3): + x(rec3) + l(rec3,por13,3)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,4): + x(rec3) + l(rec3,por13,4)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,5): + x(rec3) + l(rec3,por13,5)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,6): + x(rec3) + l(rec3,por13,6)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,7): + x(rec3) + l(rec3,por13,7)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por13,8): + x(rec3) + l(rec3,por13,8)
 + 5 k1(rec3,por13) <= 61
 maxCoverageIntersectionRight(rec3,por14,1): + x(rec3) + l(rec3,por14,1)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,2): + x(rec3) + l(rec3,por14,2)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,3): + x(rec3) + l(rec3,por14,3)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,4): + x(rec3) + l(rec3,por14,4)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,5): + x(rec3) + l(rec3,por14,5)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,6): + x(rec3) + l(rec3,por14,6)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,7): + x(rec3) + l(rec3,por14,7)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por14,8): + x(rec3) + l(rec3,por14,8)
 + 4 k1(rec3,por14) <= 61
 maxCoverageIntersectionRight(rec3,por15,1): + x(rec3) + l(rec3,por15,1)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,2): + x(rec3) + l(rec3,por15,2)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,3): + x(rec3) + l(rec3,por15,3)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,4): + x(rec3) + l(rec3,por15,4)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,5): + x(rec3) + l(rec3,por15,5)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,6): + x(rec3) + l(rec3,por15,6)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,7): + x(rec3) + l(rec3,por15,7)
 <= 61
 maxCoverageIntersectionRight(rec3,por15,8): + x(rec3) + l(rec3,por15,8)
 <= 61
 maxCoverageIntersectionRight(rec4,por1,1): + x(rec4) + l(rec4,por1,1)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,2): + x(rec4) + l(rec4,por1,2)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,3): + x(rec4) + l(rec4,por1,3)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,4): + x(rec4) + l(rec4,por1,4)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,5): + x(rec4) + l(rec4,por1,5)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,6): + x(rec4) + l(rec4,por1,6)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,7): + x(rec4) + l(rec4,por1,7)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por1,8): + x(rec4) + l(rec4,por1,8)
 + 57 k1(rec4,por1) <= 61
 maxCoverageIntersectionRight(rec4,por2,1): + x(rec4) + l(rec4,por2,1)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,2): + x(rec4) + l(rec4,por2,2)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,3): + x(rec4) + l(rec4,por2,3)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,4): + x(rec4) + l(rec4,por2,4)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,5): + x(rec4) + l(rec4,por2,5)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,6): + x(rec4) + l(rec4,por2,6)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,7): + x(rec4) + l(rec4,por2,7)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por2,8): + x(rec4) + l(rec4,por2,8)
 + 56 k1(rec4,por2) <= 61
 maxCoverageIntersectionRight(rec4,por3,1): + x(rec4) + l(rec4,por3,1)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,2): + x(rec4) + l(rec4,por3,2)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,3): + x(rec4) + l(rec4,por3,3)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,4): + x(rec4) + l(rec4,por3,4)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,5): + x(rec4) + l(rec4,por3,5)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,6): + x(rec4) + l(rec4,por3,6)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,7): + x(rec4) + l(rec4,por3,7)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por3,8): + x(rec4) + l(rec4,por3,8)
 + 46 k1(rec4,por3) <= 61
 maxCoverageIntersectionRight(rec4,por4,1): + x(rec4) + l(rec4,por4,1)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,2): + x(rec4) + l(rec4,por4,2)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,3): + x(rec4) + l(rec4,por4,3)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,4): + x(rec4) + l(rec4,por4,4)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,5): + x(rec4) + l(rec4,por4,5)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,6): + x(rec4) + l(rec4,por4,6)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,7): + x(rec4) + l(rec4,por4,7)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por4,8): + x(rec4) + l(rec4,por4,8)
 + 45 k1(rec4,por4) <= 61
 maxCoverageIntersectionRight(rec4,por5,1): + x(rec4) + l(rec4,por5,1)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,2): + x(rec4) + l(rec4,por5,2)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,3): + x(rec4) + l(rec4,por5,3)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,4): + x(rec4) + l(rec4,por5,4)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,5): + x(rec4) + l(rec4,por5,5)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,6): + x(rec4) + l(rec4,por5,6)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,7): + x(rec4) + l(rec4,por5,7)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por5,8): + x(rec4) + l(rec4,por5,8)
 + 43 k1(rec4,por5) <= 61
 maxCoverageIntersectionRight(rec4,por6,1): + x(rec4) + l(rec4,por6,1)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,2): + x(rec4) + l(rec4,por6,2)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,3): + x(rec4) + l(rec4,por6,3)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,4): + x(rec4) + l(rec4,por6,4)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,5): + x(rec4) + l(rec4,por6,5)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,6): + x(rec4) + l(rec4,por6,6)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,7): + x(rec4) + l(rec4,por6,7)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por6,8): + x(rec4) + l(rec4,por6,8)
 + 42 k1(rec4,por6) <= 61
 maxCoverageIntersectionRight(rec4,por7,1): + x(rec4) + l(rec4,por7,1)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,2): + x(rec4) + l(rec4,por7,2)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,3): + x(rec4) + l(rec4,por7,3)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,4): + x(rec4) + l(rec4,por7,4)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,5): + x(rec4) + l(rec4,por7,5)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,6): + x(rec4) + l(rec4,por7,6)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,7): + x(rec4) + l(rec4,por7,7)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por7,8): + x(rec4) + l(rec4,por7,8)
 + 34 k1(rec4,por7) <= 61
 maxCoverageIntersectionRight(rec4,por8,1): + x(rec4) + l(rec4,por8,1)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,2): + x(rec4) + l(rec4,por8,2)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,3): + x(rec4) + l(rec4,por8,3)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,4): + x(rec4) + l(rec4,por8,4)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,5): + x(rec4) + l(rec4,por8,5)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,6): + x(rec4) + l(rec4,por8,6)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,7): + x(rec4) + l(rec4,por8,7)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por8,8): + x(rec4) + l(rec4,por8,8)
 + 33 k1(rec4,por8) <= 61
 maxCoverageIntersectionRight(rec4,por9,1): + x(rec4) + l(rec4,por9,1)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,2): + x(rec4) + l(rec4,por9,2)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,3): + x(rec4) + l(rec4,por9,3)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,4): + x(rec4) + l(rec4,por9,4)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,5): + x(rec4) + l(rec4,por9,5)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,6): + x(rec4) + l(rec4,por9,6)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,7): + x(rec4) + l(rec4,por9,7)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por9,8): + x(rec4) + l(rec4,por9,8)
 + 21 k1(rec4,por9) <= 61
 maxCoverageIntersectionRight(rec4,por10,1): + x(rec4) + l(rec4,por10,1)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,2): + x(rec4) + l(rec4,por10,2)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,3): + x(rec4) + l(rec4,por10,3)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,4): + x(rec4) + l(rec4,por10,4)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,5): + x(rec4) + l(rec4,por10,5)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,6): + x(rec4) + l(rec4,por10,6)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,7): + x(rec4) + l(rec4,por10,7)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por10,8): + x(rec4) + l(rec4,por10,8)
 + 20 k1(rec4,por10) <= 61
 maxCoverageIntersectionRight(rec4,por11,1): + x(rec4) + l(rec4,por11,1)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,2): + x(rec4) + l(rec4,por11,2)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,3): + x(rec4) + l(rec4,por11,3)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,4): + x(rec4) + l(rec4,por11,4)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,5): + x(rec4) + l(rec4,por11,5)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,6): + x(rec4) + l(rec4,por11,6)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,7): + x(rec4) + l(rec4,por11,7)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por11,8): + x(rec4) + l(rec4,por11,8)
 + 10 k1(rec4,por11) <= 61
 maxCoverageIntersectionRight(rec4,por12,1): + x(rec4) + l(rec4,por12,1)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,2): + x(rec4) + l(rec4,por12,2)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,3): + x(rec4) + l(rec4,por12,3)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,4): + x(rec4) + l(rec4,por12,4)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,5): + x(rec4) + l(rec4,por12,5)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,6): + x(rec4) + l(rec4,por12,6)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,7): + x(rec4) + l(rec4,por12,7)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por12,8): + x(rec4) + l(rec4,por12,8)
 + 9 k1(rec4,por12) <= 61
 maxCoverageIntersectionRight(rec4,por13,1): + x(rec4) + l(rec4,por13,1)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,2): + x(rec4) + l(rec4,por13,2)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,3): + x(rec4) + l(rec4,por13,3)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,4): + x(rec4) + l(rec4,por13,4)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,5): + x(rec4) + l(rec4,por13,5)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,6): + x(rec4) + l(rec4,por13,6)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,7): + x(rec4) + l(rec4,por13,7)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por13,8): + x(rec4) + l(rec4,por13,8)
 + 5 k1(rec4,por13) <= 61
 maxCoverageIntersectionRight(rec4,por14,1): + x(rec4) + l(rec4,por14,1)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,2): + x(rec4) + l(rec4,por14,2)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,3): + x(rec4) + l(rec4,por14,3)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,4): + x(rec4) + l(rec4,por14,4)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,5): + x(rec4) + l(rec4,por14,5)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,6): + x(rec4) + l(rec4,por14,6)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,7): + x(rec4) + l(rec4,por14,7)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por14,8): + x(rec4) + l(rec4,por14,8)
 + 4 k1(rec4,por14) <= 61
 maxCoverageIntersectionRight(rec4,por15,1): + x(rec4) + l(rec4,por15,1)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,2): + x(rec4) + l(rec4,por15,2)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,3): + x(rec4) + l(rec4,por15,3)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,4): + x(rec4) + l(rec4,por15,4)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,5): + x(rec4) + l(rec4,por15,5)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,6): + x(rec4) + l(rec4,por15,6)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,7): + x(rec4) + l(rec4,por15,7)
 <= 61
 maxCoverageIntersectionRight(rec4,por15,8): + x(rec4) + l(rec4,por15,8)
 <= 61
 totalMinCoverage(rec1,1): - 60 h(rec1,1) - w(rec1) + l(rec1,por1,1)
 + l(rec1,por2,1) + l(rec1,por3,1) + l(rec1,por4,1) + l(rec1,por5,1)
 + l(rec1,por6,1) + l(rec1,por7,1) + l(rec1,por8,1) + l(rec1,por9,1)
 + l(rec1,por10,1) + l(rec1,por11,1) + l(rec1,por12,1) + l(rec1,por13,1)
 + l(rec1,por14,1) + l(rec1,por15,1) >= -59
 totalMinCoverage(rec1,2): - 60 h(rec1,2) - w(rec1) + l(rec1,por1,2)
 + l(rec1,por2,2) + l(rec1,por3,2) + l(rec1,por4,2) + l(rec1,por5,2)
 + l(rec1,por6,2) + l(rec1,por7,2) + l(rec1,por8,2) + l(rec1,por9,2)
 + l(rec1,por10,2) + l(rec1,por11,2) + l(rec1,por12,2) + l(rec1,por13,2)
 + l(rec1,por14,2) + l(rec1,por15,2) >= -59
 totalMinCoverage(rec1,3): - 60 h(rec1,3) - w(rec1) + l(rec1,por1,3)
 + l(rec1,por2,3) + l(rec1,por3,3) + l(rec1,por4,3) + l(rec1,por5,3)
 + l(rec1,por6,3) + l(rec1,por7,3) + l(rec1,por8,3) + l(rec1,por9,3)
 + l(rec1,por10,3) + l(rec1,por11,3) + l(rec1,por12,3) + l(rec1,por13,3)
 + l(rec1,por14,3) + l(rec1,por15,3) >= -59
 totalMinCoverage(rec1,4): - 60 h(rec1,4) - w(rec1) + l(rec1,por1,4)
 + l(rec1,por2,4) + l(rec1,por3,4) + l(rec1,por4,4) + l(rec1,por5,4)
 + l(rec1,por6,4) + l(rec1,por7,4) + l(rec1,por8,4) + l(rec1,por9,4)
 + l(rec1,por10,4) + l(rec1,por11,4) + l(rec1,por12,4) + l(rec1,por13,4)
 + l(rec1,por14,4) + l(rec1,por15,4) >= -59
 totalMinCoverage(rec1,5): - 60 h(rec1,5) - w(rec1) + l(rec1,por1,5)
 + l(rec1,por2,5) + l(rec1,por3,5) + l(rec1,por4,5) + l(rec1,por5,5)
 + l(rec1,por6,5) + l(rec1,por7,5) + l(rec1,por8,5) + l(rec1,por9,5)
 + l(rec1,por10,5) + l(rec1,por11,5) + l(rec1,por12,5) + l(rec1,por13,5)
 + l(rec1,por14,5) + l(rec1,por15,5) >= -59
 totalMinCoverage(rec1,6): - 60 h(rec1,6) - w(rec1) + l(rec1,por1,6)
 + l(rec1,por2,6) + l(rec1,por3,6) + l(rec1,por4,6) + l(rec1,por5,6)
 + l(rec1,por6,6) + l(rec1,por7,6) + l(rec1,por8,6) + l(rec1,por9,6)
 + l(rec1,por10,6) + l(rec1,por11,6) + l(rec1,por12,6) + l(rec1,por13,6)
 + l(rec1,por14,6) + l(rec1,por15,6) >= -59
 totalMinCoverage(rec1,7): - 60 h(rec1,7) - w(rec1) + l(rec1,por1,7)
 + l(rec1,por2,7) + l(rec1,por3,7) + l(rec1,por4,7) + l(rec1,por5,7)
 + l(rec1,por6,7) + l(rec1,por7,7) + l(rec1,por8,7) + l(rec1,por9,7)
 + l(rec1,por10,7) + l(rec1,por11,7) + l(rec1,por12,7) + l(rec1,por13,7)
 + l(rec1,por14,7) + l(rec1,por15,7) >= -59
 totalMinCoverage(rec1,8): - 60 h(rec1,8) - w(rec1) + l(rec1,por1,8)
 + l(rec1,por2,8) + l(rec1,por3,8) + l(rec1,por4,8) + l(rec1,por5,8)
 + l(rec1,por6,8) + l(rec1,por7,8) + l(rec1,por8,8) + l(rec1,por9,8)
 + l(rec1,por10,8) + l(rec1,por11,8) + l(rec1,por12,8) + l(rec1,por13,8)
 + l(rec1,por14,8) + l(rec1,por15,8) >= -59
 totalMinCoverage(rec2,1): - 60 h(rec2,1) - w(rec2) + l(rec2,por1,1)
 + l(rec2,por2,1) + l(rec2,por3,1) + l(rec2,por4,1) + l(rec2,por5,1)
 + l(rec2,por6,1) + l(rec2,por7,1) + l(rec2,por8,1) + l(rec2,por9,1)
 + l(rec2,por10,1) + l(rec2,por11,1) + l(rec2,por12,1) + l(rec2,por13,1)
 + l(rec2,por14,1) + l(rec2,por15,1) >= -59
 totalMinCoverage(rec2,2): - 60 h(rec2,2) - w(rec2) + l(rec2,por1,2)
 + l(rec2,por2,2) + l(rec2,por3,2) + l(rec2,por4,2) + l(rec2,por5,2)
 + l(rec2,por6,2) + l(rec2,por7,2) + l(rec2,por8,2) + l(rec2,por9,2)
 + l(rec2,por10,2) + l(rec2,por11,2) + l(rec2,por12,2) + l(rec2,por13,2)
 + l(rec2,por14,2) + l(rec2,por15,2) >= -59
 totalMinCoverage(rec2,3): - 60 h(rec2,3) - w(rec2) + l(rec2,por1,3)
 + l(rec2,por2,3) + l(rec2,por3,3) + l(rec2,por4,3) + l(rec2,por5,3)
 + l(rec2,por6,3) + l(rec2,por7,3) + l(rec2,por8,3) + l(rec2,por9,3)
 + l(rec2,por10,3) + l(rec2,por11,3) + l(rec2,por12,3) + l(rec2,por13,3)
 + l(rec2,por14,3) + l(rec2,por15,3) >= -59
 totalMinCoverage(rec2,4): - 60 h(rec2,4) - w(rec2) + l(rec2,por1,4)
 + l(rec2,por2,4) + l(rec2,por3,4) + l(rec2,por4,4) + l(rec2,por5,4)
 + l(rec2,por6,4) + l(rec2,por7,4) + l(rec2,por8,4) + l(rec2,por9,4)
 + l(rec2,por10,4) + l(rec2,por11,4) + l(rec2,por12,4) + l(rec2,por13,4)
 + l(rec2,por14,4) + l(rec2,por15,4) >= -59
 totalMinCoverage(rec2,5): - 60 h(rec2,5) - w(rec2) + l(rec2,por1,5)
 + l(rec2,por2,5) + l(rec2,por3,5) + l(rec2,por4,5) + l(rec2,por5,5)
 + l(rec2,por6,5) + l(rec2,por7,5) + l(rec2,por8,5) + l(rec2,por9,5)
 + l(rec2,por10,5) + l(rec2,por11,5) + l(rec2,por12,5) + l(rec2,por13,5)
 + l(rec2,por14,5) + l(rec2,por15,5) >= -59
 totalMinCoverage(rec2,6): - 60 h(rec2,6) - w(rec2) + l(rec2,por1,6)
 + l(rec2,por2,6) + l(rec2,por3,6) + l(rec2,por4,6) + l(rec2,por5,6)
 + l(rec2,por6,6) + l(rec2,por7,6) + l(rec2,por8,6) + l(rec2,por9,6)
 + l(rec2,por10,6) + l(rec2,por11,6) + l(rec2,por12,6) + l(rec2,por13,6)
 + l(rec2,por14,6) + l(rec2,por15,6) >= -59
 totalMinCoverage(rec2,7): - 60 h(rec2,7) - w(rec2) + l(rec2,por1,7)
 + l(rec2,por2,7) + l(rec2,por3,7) + l(rec2,por4,7) + l(rec2,por5,7)
 + l(rec2,por6,7) + l(rec2,por7,7) + l(rec2,por8,7) + l(rec2,por9,7)
 + l(rec2,por10,7) + l(rec2,por11,7) + l(rec2,por12,7) + l(rec2,por13,7)
 + l(rec2,por14,7) + l(rec2,por15,7) >= -59
 totalMinCoverage(rec2,8): - 60 h(rec2,8) - w(rec2) + l(rec2,por1,8)
 + l(rec2,por2,8) + l(rec2,por3,8) + l(rec2,por4,8) + l(rec2,por5,8)
 + l(rec2,por6,8) + l(rec2,por7,8) + l(rec2,por8,8) + l(rec2,por9,8)
 + l(rec2,por10,8) + l(rec2,por11,8) + l(rec2,por12,8) + l(rec2,por13,8)
 + l(rec2,por14,8) + l(rec2,por15,8) >= -59
 totalMinCoverage(rec3,1): - 60 h(rec3,1) - w(rec3) + l(rec3,por1,1)
 + l(rec3,por2,1) + l(rec3,por3,1) + l(rec3,por4,1) + l(rec3,por5,1)
 + l(rec3,por6,1) + l(rec3,por7,1) + l(rec3,por8,1) + l(rec3,por9,1)
 + l(rec3,por10,1) + l(rec3,por11,1) + l(rec3,por12,1) + l(rec3,por13,1)
 + l(rec3,por14,1) + l(rec3,por15,1) >= -59
 totalMinCoverage(rec3,2): - 60 h(rec3,2) - w(rec3) + l(rec3,por1,2)
 + l(rec3,por2,2) + l(rec3,por3,2) + l(rec3,por4,2) + l(rec3,por5,2)
 + l(rec3,por6,2) + l(rec3,por7,2) + l(rec3,por8,2) + l(rec3,por9,2)
 + l(rec3,por10,2) + l(rec3,por11,2) + l(rec3,por12,2) + l(rec3,por13,2)
 + l(rec3,por14,2) + l(rec3,por15,2) >= -59
 totalMinCoverage(rec3,3): - 60 h(rec3,3) - w(rec3) + l(rec3,por1,3)
 + l(rec3,por2,3) + l(rec3,por3,3) + l(rec3,por4,3) + l(rec3,por5,3)
 + l(rec3,por6,3) + l(rec3,por7,3) + l(rec3,por8,3) + l(rec3,por9,3)
 + l(rec3,por10,3) + l(rec3,por11,3) + l(rec3,por12,3) + l(rec3,por13,3)
 + l(rec3,por14,3) + l(rec3,por15,3) >= -59
 totalMinCoverage(rec3,4): - 60 h(rec3,4) - w(rec3) + l(rec3,por1,4)
 + l(rec3,por2,4) + l(rec3,por3,4) + l(rec3,por4,4) + l(rec3,por5,4)
 + l(rec3,por6,4) + l(rec3,por7,4) + l(rec3,por8,4) + l(rec3,por9,4)
 + l(rec3,por10,4) + l(rec3,por11,4) + l(rec3,por12,4) + l(rec3,por13,4)
 + l(rec3,por14,4) + l(rec3,por15,4) >= -59
 totalMinCoverage(rec3,5): - 60 h(rec3,5) - w(rec3) + l(rec3,por1,5)
 + l(rec3,por2,5) + l(rec3,por3,5) + l(rec3,por4,5) + l(rec3,por5,5)
 + l(rec3,por6,5) + l(rec3,por7,5) + l(rec3,por8,5) + l(rec3,por9,5)
 + l(rec3,por10,5) + l(rec3,por11,5) + l(rec3,por12,5) + l(rec3,por13,5)
 + l(rec3,por14,5) + l(rec3,por15,5) >= -59
 totalMinCoverage(rec3,6): - 60 h(rec3,6) - w(rec3) + l(rec3,por1,6)
 + l(rec3,por2,6) + l(rec3,por3,6) + l(rec3,por4,6) + l(rec3,por5,6)
 + l(rec3,por6,6) + l(rec3,por7,6) + l(rec3,por8,6) + l(rec3,por9,6)
 + l(rec3,por10,6) + l(rec3,por11,6) + l(rec3,por12,6) + l(rec3,por13,6)
 + l(rec3,por14,6) + l(rec3,por15,6) >= -59
 totalMinCoverage(rec3,7): - 60 h(rec3,7) - w(rec3) + l(rec3,por1,7)
 + l(rec3,por2,7) + l(rec3,por3,7) + l(rec3,por4,7) + l(rec3,por5,7)
 + l(rec3,por6,7) + l(rec3,por7,7) + l(rec3,por8,7) + l(rec3,por9,7)
 + l(rec3,por10,7) + l(rec3,por11,7) + l(rec3,por12,7) + l(rec3,por13,7)
 + l(rec3,por14,7) + l(rec3,por15,7) >= -59
 totalMinCoverage(rec3,8): - 60 h(rec3,8) - w(rec3) + l(rec3,por1,8)
 + l(rec3,por2,8) + l(rec3,por3,8) + l(rec3,por4,8) + l(rec3,por5,8)
 + l(rec3,por6,8) + l(rec3,por7,8) + l(rec3,por8,8) + l(rec3,por9,8)
 + l(rec3,por10,8) + l(rec3,por11,8) + l(rec3,por12,8) + l(rec3,por13,8)
 + l(rec3,por14,8) + l(rec3,por15,8) >= -59
 totalMinCoverage(rec4,1): - 60 h(rec4,1) - w(rec4) + l(rec4,por1,1)
 + l(rec4,por2,1) + l(rec4,por3,1) + l(rec4,por4,1) + l(rec4,por5,1)
 + l(rec4,por6,1) + l(rec4,por7,1) + l(rec4,por8,1) + l(rec4,por9,1)
 + l(rec4,por10,1) + l(rec4,por11,1) + l(rec4,por12,1) + l(rec4,por13,1)
 + l(rec4,por14,1) + l(rec4,por15,1) >= -59
 totalMinCoverage(rec4,2): - 60 h(rec4,2) - w(rec4) + l(rec4,por1,2)
 + l(rec4,por2,2) + l(rec4,por3,2) + l(rec4,por4,2) + l(rec4,por5,2)
 + l(rec4,por6,2) + l(rec4,por7,2) + l(rec4,por8,2) + l(rec4,por9,2)
 + l(rec4,por10,2) + l(rec4,por11,2) + l(rec4,por12,2) + l(rec4,por13,2)
 + l(rec4,por14,2) + l(rec4,por15,2) >= -59
 totalMinCoverage(rec4,3): - 60 h(rec4,3) - w(rec4) + l(rec4,por1,3)
 + l(rec4,por2,3) + l(rec4,por3,3) + l(rec4,por4,3) + l(rec4,por5,3)
 + l(rec4,por6,3) + l(rec4,por7,3) + l(rec4,por8,3) + l(rec4,por9,3)
 + l(rec4,por10,3) + l(rec4,por11,3) + l(rec4,por12,3) + l(rec4,por13,3)
 + l(rec4,por14,3) + l(rec4,por15,3) >= -59
 totalMinCoverage(rec4,4): - 60 h(rec4,4) - w(rec4) + l(rec4,por1,4)
 + l(rec4,por2,4) + l(rec4,por3,4) + l(rec4,por4,4) + l(rec4,por5,4)
 + l(rec4,por6,4) + l(rec4,por7,4) + l(rec4,por8,4) + l(rec4,por9,4)
 + l(rec4,por10,4) + l(rec4,por11,4) + l(rec4,por12,4) + l(rec4,por13,4)
 + l(rec4,por14,4) + l(rec4,por15,4) >= -59
 totalMinCoverage(rec4,5): - 60 h(rec4,5) - w(rec4) + l(rec4,por1,5)
 + l(rec4,por2,5) + l(rec4,por3,5) + l(rec4,por4,5) + l(rec4,por5,5)
 + l(rec4,por6,5) + l(rec4,por7,5) + l(rec4,por8,5) + l(rec4,por9,5)
 + l(rec4,por10,5) + l(rec4,por11,5) + l(rec4,por12,5) + l(rec4,por13,5)
 + l(rec4,por14,5) + l(rec4,por15,5) >= -59
 totalMinCoverage(rec4,6): - 60 h(rec4,6) - w(rec4) + l(rec4,por1,6)
 + l(rec4,por2,6) + l(rec4,por3,6) + l(rec4,por4,6) + l(rec4,por5,6)
 + l(rec4,por6,6) + l(rec4,por7,6) + l(rec4,por8,6) + l(rec4,por9,6)
 + l(rec4,por10,6) + l(rec4,por11,6) + l(rec4,por12,6) + l(rec4,por13,6)
 + l(rec4,por14,6) + l(rec4,por15,6) >= -59
 totalMinCoverage(rec4,7): - 60 h(rec4,7) - w(rec4) + l(rec4,por1,7)
 + l(rec4,por2,7) + l(rec4,por3,7) + l(rec4,por4,7) + l(rec4,por5,7)
 + l(rec4,por6,7) + l(rec4,por7,7) + l(rec4,por8,7) + l(rec4,por9,7)
 + l(rec4,por10,7) + l(rec4,por11,7) + l(rec4,por12,7) + l(rec4,por13,7)
 + l(rec4,por14,7) + l(rec4,por15,7) >= -59
 totalMinCoverage(rec4,8): - 60 h(rec4,8) - w(rec4) + l(rec4,por1,8)
 + l(rec4,por2,8) + l(rec4,por3,8) + l(rec4,por4,8) + l(rec4,por5,8)
 + l(rec4,por6,8) + l(rec4,por7,8) + l(rec4,por8,8) + l(rec4,por9,8)
 + l(rec4,por10,8) + l(rec4,por11,8) + l(rec4,por12,8) + l(rec4,por13,8)
 + l(rec4,por14,8) + l(rec4,por15,8) >= -59
 requiredResources(rec1,CLB): - 20 l(rec1,por1,1) - 20 l(rec1,por1,2)
 - 20 l(rec1,por1,3) - 20 l(rec1,por1,4) - 20 l(rec1,por1,5)
 - 20 l(rec1,por1,6) - 20 l(rec1,por1,7) - 20 l(rec1,por1,8)
 - 20 l(rec1,por3,1) - 20 l(rec1,por3,2) - 20 l(rec1,por3,3)
 - 20 l(rec1,por3,4) - 20 l(rec1,por3,5) - 20 l(rec1,por3,6)
 - 20 l(rec1,por3,7) - 20 l(rec1,por3,8) - 20 l(rec1,por5,1)
 - 20 l(rec1,por5,2) - 20 l(rec1,por5,3) - 20 l(rec1,por5,4)
 - 20 l(rec1,por5,5) - 20 l(rec1,por5,6) - 20 l(rec1,por5,7)
 - 20 l(rec1,por5,8) - 20 l(rec1,por7,1) - 20 l(rec1,por7,2)
 - 20 l(rec1,por7,3) - 20 l(rec1,por7,4) - 20 l(rec1,por7,5)
 - 20 l(rec1,por7,6) - 20 l(rec1,por7,7) - 20 l(rec1,por7,8)
 - 20 l(rec1,por9,1) - 20 l(rec1,por9,2) - 20 l(rec1,por9,3)
 - 20 l(rec1,por9,4) - 20 l(rec1,por9,5) - 20 l(rec1,por9,6)
 - 20 l(rec1,por9,7) - 20 l(rec1,por9,8) - 20 l(rec1,por11,1)
 - 20 l(rec1,por11,2) - 20 l(rec1,por11,3) - 20 l(rec1,por11,4)
 - 20 l(rec1,por11,5) - 20 l(rec1,por11,6) - 20 l(rec1,por11,7)
 - 20 l(rec1,por11,8) - 20 l(rec1,por13,1) - 20 l(rec1,por13,2)
 - 20 l(rec1,por13,3) - 20 l(rec1,por13,4) - 20 l(rec1,por13,5)
 - 20 l(rec1,por13,6) - 20 l(rec1,por13,7) - 20 l(rec1,por13,8)
 - 20 l(rec1,por15,1) - 20 l(rec1,por15,2) - 20 l(rec1,por15,3)
 - 20 l(rec1,por15,4) - 20 l(rec1,por15,5) - 20 l(rec1,por15,6)
 - 20 l(rec1,por15,7) - 20 l(rec1,por15,8) + DRes(rec1,CLB) = -1000
 requiredResources(rec1,DSP): - 8 l(rec1,por6,1) - 8 l(rec1,por6,2)
 - 8 l(rec1,por6,3) - 8 l(rec1,por6,4) - 8 l(rec1,por6,5)
 - 8 l(rec1,por6,6) - 8 l(rec1,por6,7) - 8 l(rec1,por6,8)
 + DRes(rec1,DSP) = -0
 requiredResources(rec1,BRAM): - 4 l(rec1,por2,1) - 4 l(rec1,por2,2)
 - 4 l(rec1,por2,3) - 4 l(rec1,por2,4) - 4 l(rec1,por2,5)
 - 4 l(rec1,por2,6) - 4 l(rec1,por2,7) - 4 l(rec1,por2,8)
 - 4 l(rec1,por4,1) - 4 l(rec1,por4,2) - 4 l(rec1,por4,3)
 - 4 l(rec1,por4,4) - 4 l(rec1,por4,5) - 4 l(rec1,por4,6)
 - 4 l(rec1,por4,7) - 4 l(rec1,por4,8) - 4 l(rec1,por10,1)
 - 4 l(rec1,por10,2) - 4 l(rec1,por10,3) - 4 l(rec1,por10,4)
 - 4 l(rec1,por10,5) - 4 l(rec1,por10,6) - 4 l(rec1,por10,7)
 - 4 l(rec1,por10,8) - 4 l(rec1,por12,1) - 4 l(rec1,por12,2)
 - 4 l(rec1,por12,3) - 4 l(rec1,por12,4) - 4 l(rec1,por12,5)
 - 4 l(rec1,por12,6) - 4 l(rec1,por12,7) - 4 l(rec1,por12,8)
 - 4 l(rec1,por14,1) - 4 l(rec1,por14,2) - 4 l(rec1,por14,3)
 - 4 l(rec1,por14,4) - 4 l(rec1,por14,5) - 4 l(rec1,por14,6)
 - 4 l(rec1,por14,7) - 4 l(rec1,por14,8) + DRes(rec1,BRAM) = -0
 requiredResources(rec2,CLB): - 20 l(rec2,por1,1) - 20 l(rec2,por1,2)
 - 20 l(rec2,por1,3) - 20 l(rec2,por1,4) - 20 l(rec2,por1,5)
 - 20 l(rec2,por1,6) - 20 l(rec2,por1,7) - 20 l(rec2,por1,8)
 - 20 l(rec2,por3,1) - 20 l(rec2,por3,2) - 20 l(rec2,por3,3)
 - 20 l(rec2,por3,4) - 20 l(rec2,por3,5) - 20 l(rec2,por3,6)
 - 20 l(rec2,por3,7) - 20 l(rec2,por3,8) - 20 l(rec2,por5,1)
 - 20 l(rec2,por5,2) - 20 l(rec2,por5,3) - 20 l(rec2,por5,4)
 - 20 l(rec2,por5,5) - 20 l(rec2,por5,6) - 20 l(rec2,por5,7)
 - 20 l(rec2,por5,8) - 20 l(rec2,por7,1) - 20 l(rec2,por7,2)
 - 20 l(rec2,por7,3) - 20 l(rec2,por7,4) - 20 l(rec2,por7,5)
 - 20 l(rec2,por7,6) - 20 l(rec2,por7,7) - 20 l(rec2,por7,8)
 - 20 l(rec2,por9,1) - 20 l(rec2,por9,2) - 20 l(rec2,por9,3)
 - 20 l(rec2,por9,4) - 20 l(rec2,por9,5) - 20 l(rec2,por9,6)
 - 20 l(rec2,por9,7) - 20 l(rec2,por9,8) - 20 l(rec2,por11,1)
 - 20 l(rec2,por11,2) - 20 l(rec2,por11,3) - 20 l(rec2,por11,4)
 - 20 l(rec2,por11,5) - 20 l(rec2,por11,6) - 20 l(rec2,por11,7)
 - 20 l(rec2,por11,8) - 20 l(rec2,por13,1) - 20 l(rec2,por13,2)
 - 20 l(rec2,por13,3) - 20 l(rec2,por13,4) - 20 l(rec2,por13,5)
 - 20 l(rec2,por13,6) - 20 l(rec2,por13,7) - 20 l(rec2,por13,8)
 - 20 l(rec2,por15,1) - 20 l(rec2,por15,2) - 20 l(rec2,por15,3)
 - 20 l(rec2,por15,4) - 20 l(rec2,por15,5) - 20 l(rec2,por15,6)
 - 20 l(rec2,por15,7) - 20 l(rec2,por15,8) + DRes(rec2,CLB) = -300
 requiredResources(rec2,DSP): - 8 l(rec2,por6,1) - 8 l(rec2,por6,2)
 - 8 l(rec2,por6,3) - 8 l(rec2,por6,4) - 8 l(rec2,por6,5)
 - 8 l(rec2,por6,6) - 8 l(rec2,por6,7) - 8 l(rec2,por6,8)
 + DRes(rec2,DSP) = -0
 requiredResources(rec2,BRAM): - 4 l(rec2,por2,1) - 4 l(rec2,por2,2)
 - 4 l(rec2,por2,3) - 4 l(rec2,por2,4) - 4 l(rec2,por2,5)
 - 4 l(rec2,por2,6) - 4 l(rec2,por2,7) - 4 l(rec2,por2,8)
 - 4 l(rec2,por4,1) - 4 l(rec2,por4,2) - 4 l(rec2,por4,3)
 - 4 l(rec2,por4,4) - 4 l(rec2,por4,5) - 4 l(rec2,por4,6)
 - 4 l(rec2,por4,7) - 4 l(rec2,por4,8) - 4 l(rec2,por10,1)
 - 4 l(rec2,por10,2) - 4 l(rec2,por10,3) - 4 l(rec2,por10,4)
 - 4 l(rec2,por10,5) - 4 l(rec2,por10,6) - 4 l(rec2,por10,7)
 - 4 l(rec2,por10,8) - 4 l(rec2,por12,1) - 4 l(rec2,por12,2)
 - 4 l(rec2,por12,3) - 4 l(rec2,por12,4) - 4 l(rec2,por12,5)
 - 4 l(rec2,por12,6) - 4 l(rec2,por12,7) - 4 l(rec2,por12,8)
 - 4 l(rec2,por14,1) - 4 l(rec2,por14,2) - 4 l(rec2,por14,3)
 - 4 l(rec2,por14,4) - 4 l(rec2,por14,5) - 4 l(rec2,por14,6)
 - 4 l(rec2,por14,7) - 4 l(rec2,por14,8) + DRes(rec2,BRAM) = -4
 requiredResources(rec3,CLB): - 20 l(rec3,por1,1) - 20 l(rec3,por1,2)
 - 20 l(rec3,por1,3) - 20 l(rec3,por1,4) - 20 l(rec3,por1,5)
 - 20 l(rec3,por1,6) - 20 l(rec3,por1,7) - 20 l(rec3,por1,8)
 - 20 l(rec3,por3,1) - 20 l(rec3,por3,2) - 20 l(rec3,por3,3)
 - 20 l(rec3,por3,4) - 20 l(rec3,por3,5) - 20 l(rec3,por3,6)
 - 20 l(rec3,por3,7) - 20 l(rec3,por3,8) - 20 l(rec3,por5,1)
 - 20 l(rec3,por5,2) - 20 l(rec3,por5,3) - 20 l(rec3,por5,4)
 - 20 l(rec3,por5,5) - 20 l(rec3,por5,6) - 20 l(rec3,por5,7)
 - 20 l(rec3,por5,8) - 20 l(rec3,por7,1) - 20 l(rec3,por7,2)
 - 20 l(rec3,por7,3) - 20 l(rec3,por7,4) - 20 l(rec3,por7,5)
 - 20 l(rec3,por7,6) - 20 l(rec3,por7,7) - 20 l(rec3,por7,8)
 - 20 l(rec3,por9,1) - 20 l(rec3,por9,2) - 20 l(rec3,por9,3)
 - 20 l(rec3,por9,4) - 20 l(rec3,por9,5) - 20 l(rec3,por9,6)
 - 20 l(rec3,por9,7) - 20 l(rec3,por9,8) - 20 l(rec3,por11,1)
 - 20 l(rec3,por11,2) - 20 l(rec3,por11,3) - 20 l(rec3,por11,4)
 - 20 l(rec3,por11,5) - 20 l(rec3,por11,6) - 20 l(rec3,por11,7)
 - 20 l(rec3,por11,8) - 20 l(rec3,por13,1) - 20 l(rec3,por13,2)
 - 20 l(rec3,por13,3) - 20 l(rec3,por13,4) - 20 l(rec3,por13,5)
 - 20 l(rec3,por13,6) - 20 l(rec3,por13,7) - 20 l(rec3,por13,8)
 - 20 l(rec3,por15,1) - 20 l(rec3,por15,2) - 20 l(rec3,por15,3)
 - 20 l(rec3,por15,4) - 20 l(rec3,por15,5) - 20 l(rec3,por15,6)
 - 20 l(rec3,por15,7) - 20 l(rec3,por15,8) + DRes(rec3,CLB) = -200
 requiredResources(rec3,DSP): - 8 l(rec3,por6,1) - 8 l(rec3,por6,2)
 - 8 l(rec3,por6,3) - 8 l(rec3,por6,4) - 8 l(rec3,por6,5)
 - 8 l(rec3,por6,6) - 8 l(rec3,por6,7) - 8 l(rec3,por6,8)
 + DRes(rec3,DSP) = -4
 requiredResources(rec3,BRAM): - 4 l(rec3,por2,1) - 4 l(rec3,por2,2)
 - 4 l(rec3,por2,3) - 4 l(rec3,por2,4) - 4 l(rec3,por2,5)
 - 4 l(rec3,por2,6) - 4 l(rec3,por2,7) - 4 l(rec3,por2,8)
 - 4 l(rec3,por4,1) - 4 l(rec3,por4,2) - 4 l(rec3,por4,3)
 - 4 l(rec3,por4,4) - 4 l(rec3,por4,5) - 4 l(rec3,por4,6)
 - 4 l(rec3,por4,7) - 4 l(rec3,por4,8) - 4 l(rec3,por10,1)
 - 4 l(rec3,por10,2) - 4 l(rec3,por10,3) - 4 l(rec3,por10,4)
 - 4 l(rec3,por10,5) - 4 l(rec3,por10,6) - 4 l(rec3,por10,7)
 - 4 l(rec3,por10,8) - 4 l(rec3,por12,1) - 4 l(rec3,por12,2)
 - 4 l(rec3,por12,3) - 4 l(rec3,por12,4) - 4 l(rec3,por12,5)
 - 4 l(rec3,por12,6) - 4 l(rec3,por12,7) - 4 l(rec3,por12,8)
 - 4 l(rec3,por14,1) - 4 l(rec3,por14,2) - 4 l(rec3,por14,3)
 - 4 l(rec3,por14,4) - 4 l(rec3,por14,5) - 4 l(rec3,por14,6)
 - 4 l(rec3,por14,7) - 4 l(rec3,por14,8) + DRes(rec3,BRAM) = -0
 requiredResources(rec4,CLB): - 20 l(rec4,por1,1) - 20 l(rec4,por1,2)
 - 20 l(rec4,por1,3) - 20 l(rec4,por1,4) - 20 l(rec4,por1,5)
 - 20 l(rec4,por1,6) - 20 l(rec4,por1,7) - 20 l(rec4,por1,8)
 - 20 l(rec4,por3,1) - 20 l(rec4,por3,2) - 20 l(rec4,por3,3)
 - 20 l(rec4,por3,4) - 20 l(rec4,por3,5) - 20 l(rec4,por3,6)
 - 20 l(rec4,por3,7) - 20 l(rec4,por3,8) - 20 l(rec4,por5,1)
 - 20 l(rec4,por5,2) - 20 l(rec4,por5,3) - 20 l(rec4,por5,4)
 - 20 l(rec4,por5,5) - 20 l(rec4,por5,6) - 20 l(rec4,por5,7)
 - 20 l(rec4,por5,8) - 20 l(rec4,por7,1) - 20 l(rec4,por7,2)
 - 20 l(rec4,por7,3) - 20 l(rec4,por7,4) - 20 l(rec4,por7,5)
 - 20 l(rec4,por7,6) - 20 l(rec4,por7,7) - 20 l(rec4,por7,8)
 - 20 l(rec4,por9,1) - 20 l(rec4,por9,2) - 20 l(rec4,por9,3)
 - 20 l(rec4,por9,4) - 20 l(rec4,por9,5) - 20 l(rec4,por9,6)
 - 20 l(rec4,por9,7) - 20 l(rec4,por9,8) - 20 l(rec4,por11,1)
 - 20 l(rec4,por11,2) - 20 l(rec4,por11,3) - 20 l(rec4,por11,4)
 - 20 l(rec4,por11,5) - 20 l(rec4,por11,6) - 20 l(rec4,por11,7)
 - 20 l(rec4,por11,8) - 20 l(rec4,por13,1) - 20 l(rec4,por13,2)
 - 20 l(rec4,por13,3) - 20 l(rec4,por13,4) - 20 l(rec4,por13,5)
 - 20 l(rec4,por13,6) - 20 l(rec4,por13,7) - 20 l(rec4,por13,8)
 - 20 l(rec4,por15,1) - 20 l(rec4,por15,2) - 20 l(rec4,por15,3)
 - 20 l(rec4,por15,4) - 20 l(rec4,por15,5) - 20 l(rec4,por15,6)
 - 20 l(rec4,por15,7) - 20 l(rec4,por15,8) + DRes(rec4,CLB) = -200
 requiredResources(rec4,DSP): - 8 l(rec4,por6,1) - 8 l(rec4,por6,2)
 - 8 l(rec4,por6,3) - 8 l(rec4,por6,4) - 8 l(rec4,por6,5)
 - 8 l(rec4,por6,6) - 8 l(rec4,por6,7) - 8 l(rec4,por6,8)
 + DRes(rec4,DSP) = -0
 requiredResources(rec4,BRAM): - 4 l(rec4,por2,1) - 4 l(rec4,por2,2)
 - 4 l(rec4,por2,3) - 4 l(rec4,por2,4) - 4 l(rec4,por2,5)
 - 4 l(rec4,por2,6) - 4 l(rec4,por2,7) - 4 l(rec4,por2,8)
 - 4 l(rec4,por4,1) - 4 l(rec4,por4,2) - 4 l(rec4,por4,3)
 - 4 l(rec4,por4,4) - 4 l(rec4,por4,5) - 4 l(rec4,por4,6)
 - 4 l(rec4,por4,7) - 4 l(rec4,por4,8) - 4 l(rec4,por10,1)
 - 4 l(rec4,por10,2) - 4 l(rec4,por10,3) - 4 l(rec4,por10,4)
 - 4 l(rec4,por10,5) - 4 l(rec4,por10,6) - 4 l(rec4,por10,7)
 - 4 l(rec4,por10,8) - 4 l(rec4,por12,1) - 4 l(rec4,por12,2)
 - 4 l(rec4,por12,3) - 4 l(rec4,por12,4) - 4 l(rec4,por12,5)
 - 4 l(rec4,por12,6) - 4 l(rec4,por12,7) - 4 l(rec4,por12,8)
 - 4 l(rec4,por14,1) - 4 l(rec4,por14,2) - 4 l(rec4,por14,3)
 - 4 l(rec4,por14,4) - 4 l(rec4,por14,5) - 4 l(rec4,por14,6)
 - 4 l(rec4,por14,7) - 4 l(rec4,por14,8) + DRes(rec4,BRAM) = -0
 minRegionDist(rec1,rec1): + DCx(rec1,rec1) + DCy(rec1,rec1) >= -0
 minRegionDist(rec1,rec2): + DCx(rec1,rec2) + DCy(rec1,rec2) >= -0
 minRegionDist(rec1,rec3): + DCx(rec1,rec3) + DCy(rec1,rec3) >= -0
 minRegionDist(rec1,rec4): + DCx(rec1,rec4) + DCy(rec1,rec4) >= -0
 minRegionDist(rec2,rec1): + DCx(rec2,rec1) + DCy(rec2,rec1) >= -0
 minRegionDist(rec2,rec2): + DCx(rec2,rec2) + DCy(rec2,rec2) >= -0
 minRegionDist(rec2,rec3): + DCx(rec2,rec3) + DCy(rec2,rec3) >= -0
 minRegionDist(rec2,rec4): + DCx(rec2,rec4) + DCy(rec2,rec4) >= -0
 minRegionDist(rec3,rec1): + DCx(rec3,rec1) + DCy(rec3,rec1) >= -0
 minRegionDist(rec3,rec2): + DCx(rec3,rec2) + DCy(rec3,rec2) >= -0
 minRegionDist(rec3,rec3): + DCx(rec3,rec3) + DCy(rec3,rec3) >= -0
 minRegionDist(rec3,rec4): + DCx(rec3,rec4) + DCy(rec3,rec4) >= -0
 minRegionDist(rec4,rec1): + DCx(rec4,rec1) + DCy(rec4,rec1) >= -0
 minRegionDist(rec4,rec2): + DCx(rec4,rec2) + DCy(rec4,rec2) >= -0
 minRegionDist(rec4,rec3): + DCx(rec4,rec3) + DCy(rec4,rec3) >= -0
 minRegionDist(rec4,rec4): + DCx(rec4,rec4) + DCy(rec4,rec4) >= -0
 widthLowerBound(rec1): + w(rec1) >= 6
 widthLowerBound(rec2): + w(rec2) >= 1
 widthLowerBound(rec3): + w(rec3) >= 1
 widthLowerBound(rec4): + w(rec4) >= 1
 heigthLowerBound(rec1): + a(rec1) >= 1
 heigthLowerBound(rec2): + a(rec2) >= 1
 heigthLowerBound(rec3): + a(rec3) >= 1
 heigthLowerBound(rec4): + a(rec4) >= 1
 selectedRowLowerBound(rec1,CLB): + 1080 h(rec1,1) + 1080 h(rec1,2)
 + 1080 h(rec1,3) + 1080 h(rec1,4) + 1080 h(rec1,5) + 1080 h(rec1,6)
 + 1080 h(rec1,7) + 1080 h(rec1,8) >= 1000
 selectedRowLowerBound(rec1,DSP): + 8 h(rec1,1) + 8 h(rec1,2)
 + 8 h(rec1,3) + 8 h(rec1,4) + 8 h(rec1,5) + 8 h(rec1,6) + 8 h(rec1,7)
 + 8 h(rec1,8) >= -0
 selectedRowLowerBound(rec1,BRAM): + 20 h(rec1,1) + 20 h(rec1,2)
 + 20 h(rec1,3) + 20 h(rec1,4) + 20 h(rec1,5) + 20 h(rec1,6)
 + 20 h(rec1,7) + 20 h(rec1,8) >= -0
 selectedRowLowerBound(rec2,CLB): + 1080 h(rec2,1) + 1080 h(rec2,2)
 + 1080 h(rec2,3) + 1080 h(rec2,4) + 1080 h(rec2,5) + 1080 h(rec2,6)
 + 1080 h(rec2,7) + 1080 h(rec2,8) >= 300
 selectedRowLowerBound(rec2,DSP): + 8 h(rec2,1) + 8 h(rec2,2)
 + 8 h(rec2,3) + 8 h(rec2,4) + 8 h(rec2,5) + 8 h(rec2,6) + 8 h(rec2,7)
 + 8 h(rec2,8) >= -0
 selectedRowLowerBound(rec2,BRAM): + 20 h(rec2,1) + 20 h(rec2,2)
 + 20 h(rec2,3) + 20 h(rec2,4) + 20 h(rec2,5) + 20 h(rec2,6)
 + 20 h(rec2,7) + 20 h(rec2,8) >= 4
 selectedRowLowerBound(rec3,CLB): + 1080 h(rec3,1) + 1080 h(rec3,2)
 + 1080 h(rec3,3) + 1080 h(rec3,4) + 1080 h(rec3,5) + 1080 h(rec3,6)
 + 1080 h(rec3,7) + 1080 h(rec3,8) >= 200
 selectedRowLowerBound(rec3,DSP): + 8 h(rec3,1) + 8 h(rec3,2)
 + 8 h(rec3,3) + 8 h(rec3,4) + 8 h(rec3,5) + 8 h(rec3,6) + 8 h(rec3,7)
 + 8 h(rec3,8) >= 4
 selectedRowLowerBound(rec3,BRAM): + 20 h(rec3,1) + 20 h(rec3,2)
 + 20 h(rec3,3) + 20 h(rec3,4) + 20 h(rec3,5) + 20 h(rec3,6)
 + 20 h(rec3,7) + 20 h(rec3,8) >= -0
 selectedRowLowerBound(rec4,CLB): + 1080 h(rec4,1) + 1080 h(rec4,2)
 + 1080 h(rec4,3) + 1080 h(rec4,4) + 1080 h(rec4,5) + 1080 h(rec4,6)
 + 1080 h(rec4,7) + 1080 h(rec4,8) >= 200
 selectedRowLowerBound(rec4,DSP): + 8 h(rec4,1) + 8 h(rec4,2)
 + 8 h(rec4,3) + 8 h(rec4,4) + 8 h(rec4,5) + 8 h(rec4,6) + 8 h(rec4,7)
 + 8 h(rec4,8) >= -0
 selectedRowLowerBound(rec4,BRAM): + 20 h(rec4,1) + 20 h(rec4,2)
 + 20 h(rec4,3) + 20 h(rec4,4) + 20 h(rec4,5) + 20 h(rec4,6)
 + 20 h(rec4,7) + 20 h(rec4,8) >= -0
 whBound(rec1,1,2): + w(rec1) + 25 a(rec1) >= 74
 whBound(rec1,2,3): + w(rec1) + 8 a(rec1) >= 40
 whBound(rec1,3,4): + w(rec1) + 4 a(rec1) >= 28
 whBound(rec1,4,5): + w(rec1) + 3 a(rec1) >= 24
 whBound(rec1,5,6): + w(rec1) + a(rec1) >= 14
 whBound(rec1,5,7): + w(rec1) + a(rec1) >= 14
 whBound(rec1,5,8): + w(rec1) + a(rec1) >= 14
 whBound(rec1,6,7): + w(rec1) + a(rec1) >= 14
 whBound(rec1,6,8): + w(rec1) + a(rec1) >= 14
 whBound(rec1,7,8): + w(rec1) + a(rec1) >= 14
 whBound(rec2,1,2): + w(rec2) + 8 a(rec2) >= 23
 whBound(rec2,2,3): + w(rec2) + 2 a(rec2) >= 11
 whBound(rec2,2,4): + w(rec2) + 2 a(rec2) >= 11
 whBound(rec2,3,4): + w(rec2) + 2 a(rec2) >= 11
 whBound(rec2,4,6): + w(rec2) + 0.5 a(rec2) >= 5
 whBound(rec2,4,8): + w(rec2) + 0.5 a(rec2) >= 5
 whBound(rec2,6,8): + w(rec2) + 0.5 a(rec2) >= 5
 whBound(rec3,1,2): + w(rec3) + 5 a(rec3) >= 15
 whBound(rec3,2,3): + w(rec3) + 2 a(rec3) >= 9
 whBound(rec3,3,4): + w(rec3) + a(rec3) >= 6
 whBound(rec3,4,6): + w(rec3) + 0.5 a(rec3) >= 4
 whBound(rec3,6,7): + w(rec3) >= 1
 whBound(rec3,6,8): + w(rec3) >= 1
 whBound(rec3,7,8): + w(rec3) >= 1
 whBound(rec4,1,2): + w(rec4) + 5 a(rec4) >= 14
 whBound(rec4,2,3): + w(rec4) + a(rec4) >= 6
 whBound(rec4,2,4): + w(rec4) + a(rec4) >= 6
 whBound(rec4,2,5): + w(rec4) + a(rec4) >= 6
 whBound(rec4,3,4): + w(rec4) + a(rec4) >= 6
 whBound(rec4,3,5): + w(rec4) + a(rec4) >= 6
 whBound(rec4,4,5): + w(rec4) + a(rec4) >= 6
 whBound(rec4,5,6): + w(rec4) >= 1
 whBound(rec4,5,7): + w(rec4) >= 1
 whBound(rec4,5,8): + w(rec4) >= 1
 whBound(rec4,6,7): + w(rec4) >= 1
 whBound(rec4,6,8): + w(rec4) >= 1
 whBound(rec4,7,8): + w(rec4) >= 1
 minCentroidDistance(rec1,rec2): + DCx(rec1,rec2) + DCy(rec1,rec2) >= 9
 minCentroidDistance(rec1,rec3): + DCx(rec1,rec3) + DCy(rec1,rec3) >= 9
 minCentroidDistance(rec1,rec4): + DCx(rec1,rec4) + DCy(rec1,rec4) >= 9
 minCentroidDistance(rec2,rec3): + DCx(rec2,rec3) + DCy(rec2,rec3) >= 4
 minCentroidDistance(rec2,rec4): + DCx(rec2,rec4) + DCy(rec2,rec4) >= 4
 minCentroidDistance(rec3,rec4): + DCx(rec3,rec4) + DCy(rec3,rec4) >= 4
 minXCentroidDistance(rec1,rec2): + 60 g1(rec1,rec2) + DCx(rec1,rec2)
 >= 9
 minXCentroidDistance(rec1,rec3): + 60 g1(rec1,rec3) + DCx(rec1,rec3)
 >= 9
 minXCentroidDistance(rec1,rec4): + 60 g1(rec1,rec4) + DCx(rec1,rec4)
 >= 9
 minXCentroidDistance(rec2,rec3): + 60 g1(rec2,rec3) + DCx(rec2,rec3)
 >= 4
 minXCentroidDistance(rec2,rec4): + 60 g1(rec2,rec4) + DCx(rec2,rec4)
 >= 4
 minXCentroidDistance(rec3,rec4): + 60 g1(rec3,rec4) + DCx(rec3,rec4)
 >= 4
 minXCentroidDistance2(rec1,rec2,1): - 60 h(rec1,1) - 60 h(rec2,1)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,2): - 60 h(rec1,2) - 60 h(rec2,2)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,3): - 60 h(rec1,3) - 60 h(rec2,3)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,4): - 60 h(rec1,4) - 60 h(rec2,4)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,5): - 60 h(rec1,5) - 60 h(rec2,5)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,6): - 60 h(rec1,6) - 60 h(rec2,6)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,7): - 60 h(rec1,7) - 60 h(rec2,7)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec2,8): - 60 h(rec1,8) - 60 h(rec2,8)
 + DCx(rec1,rec2) >= -111
 minXCentroidDistance2(rec1,rec3,1): - 60 h(rec1,1) - 60 h(rec3,1)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,2): - 60 h(rec1,2) - 60 h(rec3,2)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,3): - 60 h(rec1,3) - 60 h(rec3,3)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,4): - 60 h(rec1,4) - 60 h(rec3,4)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,5): - 60 h(rec1,5) - 60 h(rec3,5)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,6): - 60 h(rec1,6) - 60 h(rec3,6)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,7): - 60 h(rec1,7) - 60 h(rec3,7)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec3,8): - 60 h(rec1,8) - 60 h(rec3,8)
 + DCx(rec1,rec3) >= -111
 minXCentroidDistance2(rec1,rec4,1): - 60 h(rec1,1) - 60 h(rec4,1)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,2): - 60 h(rec1,2) - 60 h(rec4,2)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,3): - 60 h(rec1,3) - 60 h(rec4,3)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,4): - 60 h(rec1,4) - 60 h(rec4,4)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,5): - 60 h(rec1,5) - 60 h(rec4,5)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,6): - 60 h(rec1,6) - 60 h(rec4,6)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,7): - 60 h(rec1,7) - 60 h(rec4,7)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec1,rec4,8): - 60 h(rec1,8) - 60 h(rec4,8)
 + DCx(rec1,rec4) >= -111
 minXCentroidDistance2(rec2,rec3,1): - 60 h(rec2,1) - 60 h(rec3,1)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,2): - 60 h(rec2,2) - 60 h(rec3,2)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,3): - 60 h(rec2,3) - 60 h(rec3,3)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,4): - 60 h(rec2,4) - 60 h(rec3,4)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,5): - 60 h(rec2,5) - 60 h(rec3,5)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,6): - 60 h(rec2,6) - 60 h(rec3,6)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,7): - 60 h(rec2,7) - 60 h(rec3,7)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec3,8): - 60 h(rec2,8) - 60 h(rec3,8)
 + DCx(rec2,rec3) >= -116
 minXCentroidDistance2(rec2,rec4,1): - 60 h(rec2,1) - 60 h(rec4,1)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,2): - 60 h(rec2,2) - 60 h(rec4,2)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,3): - 60 h(rec2,3) - 60 h(rec4,3)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,4): - 60 h(rec2,4) - 60 h(rec4,4)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,5): - 60 h(rec2,5) - 60 h(rec4,5)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,6): - 60 h(rec2,6) - 60 h(rec4,6)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,7): - 60 h(rec2,7) - 60 h(rec4,7)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec2,rec4,8): - 60 h(rec2,8) - 60 h(rec4,8)
 + DCx(rec2,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,1): - 60 h(rec3,1) - 60 h(rec4,1)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,2): - 60 h(rec3,2) - 60 h(rec4,2)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,3): - 60 h(rec3,3) - 60 h(rec4,3)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,4): - 60 h(rec3,4) - 60 h(rec4,4)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,5): - 60 h(rec3,5) - 60 h(rec4,5)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,6): - 60 h(rec3,6) - 60 h(rec4,6)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,7): - 60 h(rec3,7) - 60 h(rec4,7)
 + DCx(rec3,rec4) >= -116
 minXCentroidDistance2(rec3,rec4,8): - 60 h(rec3,8) - 60 h(rec4,8)
 + DCx(rec3,rec4) >= -116
 centroidXDistanceSimmetry(rec1,rec2): + DCx(rec1,rec2) - DCx(rec2,rec1)
 = -0
 centroidXDistanceSimmetry(rec1,rec3): + DCx(rec1,rec3) - DCx(rec3,rec1)
 = -0
 centroidXDistanceSimmetry(rec1,rec4): + DCx(rec1,rec4) - DCx(rec4,rec1)
 = -0
 centroidXDistanceSimmetry(rec2,rec1): - DCx(rec1,rec2) + DCx(rec2,rec1)
 = -0
 centroidXDistanceSimmetry(rec2,rec3): + DCx(rec2,rec3) - DCx(rec3,rec2)
 = -0
 centroidXDistanceSimmetry(rec2,rec4): + DCx(rec2,rec4) - DCx(rec4,rec2)
 = -0
 centroidXDistanceSimmetry(rec3,rec1): - DCx(rec1,rec3) + DCx(rec3,rec1)
 = -0
 centroidXDistanceSimmetry(rec3,rec2): - DCx(rec2,rec3) + DCx(rec3,rec2)
 = -0
 centroidXDistanceSimmetry(rec3,rec4): + DCx(rec3,rec4) - DCx(rec4,rec3)
 = -0
 centroidXDistanceSimmetry(rec4,rec1): - DCx(rec1,rec4) + DCx(rec4,rec1)
 = -0
 centroidXDistanceSimmetry(rec4,rec2): - DCx(rec2,rec4) + DCx(rec4,rec2)
 = -0
 centroidXDistanceSimmetry(rec4,rec3): - DCx(rec3,rec4) + DCx(rec4,rec3)
 = -0
 centroidYDistanceSimmetry(rec1,rec2): + DCy(rec1,rec2) - DCy(rec2,rec1)
 = -0
 centroidYDistanceSimmetry(rec1,rec3): + DCy(rec1,rec3) - DCy(rec3,rec1)
 = -0
 centroidYDistanceSimmetry(rec1,rec4): + DCy(rec1,rec4) - DCy(rec4,rec1)
 = -0
 centroidYDistanceSimmetry(rec2,rec1): - DCy(rec1,rec2) + DCy(rec2,rec1)
 = -0
 centroidYDistanceSimmetry(rec2,rec3): + DCy(rec2,rec3) - DCy(rec3,rec2)
 = -0
 centroidYDistanceSimmetry(rec2,rec4): + DCy(rec2,rec4) - DCy(rec4,rec2)
 = -0
 centroidYDistanceSimmetry(rec3,rec1): - DCy(rec1,rec3) + DCy(rec3,rec1)
 = -0
 centroidYDistanceSimmetry(rec3,rec2): - DCy(rec2,rec3) + DCy(rec3,rec2)
 = -0
 centroidYDistanceSimmetry(rec3,rec4): + DCy(rec3,rec4) - DCy(rec4,rec3)
 = -0
 centroidYDistanceSimmetry(rec4,rec1): - DCy(rec1,rec4) + DCy(rec4,rec1)
 = -0
 centroidYDistanceSimmetry(rec4,rec2): - DCy(rec2,rec4) + DCy(rec4,rec2)
 = -0
 centroidYDistanceSimmetry(rec4,rec3): - DCy(rec3,rec4) + DCy(rec4,rec3)
 = -0
 borderXDistanceSimmetry(rec1,rec2): + DBx(rec1,rec2) - DBx(rec2,rec1)
 = -0
 borderXDistanceSimmetry(rec1,rec3): + DBx(rec1,rec3) - DBx(rec3,rec1)
 = -0
 borderXDistanceSimmetry(rec1,rec4): + DBx(rec1,rec4) - DBx(rec4,rec1)
 = -0
 borderXDistanceSimmetry(rec2,rec1): - DBx(rec1,rec2) + DBx(rec2,rec1)
 = -0
 borderXDistanceSimmetry(rec2,rec3): + DBx(rec2,rec3) - DBx(rec3,rec2)
 = -0
 borderXDistanceSimmetry(rec2,rec4): + DBx(rec2,rec4) - DBx(rec4,rec2)
 = -0
 borderXDistanceSimmetry(rec3,rec1): - DBx(rec1,rec3) + DBx(rec3,rec1)
 = -0
 borderXDistanceSimmetry(rec3,rec2): - DBx(rec2,rec3) + DBx(rec3,rec2)
 = -0
 borderXDistanceSimmetry(rec3,rec4): + DBx(rec3,rec4) - DBx(rec4,rec3)
 = -0
 borderXDistanceSimmetry(rec4,rec1): - DBx(rec1,rec4) + DBx(rec4,rec1)
 = -0
 borderXDistanceSimmetry(rec4,rec2): - DBx(rec2,rec4) + DBx(rec4,rec2)
 = -0
 borderXDistanceSimmetry(rec4,rec3): - DBx(rec3,rec4) + DBx(rec4,rec3)
 = -0
 borderYDistanceSimmetry(rec1,rec2): + DBy(rec1,rec2) - DBy(rec2,rec1)
 = -0
 borderYDistanceSimmetry(rec1,rec3): + DBy(rec1,rec3) - DBy(rec3,rec1)
 = -0
 borderYDistanceSimmetry(rec1,rec4): + DBy(rec1,rec4) - DBy(rec4,rec1)
 = -0
 borderYDistanceSimmetry(rec2,rec1): - DBy(rec1,rec2) + DBy(rec2,rec1)
 = -0
 borderYDistanceSimmetry(rec2,rec3): + DBy(rec2,rec3) - DBy(rec3,rec2)
 = -0
 borderYDistanceSimmetry(rec2,rec4): + DBy(rec2,rec4) - DBy(rec4,rec2)
 = -0
 borderYDistanceSimmetry(rec3,rec1): - DBy(rec1,rec3) + DBy(rec3,rec1)
 = -0
 borderYDistanceSimmetry(rec3,rec2): - DBy(rec2,rec3) + DBy(rec3,rec2)
 = -0
 borderYDistanceSimmetry(rec3,rec4): + DBy(rec3,rec4) - DBy(rec4,rec3)
 = -0
 borderYDistanceSimmetry(rec4,rec1): - DBy(rec1,rec4) + DBy(rec4,rec1)
 = -0
 borderYDistanceSimmetry(rec4,rec2): - DBy(rec2,rec4) + DBy(rec4,rec2)
 = -0
 borderYDistanceSimmetry(rec4,rec3): - DBy(rec3,rec4) + DBy(rec4,rec3)
 = -0
 atRightCut(rec3,rec2): + absX(rec2,rec3) = -0
 atRightCut(rec4,rec2): + absX(rec2,rec4) = -0
 atLeftCut(rec1,rec2): + absX(rec1,rec2) = 1
 aboveCut(rec1,rec3): + absY(rec1,rec3) = -0
 aboveCut(rec1,rec4): + absY(rec1,rec4) = -0
 aboveCut(rec3,rec4): + absY(rec3,rec4) = -0
 atLeft(rec1,rec2): + x(rec1) - x(rec2) + w(rec1) <= -1
 atLeft(rec3,rec2): - x(rec2) + x(rec3) + w(rec3) <= -1
 atLeft(rec4,rec2): - x(rec2) + x(rec4) + w(rec4) <= -1
 above(rec1,rec3): + y(rec1) - y(rec3) - a(rec3) >= -0
 above(rec1,rec4): + y(rec1) - y(rec4) - a(rec4) >= -0
 above(rec3,rec4): + y(rec3) - y(rec4) - a(rec4) >= -0

Bounds
 0 <= h(rec1,1) <= 1
 0 <= h(rec1,2) <= 1
 0 <= h(rec1,3) <= 1
 0 <= h(rec1,4) <= 1
 0 <= h(rec1,5) <= 1
 0 <= h(rec1,6) <= 1
 0 <= h(rec1,7) <= 1
 0 <= h(rec1,8) <= 1
 0 <= h(rec2,1) <= 1
 0 <= h(rec2,2) <= 1
 0 <= h(rec2,3) <= 1
 0 <= h(rec2,4) <= 1
 0 <= h(rec2,5) <= 1
 0 <= h(rec2,6) <= 1
 0 <= h(rec2,7) <= 1
 0 <= h(rec2,8) <= 1
 0 <= h(rec3,1) <= 1
 0 <= h(rec3,2) <= 1
 0 <= h(rec3,3) <= 1
 0 <= h(rec3,4) <= 1
 0 <= h(rec3,5) <= 1
 0 <= h(rec3,6) <= 1
 0 <= h(rec3,7) <= 1
 0 <= h(rec3,8) <= 1
 0 <= h(rec4,1) <= 1
 0 <= h(rec4,2) <= 1
 0 <= h(rec4,3) <= 1
 0 <= h(rec4,4) <= 1
 0 <= h(rec4,5) <= 1
 0 <= h(rec4,6) <= 1
 0 <= h(rec4,7) <= 1
 0 <= h(rec4,8) <= 1
 a(rec1) >= 1
 a(rec2) >= 1
 a(rec3) >= 1
 a(rec4) >= 1
 0 <= g1(rec1,rec2) <= 1
 0 <= g1(rec1,rec3) <= 1
 0 <= g1(rec1,rec4) <= 1
 0 <= g1(rec2,rec3) <= 1
 0 <= g1(rec2,rec4) <= 1
 0 <= g1(rec3,rec4) <= 1
 0 <= k1(rec1,por1) <= 1
 0 <= k1(rec1,por2) <= 1
 0 <= k1(rec1,por3) <= 1
 0 <= k1(rec1,por4) <= 1
 0 <= k1(rec1,por5) <= 1
 0 <= k1(rec1,por6) <= 1
 0 <= k1(rec1,por7) <= 1
 0 <= k1(rec1,por8) <= 1
 0 <= k1(rec1,por9) <= 1
 0 <= k1(rec1,por10) <= 1
 0 <= k1(rec1,por11) <= 1
 0 <= k1(rec1,por12) <= 1
 0 <= k1(rec1,por13) <= 1
 0 <= k1(rec1,por14) <= 1
 0 <= k1(rec1,por15) <= 1
 0 <= k1(rec2,por1) <= 1
 0 <= k1(rec2,por2) <= 1
 0 <= k1(rec2,por3) <= 1
 0 <= k1(rec2,por4) <= 1
 0 <= k1(rec2,por5) <= 1
 0 <= k1(rec2,por6) <= 1
 0 <= k1(rec2,por7) <= 1
 0 <= k1(rec2,por8) <= 1
 0 <= k1(rec2,por9) <= 1
 0 <= k1(rec2,por10) <= 1
 0 <= k1(rec2,por11) <= 1
 0 <= k1(rec2,por12) <= 1
 0 <= k1(rec2,por13) <= 1
 0 <= k1(rec2,por14) <= 1
 0 <= k1(rec2,por15) <= 1
 0 <= k1(rec3,por1) <= 1
 0 <= k1(rec3,por2) <= 1
 0 <= k1(rec3,por3) <= 1
 0 <= k1(rec3,por4) <= 1
 0 <= k1(rec3,por5) <= 1
 0 <= k1(rec3,por6) <= 1
 0 <= k1(rec3,por7) <= 1
 0 <= k1(rec3,por8) <= 1
 0 <= k1(rec3,por9) <= 1
 0 <= k1(rec3,por10) <= 1
 0 <= k1(rec3,por11) <= 1
 0 <= k1(rec3,por12) <= 1
 0 <= k1(rec3,por13) <= 1
 0 <= k1(rec3,por14) <= 1
 0 <= k1(rec3,por15) <= 1
 0 <= k1(rec4,por1) <= 1
 0 <= k1(rec4,por2) <= 1
 0 <= k1(rec4,por3) <= 1
 0 <= k1(rec4,por4) <= 1
 0 <= k1(rec4,por5) <= 1
 0 <= k1(rec4,por6) <= 1
 0 <= k1(rec4,por7) <= 1
 0 <= k1(rec4,por8) <= 1
 0 <= k1(rec4,por9) <= 1
 0 <= k1(rec4,por10) <= 1
 0 <= k1(rec4,por11) <= 1
 0 <= k1(rec4,por12) <= 1
 0 <= k1(rec4,por13) <= 1
 0 <= k1(rec4,por14) <= 1
 0 <= k1(rec4,por15) <= 1
 0 <= absX(rec1,rec2) <= 1
 0 <= absX(rec1,rec3) <= 1
 0 <= absX(rec1,rec4) <= 1
 0 <= absX(rec2,rec3) <= 1
 0 <= absX(rec2,rec4) <= 1
 0 <= absX(rec3,rec4) <= 1
 0 <= absY(rec1,rec2) <= 1
 0 <= absY(rec1,rec3) <= 1
 0 <= absY(rec1,rec4) <= 1
 0 <= absY(rec2,rec3) <= 1
 0 <= absY(rec2,rec4) <= 1
 0 <= absY(rec3,rec4) <= 1

Generals
 h(rec1,1)
 h(rec1,2)
 h(rec1,3)
 h(rec1,4)
 h(rec1,5)
 h(rec1,6)
 h(rec1,7)
 h(rec1,8)
 h(rec2,1)
 h(rec2,2)
 h(rec2,3)
 h(rec2,4)
 h(rec2,5)
 h(rec2,6)
 h(rec2,7)
 h(rec2,8)
 h(rec3,1)
 h(rec3,2)
 h(rec3,3)
 h(rec3,4)
 h(rec3,5)
 h(rec3,6)
 h(rec3,7)
 h(rec3,8)
 h(rec4,1)
 h(rec4,2)
 h(rec4,3)
 h(rec4,4)
 h(rec4,5)
 h(rec4,6)
 h(rec4,7)
 h(rec4,8)
 x(rec1)
 x(rec2)
 x(rec3)
 x(rec4)
 w(rec1)
 w(rec2)
 w(rec3)
 w(rec4)
 g1(rec1,rec2)
 g1(rec1,rec3)
 g1(rec1,rec4)
 g1(rec2,rec3)
 g1(rec2,rec4)
 g1(rec3,rec4)
 k1(rec1,por1)
 k1(rec1,por2)
 k1(rec1,por3)
 k1(rec1,por4)
 k1(rec1,por5)
 k1(rec1,por6)
 k1(rec1,por7)
 k1(rec1,por8)
 k1(rec1,por9)
 k1(rec1,por10)
 k1(rec1,por11)
 k1(rec1,por12)
 k1(rec1,por13)
 k1(rec1,por14)
 k1(rec1,por15)
 k1(rec2,por1)
 k1(rec2,por2)
 k1(rec2,por3)
 k1(rec2,por4)
 k1(rec2,por5)
 k1(rec2,por6)
 k1(rec2,por7)
 k1(rec2,por8)
 k1(rec2,por9)
 k1(rec2,por10)
 k1(rec2,por11)
 k1(rec2,por12)
 k1(rec2,por13)
 k1(rec2,por14)
 k1(rec2,por15)
 k1(rec3,por1)
 k1(rec3,por2)
 k1(rec3,por3)
 k1(rec3,por4)
 k1(rec3,por5)
 k1(rec3,por6)
 k1(rec3,por7)
 k1(rec3,por8)
 k1(rec3,por9)
 k1(rec3,por10)
 k1(rec3,por11)
 k1(rec3,por12)
 k1(rec3,por13)
 k1(rec3,por14)
 k1(rec3,por15)
 k1(rec4,por1)
 k1(rec4,por2)
 k1(rec4,por3)
 k1(rec4,por4)
 k1(rec4,por5)
 k1(rec4,por6)
 k1(rec4,por7)
 k1(rec4,por8)
 k1(rec4,por9)
 k1(rec4,por10)
 k1(rec4,por11)
 k1(rec4,por12)
 k1(rec4,por13)
 k1(rec4,por14)
 k1(rec4,por15)
 absX(rec1,rec2)
 absX(rec1,rec3)
 absX(rec1,rec4)
 absX(rec2,rec3)
 absX(rec2,rec4)
 absX(rec3,rec4)
 absY(rec1,rec2)
 absY(rec1,rec3)
 absY(rec1,rec4)
 absY(rec2,rec3)
 absY(rec2,rec4)
 absY(rec3,rec4)

End
