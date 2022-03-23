clc;
tic
A = readmatrix("eig.txt");
[vect, vals] = eigval2(A);
disp("done calculations");

%writematrix(vect,"eigvect.txt");
%disp("saved vectors");
%writematrix(vals,"eigvals.txt");
%disp("saved values");

%checking results 
%[d,e] = qr2([12 -51 4; 6 167 -68; -4 24 -41])

temp1 = A*vect;
temp2 = vect*vals;
toc



