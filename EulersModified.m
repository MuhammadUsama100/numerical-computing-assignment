function EulersModified(str,x0,y0,h,realx , numberEPROX)

i  = realx -  x0  ;

while i > 0.0001
   f = str2func(['@(x,y)' str]);
   y = y0 + h*f(x0,y0);
   disp(['y  : [' num2str(y) ']']);
   
   
   tempx =  x0 + h;
   tempy =  y ; 
    for j = 1 : numberEPROX
        
        ym  =  y0 + (h/2  *(f(x0,y0) + f(tempx ,tempy)));
        disp(['y modified  for [' num2str(j) '] : [' num2str(ym) ']']) ;
        tempy =  ym ;
    end
   x0 =  x0 + h;
   y0 = y ;
   i =  i - h;
    
end

end

