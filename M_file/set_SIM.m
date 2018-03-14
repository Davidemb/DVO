function [start,goal]=set_SIM(x0,y0,r,n)
%%% funzione che setta la simulazione 
% input: centro della simulazione(x0,y0), raggio della simulazione(r), 
%        numero di agenti(n)
% output: posizioni iniziali di ogni agente(start), posizione finale di
%         ogni agente(goal)

point=[];

tet=linspace(-pi,pi,n+1);

xi=r*cos(tet)+x0;
yi=r*sin(tet)+y0;

for k=1:length(xi)
    point=[point;xi(k),yi(k)];
end

point=unique(point,'rows');

if length(point) ~= n
    point(1,:)=[];
end

start=point;

if mod(n,2) == 1
    % se n è dispari
    temp=rot90(point);
    goal=rot90(temp);
else
    % altrimenti se n è pari
    goal=flipud(point);
end




