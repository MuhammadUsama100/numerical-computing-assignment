function Euler(str,x0,y0,h,realx)

i  = realx -  x0  ;

while i > 0.0001
   f = str2func(['@(x,y)' str]);
   y = y0 + h*f(x0,y0)
   x0 =  x0 + h;
   y0 = y ;
   i =  i - h;
    
end
end

