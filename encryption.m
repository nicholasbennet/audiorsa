[x1,fs] = audioread('arctic_a0001.wav');
x = x1(1: 51761);
figure,plot(x);
x2 = x.*100000;
x2 = fix(x2);
x2 = x2+50000;
for i = 1:51761
    de = 0;
    c = 1;
    while de~=e
        de = de + 1;
        c = mod(((mod(c,n))*(mod(x2(i,1),n))),n);
    end
    c1(i,1)=c;
end
figure,plot(c1);
audiowrite('arctic_enc.wav',c1,fs);