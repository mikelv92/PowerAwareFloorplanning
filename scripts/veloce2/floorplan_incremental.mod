# SETS

set P;
set N;
set T;

set R;
set IO dimen 2;
set IOid := 1..card(IO);

set NF;
set NP;
set pair1Regions;
set pair2Regions;

# set of the region considered in this step
set NC := {n in N: n in NF or n in NP};

# set of regions to consider for sequence pair
set SNC := NC inter pair1Regions inter pair2Regions;

# PARAMS
param maxW;
param maxH := card(R);
param tileH;
param tileW;

param c{N,T};
param rct{T};

param rp{P,R};
param d{P,T};
param x1{P};
param x2{P};

param hf{N, R};
param xf{N};
param wf{N};

param qWL;
param qR;
param qP;
param comm{N, N};

param ioX{IO};
param ioY{IO};
param ioWires{IO};

param pair1{N};
param pair2{N};

param densityWeight;


# estimate the cost of a resource type in a way such that the cost increase if the resource is rare on the FPGA
param resourceAvail{t in T} := sum{p in P} (d[p, t] * (x2[p] - x1[p] + 1) * sum{r in R} rp[p, r]);
param numResources := sum{t in T} resourceAvail[t];
param resourceCost{t in T} := rct[t];

# computes upper bound on cost variables used to normalize the objective linear components
param maxPCost := ((maxW + 1)*tileW + maxH*tileH) * card(NC) * 2;
param maxRCost := sum{t in T} ((resourceAvail[t] - sum{n in NC} c[n,t])*resourceCost[t]);
param maxCCost := ((maxW + 1)*tileW + maxH*tileH) * (sum{(io,n) in IO} ioWires[io,n] + sum{n1 in NC, n2 in NC: n1 != n2} comm[n1,n2]);

# **** the parameters that follows are used for additional cuts for the formulation

# the set of FPGA columns
set C := 0..maxW;

# computes the number of resources of a certain type that can be found on a row together with the max value
param resRow{r in R, t in T} := sum{p in P: rp[p,r] == 1} (x2[p]-x1[p]+1)*d[p,t];
param maxResRow{t in T} := max{r in R} resRow[r,t];

# computes the number of resources of a certain type that can be found on a column together with the max value
param resCol{x in C, t in T} := sum{p in P, r in R: x1[p]<=x and x<=x2[p]} rp[p,r]*d[p,t];
param maxResCol{t in T} := max{x in C} resCol[x,t];

# computes for every resource the max availability in a single frame
param maxD{t in T} := max{p in P} d[p,t];

# least area required by a reconfigurable region
# param leastArea{n in NC} := (max{t in T} ceil(c[n,t]/maxD[t]));

# HP) all tiles have only one type of resource
param leastArea{n in NC} := (sum{t in T} ceil(c[n,t]/maxD[t]));


# VARIABLES

# rows occupied by a reconfigurable region
# h[n, r] = 1 if and only if region n is on row r
var h{N,R} binary;

# x[n] leftmost occupied position by a reconfigurable region n
var x{N} >= 0 integer;

# y[n] bottom occupied position by the reconfigurable region n
var y{N} >= 0;

# y2[n] top occupied position by the reconfigurable region n
var y2{N} >= 0;

# w[n] width of the reconfigurable region n
var w{N} >= 0 integer;

# a[n] height (altitude) of the reconfigurable region n
var a{N} >= 1;

# l[n, p, r] width covered by a reconfigurable region n on a portion p and a row r
var l{N, p in P, r in R: rp[p,r] == 1} >= 0;

# flag to check for interesction between 2 rec. regions
# if the right side of region n1 coincide or is ahead the left side of region n2 g1[n1. n2] = 1
var g1{n1 in N, n2 in N: n1 < n2} binary;

# flag to check for non-intersection between a rec. region and an area
# if the projections on the x axis of a region n and a portion p do not intersect k1[n, p] = 0
var k1{N, P} binary;

# difference between the requested resources and occupied resources
var DRes{N,T} >= 0;

# region centroid x coordinate
var Cx{N} >= 0;

# region centroid y coordinate
var Cy{N} >= 0;

# x distance between region centroids
var DCx{N, N} >= 0;

# y distance between region centroids
var DCy{N, N} >= 0;

# x border distance between regions
var DBx{N, N} >= 0;

# y border distance between regions
var DBy{N, N} >= 0;

# x distance between region and IO ports
var DPx{IOid} >= 0;

# y distance between region and IO ports
var DPy{IOid} >= 0;

# IO cost
var IOCost >= 0;

# Centroid distance cost
var CCost >= 0;

# Occupation cost
var RCost >= 0;

# Perimeter cost
var PCost >= 0;

#  OBJECTIVE

minimize cost:
	qWL * ((CCost + IOCost) / max(maxCCost, 1)) + qR * (RCost / maxRCost) + qP * (PCost / maxPCost);

#  CONSTRAINTS

# defines IO cost
subject to IOCost_def:
	IOCost = sum{(io,n) in IO} (DPx[io] + DPy[io]) * ioWires[io,n];

# defines centroid cost
subject to CCost_def:
	CCost = sum{n1 in NC, n2 in NC: n1 != n2} (DCx[n1, n2] + DCy[n1, n2]) * comm[n1, n2];

# defines the resource cost
subject to RCost_def:
	RCost = sum{n in NC, t in T} (DRes[n,t] * resourceCost[t]);

# defines the perimeter cost
subject to PCost_def:
	PCost = 2*(sum{n in NC} ((w[n] + 1)*tileW + a[n]*tileH));

# Cx is the centroid x coordinate
subject to xCentroid{n in NC}:
	Cx[n] = (2*x[n] + w[n] + 1) * tileW / 2;

# Cy is the centroid y coordinate
subject to yCentroid{n in NC}:
	Cy[n] = (2*(y[n]-1) + a[n]) * tileH / 2;

# distance on x axis for IO
subject to deltaXIO_1{(io,n) in IO}:
	DPx[io] >= Cx[n] - ioX[io,n]*tileW;
subject to deltaXIO_2{(io,n) in IO}:
	DPx[io] >= ioX[io,n]*tileW - Cx[n];

# distance on y axis for IO
subject to deltaYIO_1{(io,n) in IO}:
	DPy[io] >= Cy[n] - ioY[io,n]*tileH;
subject to deltaYIO_2{(io,n) in IO}:
	DPy[io] >= ioY[io,n]*tileH - Cy[n];

# distance on x axis between centroids
subject to deltaXCentroid_1{n1 in NC, n2 in NC : n1 != n2}:
	DCx[n1, n2] >= Cx[n1] - Cx[n2];
subject to deltaXCentroid_2{n1 in NC, n2 in NC : n1 != n2}:
	DCx[n1, n2] >= Cx[n2] - Cx[n1];

# distance on y axis between centroids
subject to deltaYCentroid_1{n1 in NC, n2 in NC : n1 != n2}:
	DCy[n1, n2] >= Cy[n1] - Cy[n2];
subject to deltaYCentroid_2{n1 in NC, n2 in NC : n1 != n2}:
	DCy[n1, n2] >= Cy[n2] - Cy[n1];

# border distance on x axis between regions
subject to deltaXBorder_1{n1 in N, n2 in N : n1 != n2}:
	DBx[n1, n2] >= (x[n1] - (x[n2] + w[n2])) * tileW;
subject to deltaXBorder_2{n1 in N, n2 in N : n1 != n2}:
	DBx[n1, n2] >= (x[n2] - (x[n1] + w[n1])) * tileW;

# border distance on y axis between regions
subject to deltaYBorder_1{n1 in N, n2 in N : n1 != n2}:
	DBy[n1, n2] >= (y[n1] - (y[n2] + a[n2])) * tileH;
subject to deltaYBorder_2{n1 in N, n2 in N : n1 != n2}:
	DBy[n1, n2] >= (y[n2] - (y[n1] + a[n1])) * tileH;

# define the value of y for each region
subject to yValue{n in NC, r in R}:
	y[n] <= maxH - h[n, r]*(maxH - r);

# define the value of y2 for each region
subject to y2Value{n in NC, r in R}:
	y2[n] >= h[n, r]*r;

# constraints y and y2 with respect to the region's height:
subject to ySpan{n in NC}:
	y2[n] - y[n] + 1 = a[n];

# consistency of the definition of a
subject to aValue{n in NC}:
	a[n] = sum{r in R} h[n, r];

# limit the position of the x on the FPGA for each region
subject to maxX{n in NC}:
	x[n] + w[n] <= maxW;

# consistency of the definition of flag g1
subject to flagG1{n1 in NC, n2 in NC : n1 < n2}:
	x[n1] + w[n1] + 1 <= x[n2] + g1[n1, n2] * maxW;

# two regions can't overlap on the same row
subject to noOverlap{r in R, n1 in NC, n2 in NC : n1 < n2}:
	x[n1] >= x[n2] + w[n2] + 1 - 2*(3 - g1[n1, n2] - h[n1, r] - h[n2, r]) * maxW;


# consistency of the definition of flag k1
subject to flagK1_1{n in NC, p in P}:
	x[n] + w[n] >= x1[p] * k1[n, p];
subject to flagK1_2{n in NC, p in P}:
	x[n] <= x2[p] + (1 - k1[n, p]) * (maxW - x2[p]);

# constraints l[n, p, r] to be not greater than the width covered by the reconfigurable region n on the portion p and the row r
subject to noCoverageIfNoRegionRow{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= h[n, r] * (x2[p] - x1[p] + 1);

subject to noCoverageIfNoIntersection{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= k1[n, p] * (x2[p] - x1[p] + 1);

subject to maxCoverageDueToRegionWidth{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= w[n] + 1;

subject to maxCoverageDueToPortionWidth{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= x2[p] - x1[p] + 1;

subject to maxCoverageIntersectionLeft{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= x[n] + w[n] + 1 - k1[n, p] * x1[p];

subject to maxCoverageIntersectionRight{n in NC, p in P, r in R: rp[p,r] == 1}:
	l[n, p, r] <= x2[p] - x[n] + 1 + (1 - k1[n, p]) * (maxW - x2[p]);

# constraints l[n, p, r] to be at least the width covered by the reconfigurable region n on the portion p and the row r
subject to totalMinCoverage{n in NC, r in R}:
	sum{p in P: rp[p,r] == 1} l[n, p, r] >= w[n] + 1 - (1 - h[n, r]) * maxW;

# definition of delta resources
subject to requiredResources{n in NC, t in T}:
	DRes[n, t] = sum{p in P, r in R: rp[p,r] == 1} l[n, p, r] * d[p, t] - c[n, t];

# fix the position of the rec. regions already placed
subject to previousH{n in NF, r in R}:
	h[n, r] = hf[n, r];
subject to previousW{n in NF}:
	w[n] = wf[n];
subject to previousX{n in NF}:
	x[n] = xf[n];

# ------------------------------ ADDITIONAL CUTS ------------------------------

# the following constraints are additional cuts added to the problem
subject to widthLowerBound{n in NC}:
	w[n] + 1 >= ceil(max{t in T} (c[n, t]/maxResCol[t]));

subject to heigthLowerBound{n in NC}:
	a[n] >= ceil(max{t in T} (c[n, t]/maxResRow[t]));

subject to selectedRowLowerBound{n in NC, t in T}:
	sum{r in R} resRow[r,t]*h[n,r] >= c[n,t];

# no ceil
#subject to whBound{n in NC, r in R: r > 1}:
#	w[n] + 1 >= leastArea[n]/r + ((leastArea[n]/r - leastArea[n]/(r - 1))) * (a[n] - r);


subject to whBound{n in NC, r in R, r2 in R: r2 > r and card({rt in R: ceil(leastArea[n]/rt)*(r2 - r)  >= ceil(leastArea[n]/r)*(r2 - r) + (ceil(leastArea[n]/r2) - ceil(leastArea[n]/r))*(rt - r)}) = maxH }:
	w[n] + 1 >= ceil(leastArea[n]/r) + ((ceil(leastArea[n]/r2) - ceil(leastArea[n]/r)) / (r2 - r)) * (a[n] - r);


subject to minCentroidDistance{n1 in NC, n2 in NC: n1 < n2}:
	DCx[n1,n2] + DCy[n1,n2] >= min((ceil(max{t in T} (c[n1, t]/maxResCol[t])) + ceil(max{t in T} (c[n2, t]/maxResCol[t]))) * (tileW / 2),
	 						   (ceil(max{t in T} (c[n1, t]/maxResRow[t])) + ceil(max{t in T} (c[n2, t]/maxResRow[t]))) * (tileH / 2));

subject to minXCentroidDistance{n1 in NC, n2 in NC: n1 < n2}:
	DCx[n1,n2] >= (ceil(max{t in T} (c[n1, t]/maxResCol[t])) + ceil(max{t in T} (c[n2, t]/maxResCol[t]))) * (tileW / 2) - g1[n1,n2] * maxW*tileW/2;

subject to minXCentroidDistance2{n1 in NC, n2 in NC, r in R: n1 < n2}:
	DCx[n1,n2] >= (ceil(max{t in T} (c[n1, t]/maxResCol[t])) + ceil(max{t in T} (c[n2, t]/maxResCol[t]))) * (tileW / 2) - 
	(2 - h[n1,r] - h[n2,r]) * maxW*tileW/2;

subject to centroidXDistanceSimmetry{n1 in NC, n2 in NC: n1<>n2}:
	DCx[n1,n2] = DCx[n2,n1];

subject to centroidYDistanceSimmetry{n1 in NC, n2 in NC: n1<>n2}:
	DCy[n1,n2] = DCy[n2,n1];

subject to borderXDistanceSimmetry{n1 in NC, n2 in NC: n1<>n2}:
	DBx[n1,n2] = DBx[n2,n1];

subject to borderYDistanceSimmetry{n1 in NC, n2 in NC: n1<>n2}:
	DBy[n1,n2] = DBy[n2,n1];

# ------------------------ ADDITIONAL CONSTRAINTS ------------------------

# fixed pair constraints (applied only if requested in the .dat file)
subject to atLeft{n1 in SNC, n2 in SNC: n1 != n2 and pair1[n1] < pair1[n2] and pair2[n1] < pair2[n2]}:
	x[n1] + w[n1] + 1 <= x[n2];
subject to above{n1 in SNC, n2 in SNC: n1 != n2 and pair1[n1] < pair1[n2] and pair2[n1] > pair2[n2]}:
	y[n1] >= y[n2] + a[n2];

end;
