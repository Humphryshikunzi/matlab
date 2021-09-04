clc;
a = 0;
for cnt = 1:30
    a = a + cnt;
    fprintf('The step is %d\t and the value is %d\n', cnt, a)
end

%%
clc;
a = 0;
for cnt = 1:30
    a = a + cnt;
    if cnt ==15
        continue
    end
    
    if cnt > 25
        break
    end
    fprintf('The step is %d\t and the value is %d\n', cnt, a)
    
end
%%
clc;
a = 0; 
cnt = 10;
while cnt < 30
    a = a + cnt;
    cnt = cnt +1;
    if cnt ==15
        continue
    end
    
    if cnt > 25
        break
    end
    fprintf('The step is %d\t and the value is %d\n', cnt, a)
    
end