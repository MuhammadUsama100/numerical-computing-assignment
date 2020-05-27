function bisect(str,i0,i1,itrations)
x =  i0;
y =  i1;
for i = 1:itrations
    f = inline(str,'x') ;
    ex = feval(f,x) ; 
    disp([str  num2str(x) ', equals ' num2str(ex)]) ;
    f2 = inline(str,'x') ;
    ey = feval(f2,y) ;
    disp([str  num2str(y) ', equals ' num2str(ey)]) ;
    if ex < 0 && ey > 0
        % change x value 
        x =  (x + y)/ 2
        
    elseif ex > 0 && ey < 0 
        % change y value 
        y = (y+x)/2
    end
    
end
end

