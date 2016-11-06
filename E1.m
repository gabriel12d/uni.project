function E1()
    a = 0:0.1:2; % vectorul a=[0,0.1,...,2] cu pasul 0.1
    b = ones(21,1); % vectorul b de o coloana cu 21 elemente egale cu 1
    
    p1 = a*b; % primul produs este un numar
    p2 = b*a; % al doilea produs este o matrice
    
    for i = 1:1:length(a) % parcurgere
        p3(i) = a(i)*b(i);  % inmultirea element cu element
    end  
end


