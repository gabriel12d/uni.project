P = 40; % perioada P a semnalului

wo = 2*pi/P;  % pulsatia semnalului 			

C0 = 4/1600	% coeficientii			

t = -80:0.001:80;				

N = 25;			% Avem 50 de coeficienti apartinand intervalului [-25, 25]
   
   x = C0*ones(size(t));		
   
   for k = -N:-1,			% bucla pentru termenii negativi
      Xk =2*(exp(-j*k*wo*2)*(-2*j*k*wo+exp(2*j*wo*k)-1))/(j*j*k*k*wo*wo*P*P);       
                            % calculul integralei pentru o functie: f={-2A*t/T, pt t intre 0 si 2 si 0 in rest              
      x = x + real(Xk*exp(j*k*wo*t));	%reconstruirea semnalului
   end;
   
   for k = 1:N,			% bucla pentru termenii pozitivi
      Xk =2*(exp(-j*k*wo*2)*(-2*j*k*wo+exp(2*j*wo*k)-1))/(j*j*k*k*wo*wo*P*P);               
      x = x + real(Xk*exp(j*k*wo*t));	
   end;

   plot(t,x,':');			
   hold on;
   plot([ -80 -78 -78 -40 -38 -38 0 2 2 40 42 42 80],[ 0 0.078 0 0 0.078 0 0 0.078 0 0 0.078 0 0   ],'-'); %semnalul initial
   hold off;
   hold off;
   xlabel('t ');
   ylabel('f(t)');
   titlevec = ['Semnalul x(t) n= ' num2str(-N),',..,',num2str(N)];
   title(titlevec);
   

clear;					% stergem memoria
figure(2); clf;			

P = 40; wo = 2*pi/P;			

D0 = 2;				

i = 1;					% vector folosit pentru memorarea Dn si w

for k = -25:-1,				
   Xk(i) = j/(2*pi*k)                  
   w(i) = k*wo;				
	i = i + 1;			
end;

Xk(i) = D0
w(i) = 0;	

i = i + 1;				

for k = 1:25			
   Xk(i) = j/(2*pi*k)                 
   w(i) = k*wo;				
   i = i + 1;				
end;
   
subplot(2,1,1);				% spectru semnalului
stem(w,abs(Xk),'filled');
xlabel('\omega ');
ylabel('|D_n|');
title('Spectru de Amplitudine');

subplot(2,1,2);				% spectru de faza
stem(w,angle(Xk),'filled');
xlabel('\omega ');
ylabel('\angle D_n ');
title('Spectru de faza');