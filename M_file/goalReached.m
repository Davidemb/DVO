function bool=goalReached(agents,time,toll)
%%% funzione che calcola se un agente è arrivato al proprio target
% input: agents, time, toll(tolleranza)
% output:  bool(booleano)

% calcola la distanza tra ogni agente
distance(agents)
bool=0;
    for i=1:length(agents)
        % calcolo la distanza tra posizione e target di ogni agente
        D=[agents(i).Position; agents(i).Target];
            if((pdist(D)) >= toll)
                % se non sono arrivato calcola una nuova velocità
                agents(i).findVelocity(agents,time);    
                bool=1;
                continue
            
            else
                % sono arrivato al target, setto la velocità a zero    
                agents(i).Speed=[0,0];
            end 
    end
    
    for j=1:length(agents)
        % aggiorno la posizione prendendo la nuova posizione
        agents(j).Position=agents(j).New_Position;
    end
    
end