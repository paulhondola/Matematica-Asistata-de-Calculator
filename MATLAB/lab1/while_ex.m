n=5;
i=1;

while i<=n
    j=1;
    while j<=n
        a(i,j)=1/(i+j-1);
        j=j+1; 
    end

    i=i+1;
end
a