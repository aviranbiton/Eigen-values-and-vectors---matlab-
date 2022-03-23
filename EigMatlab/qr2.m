function[Q,R] = qr2(A)
    
    %A = np.array(A, dtype=type)
[~,n] = size(A);

Q = A;
R = zeros(n,n);

for k = 1:n
    for i = 1:k
        R(i,k) = transpose(Q(:,i))*(Q(:,k));
        Q(:,k) = Q(:,k) - R(i,k) * Q(:,i);
    end
R(k,k) = norm(Q(:,k));
Q(:,k) = Q(:,k) / R(k,k);
end
Q = -Q;
R = Q.'*A;
end
