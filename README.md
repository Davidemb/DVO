# DVO - Detect Velocity Obstacle 
> author: Davide Zorzi - 2015/2016
![DVO](/Screen/wow.png "DVO")
Algoritmi di pianificazione dinamica basati su Velocity Obstacle - VO - algorithms for robot collision avoidance
## Implementazione MATLAB

#### Agent:
* _identity_: **id** dell'agente
* _position_: posizione dell'agente (x,y)
* _target_: posizione di arrivo (x',y')
* _speed_: velocita' corrente dell'agente
* _prefSpeed_: velocita' preferita orientata al **target**
* _radius_: raggio dell'agente
* _newposition_: nuova posizione, informazione condivisa al ciclo successivo di computazione
* _newspeed_: nuova velocita' calcolata, informazione condivisa al cilo successivo di computazione
* _neighborDist_: distanza euclidea tra i robot

#### Metodi principali:
* _findVelocity_: computazione della nuova velocita'
* _coneVO_: creazione di tutti i coni di collisione
* _AdminVelocity_: validazione del nuovo candidato per l'assegnamento della nuova velocita'