function E3(complex)

    sum = 0;
    for i = 1:1:length(complex)
        sum = sum + real(complex(i));
    end
    
    % media aritmetica a partilor reale
    mean = sum/length(complex)
    
    % elementele vectorului initial la patrat
    square = complex.*complex
    
    % matricea obtinuta din inmultirea vectorului init cu transpusul sau
    matrix = complex'*complex

end
