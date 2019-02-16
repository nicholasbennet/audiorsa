clc;
clear all;
close all;
p = 487;%32771;
q = 509;%16411;
n = p*q;
qn = (q-1)*(p-1);
e = 499;%16381;
d = 0;
rem = 0;
while rem ~= 1
    d = d + 1;
    rem = mod((e*d),qn);
end
dp = mod(d,(p-1));
dq = mod(d,(q-1));
res = 0;
qinv = 0;
while res~=1
    qinv = qinv+1;
    res = mod((qinv*q),p);
end