function [ ix iy ] = getCoordinates( p, A )
%GETCOORDINATES given a point P on the grid map A, it returns its grid
%position. It uses a default values of definition of 0.1 and size
%0.1*size(A)


L = A.L;
xmin = A.xmin;
xmax = A.xmax;
ymin = A.ymin;
ymax = A.ymax;

xwide = xmax - xmin;
ywide = ymax - ymin;
NX = floor(xwide / L)+1;
NY = floor(ywide / L)+1;

x = p(1);
y = p(2);

ix = min(floor( (-(xmin) + x) / L)+1,NX); %+ (abs(xmin) / L);
iy = min(floor( (-(ymin) + y) / L)+1,NY); %+ (abs(ymin) / L);


end

