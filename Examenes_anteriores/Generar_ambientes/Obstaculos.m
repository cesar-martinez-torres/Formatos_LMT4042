%% Examen 1 Temas selectos 1 (Drones)
close all
figure
plot3(sx,sy,sz,'w--' , 'linewidth',3)%Trayectorias generadas después de la simulación...
hold on
plotcube([500 600 0.2],[0 -100 0],.8,[0 0 0]); %piso
%% Edificios
for d=1
plotcube([50 50 30],[ 0 10 0],.8,[0 1 0]);
plotcube([50 50 30],[ 50 10 0],.8,[0 1 0]);
plotcube([50 50 60],[ 100 10 0],.8,[0 1 0]);
plotcube([50 50 30],[ 220 10 0],.8,[0 1 0]);
plotcube([50 350 25],[ 0 60 0],.8,[0 1 0]);
plotcube([50 50 60],[150 -100 0],.8,[0 1 0]);
plotcube([50 50 90],[100 -100 0],.8,[0 1 0]);
plotcube([50 50 60],[50 -100 0],.8,[0 1 0]);
plotcube([50 50 50],[0 -100 0],.8,[0 1 0]);
plotcube([50 50 20],[200 200 0],.8,[0 1 0]);
plotcube([50 50 20],[250 200 0],.8,[0 1 0]);
plotcube([150 50 20],[50 200 0],.8,[0 1 0]);
plotcube([50 50 60],[100 100 0],.8,[0 1 0]);
plotcube([50 50 90],[150 100 0],.8,[0 1 0]);
plotcube([50 50 30],[200 100 0],.8,[0 1 0]);
plotcube([50 50 30],[250 100 0],.8,[0 1 0]);
plotcube([150 50 30],[250 10 0],.8,[0 1 0]);
plotcube([50 200 30],[250 250 0],.8,[0 1 0]);
plotcube([50 200 30],[400 250 0],.8,[0 1 0]);
plotcube([150 50 30],[200 -100 0],.8,[0 1 0]);
plotcube([50 50 30],[450 60 0],.8,[0 1 0]);
plotcube([50 100 30],[150 400 0],.8,[0 1 0]);
plotcube([50 100 30],[150 250 0],.8,[0 1 0]);
plotcube([10 100 30],[100 300 0],.8,[0 1 0]);
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Puertas azules
plotcube([50 50 5],[ 100 60 0],.8,[0 0 1]);
plotcube([70 50 5],[ 150 10 0],.8,[0 0 1]);
plotcube([100 50 5],[ 300 250 0],.8,[0 0 1]);
%% Puertas rojas 
plotcube([50 60 5],[ 350 -50 0],.8,[1 0 0]);
plotcube([50 60 5],[ 450 250 0],.8,[1 0 0]);
plotcube([50 60 5],[ 250 60 0],.8,[1 0 0]);
%% Inicio y finales
plotcube([50 60 0.5],[0 -50 0],.8,[1 0.7 0.1]); %Inicio Parche naranja
plotcube([50 50 0.5],[100 250 0],.8,[1 0.7 1]); %Fin equipo azul Parche lila
plotcube([50 90 0.5],[0 410 0],.8,[1 1 0]); %Fin equipo rojo Parche amarillo
%% Vistas del mundo Seleccionar UNA, comentar las demás..
view(2) % Vista de pájaro
%view(-123,71) %Vista isometrica1
%view(-142,78) %Vista isometrica2
%view(90,60) %Vista isometrica3
grid on
%%