str = input('Give an equation in x: ','s')  ;
val0 = input('Type in a value of inital i0: ') ; 
val1 = input('Type in a value of inital i1: ') ; 
itrations = input('Number of itrations : ') ; 

%bisect(str,val0,val1,itrations)
%secant(str,val0 , val1, itrations)
%falsePosition(str,val0 , val1, itrations)
%newtonMethord(str,val0,itrations);


%{
for i = 1:itrations
    f = inline(str,'x') ;
    ex = feval(f,x) ; 
    disp([str '", for x = ' num2str(x) ', equals ' num2str(ex)]) ;
    f2 = inline(str,'x') ;
    ey = feval(f,y) ;
    disp([str '", for x = ' num2str(y) ', equals ' num2str(ey)]) ;
    if ex < 0 && ey > 0
        % change x value 
        x =  (x + y)/ 2
        
    elseif ex > 0 && ey < 0 
        % change y value 
        y = (y+x)/2
    end
    
end
%}
%2*x^2-3*x+4
%x^3+2*x-2
%f = inline(str,'x') ;
%y = feval(f,x) ;





