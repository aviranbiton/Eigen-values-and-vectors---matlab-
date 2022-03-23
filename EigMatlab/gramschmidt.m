function [Q, R]=gramschmidt(V)
[n,k] = size(V);
Q = zeros(n,k);
Q(:,1) = V(:,1)/norm(V(:,1));
for i = 2:k
    Q(:,i)=V(:,i);
    for j=1:i-1
        Q(:,i)=Q(:,i)-(Q(:,j)'*Q(:,i)) /(norm(Q(:,j)))^2 * Q(:,j);
    end
    Q(:,i) = Q(:,i)/norm(Q(:,i));
end
R = transpose(Q) * V;
end