im = [];
real = [];
for i = -5.0:+0.005:1.0
    for j = 0:+0.005:7
        real(end+1) = i;
        im(end+1) = j;
    end
end
zlist = complex(real,im);
r1Res =[];
r2Res =[];
resList = [];
for var = zlist
    if eigen1(var)<=1 && eigen2(var)<=1
        resList(end+1) = var;
    end
end
plot(resList, '.');
xlabel('Re(z)') 
ylabel('Im(z)') 