function [q, r] = eigval2(X)
[n,~] = size(X);
[q,r] = gramschmidt(X);
i = 0;
diff = Inf;
old = q;
while diff> 0.0001%1e-12
    X = r*q;
    [q1,r1] = qr2(X);
    diff = norm(diag(r)-diag(r1));
    old = old*q1;
    q = q1;
    r = r1;
    i = i + 1;

    
end
r = diag(r*q).*eye(n,n);
q = old;
end