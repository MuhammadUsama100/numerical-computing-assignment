function falsePosition (str,val0,val1,itrations)
x0 = val0;
x1 = val1;

for i = 1 : itrations
    f = inline(str,'x') ;
    fx0 = feval(f,x0) ;
    fx1 = feval(f,x1) ;
    
    newX =  x1-((x1-x0)*(fx1)/(fx1 -fx0));
    
    if (feval(f,newX) < 0 && feval(f,x1) < 0 ) || (feval(f,newX) >= 0 && feval(f,x1) >= 0 )
        x1 =  newX;
    else
        x0 =  newX;
    end
    x = newX
end 
end

