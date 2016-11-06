function gr423D(n)
    B=randn(n)
    k=1;
    for i=1:n
        for j=1:n
            if B(i,j)<0
                v(k)=B(i,j);
                k=k+1;
            end
        end
    end
end
 v