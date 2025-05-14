im = [];
real = [];
for v = -20.0:+0.025:20.0
    real(end+1) = 0;
    im(end+1) = v;
end
zlist = complex(real,im);
resList =[];
for var = zlist
    resList(end+1) = eigenmax(var);
end
plot(im,resList);