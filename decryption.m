[c1,fs] = audioread('arctic_enc.wav');
for i = 1:size(c1,1)
    d = 0;
    m1 = 1;
    while d~=dp
        d = d + 1;
        m1 = mod(((mod(m1,p))*(mod(c1(i,1),p))),p);
    end
    d = 0;
    m2 = 1;
    while d~=dq
        d = d + 1;
        m2 = mod(((mod(m2,q))*(mod(c1(i,1),q))),q);
    end
    h = mod((qinv*(m1-m2)),p);
    m = m2+(h*q);
    m10(i,1)=m;
end
m20 = m10-50000;
m20 = m20./100000;
figure,plot(m20);
audiowrite('arctic_dec.wav',m20,fs);
