function z = heit(t,y,a)
    if(t<=a)
        z=[y(2);-32+0.005*32*(y(2)^2)/195];
    else
        z=[y(2);-32+0.6*32*(y(2)^2)/195];
    end

end