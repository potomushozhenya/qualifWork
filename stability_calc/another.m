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
resList1 = [];
resList2 = [];
for var = zlist
    if r1(var)<=1
        resList1(end+1) = var;
    end
    if r2(var)<=1
        resList2(end+1) = var;
    end


end
plot(resList2, '.', Color='blue');
hold on;
plot(resList1, '.', Color='red');
xlabel('Re(z)') 
ylabel('Im(z)') 