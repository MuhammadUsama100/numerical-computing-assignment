function fixPointMethord(str,x0, itrations)
previous =  0;
for i = 1 : itrations
    f = inline(str,'x') ;
    fx0 = feval(f,x0) 
    if previous < abs(fx0-x0) && previous ~= 0
        previous
        disp('Value not Converge incorrect equation ');
        break;
    end
    previous =  abs(fx0 - x0);
    
    x0 = fx0;
end
end

