function RangKutta4order(str,x0,y0,h,realx)

i  =  realx - x0 + 0.1

while i > 0
    f = str2func(['@(x,y)' str]);
    k1 = h*f(x0,y0);
    k2= h * f(x0+h/2,y0+k1/2);
    k3  =  h * f(x0+h/2,y0+k2/2);
    k4 =  h*f(x0+h , y0+k3);
    k =  1/6*(k1+2*k2+2*k3+k4);
    y = y0 + k
    
    x0 =  x0 + h;
    y0 = y;
    
    i =  i -  h;
end


end

