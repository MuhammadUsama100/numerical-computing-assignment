function secant(str,val0,val1,itrations)
x0 = val0;
x1 = val1;

for i = 1 : itrations
    f = inline(str,'x') ;
    fx0 = feval(f,x0) ;
    fx1 = feval(f,x1) ;
    
    newX =  x1-((x1-x0)*(fx1)/(fx1 -fx0));
    x0 =  x1;
    x1 = newX;
    x = newX
   
end 
end

