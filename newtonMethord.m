function newtonMethord(str,val0,itrations)

x0 = val0 ;
for i = 1:itrations
   syms f(x)
   f = inline(str,'x');
   df = inline(diff(f(x),x), "x");
   newX = x0 - (feval(f,x0)/feval(df , x0));
   x0 = newX;
   x = newX
    
end

end

