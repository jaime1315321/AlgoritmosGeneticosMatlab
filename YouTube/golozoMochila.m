%Pd=[peso valor]   peso máximo soportado por la mochila 4200
Pd=[150 20;
    325 40; 
    600 50; 
    805 36;
    430 25;
    1200 64;
    770 54;
    60 18;
    930 46;
    353 28];

%% algoritmo de optimización goloso (indicador de sensibilidad el Peso)
%% se ingresan los objetos con mas peso
I=sort(Pd(:,1));  % organización ascendente de los pesos 
PdOrden=zeros(10,2); %matriz organizada pero sin modificar el orden 
j=10;           % empieza en 10 por organizacion ascendente 

for k=1:1:10    % fija el valor ordenado en I
for i=1:1:10     %barre la matriz en desorden 
if I(j,1)==Pd(i,1);   % si se encuentra coincidencia entre el fijo y el barrido 
PdOrden(11-k,:)=Pd(i,:);  % se ordena de menor a mayor gracias al 11 
end
end
j=j-1;               % cambiar el valor fijo para otra organización 
end


j=10;       % empieza en 10 por organizacion ascendente 
Peso=0;     %inicio de variables
costo=0;
a=1;        % constante para bucle
while a==1  % mientras se cumpla el ciclo continua 
     Peso=Peso+PdOrden(j,1);   %se suman los pesos en cada iteración (se agrega articulo)
     
     if (Peso+PdOrden(j-1,1))>=4200   %si la próxima suma supera el valor esperado, detener bucle %restricción
     a=0 ;                        %detener bucle 
     end 
     costo=costo+PdOrden(j,2);        %sumar los costos, objetivo de la optimización
     j=j-1;                      %pasa al articulo de siguiente mas valioso 
end
1
Peso 
costo


%% algoritmo de optimización goloso (indicador de sensibilidad el peso)
%% se ingresan los objetos con menos peso
I=sort(Pd(:,1));  % organización ascendente de los pesos 
PdOrden=zeros(10,2); %matriz organizada pero sin modificar el orden 
j=10;           % empieza en 10 por organizacion ascendente 

for k=1:1:10    % fija el valor ordenado en I
for i=1:1:10     %barre la matriz en desorden 
if I(j,1)==Pd(i,1);   % si se encuentra coincidencia entre el fijo y el barrido 
PdOrden(k,:)=Pd(i,:);  % se ordena de mayor a menor 
end
end
j=j-1;               % cambiar el valor fijo para otra organización 
end


j=10;       % empieza en 10 por organizacion ascendente 
Peso=0;     %inicio de variables
costo=0;
a=1;        % constante para bucle
while a==1  % mientras se cumpla el ciclo continua 
     Peso=Peso+PdOrden(j,1);   %se suman los pesos en cada iteración (se agrega articulo)
     
     if (Peso+PdOrden(j-1,1))>=4200   %si la próxima suma supera el valor esperado, detener bucle %restricción
     a=0 ;                        %detener bucle 
     end 
     costo=costo+PdOrden(j,2);        %sumar los costos, objetivo de la optimización
     j=j-1;                      %pasa al articulo de siguiente mas valioso 
end
2
Peso 
costo

%% algoritmo de optimización goloso (indicador de sensibilidad el costo)

I=sort(Pd(:,2));  % organización ascendente de los costos 
PdOrden=zeros(10,2); %matriz organizada pero sin modificar el orden 
j=10;           % empieza en 10 por organizacion ascendente 

for k=1:1:10    % fija el valor ordenado en I
for i=1:1:10     %barre la matriz en desorden 
if I(j,1)==Pd(i,2);   % si se encuentra coincidencia entre el fijo y el barrido 
PdOrden(11-k,:)=Pd(i,:);  % se ordena de menor a mayor gracias al 11 
end
end
j=j-1;               % cambiar el valor fijo para otra organización 
end


j=10;       % empieza en 10 por organizacion ascendente 
Peso=0;     %inicio de variables
costo=0;
a=1;        % constante para bucle
while a==1  % mientras se cumpla el ciclo continua 
     Peso=Peso+PdOrden(j,1);   %se suman los pesos en cada iteración (se agrega articulo)
     
     if (Peso+PdOrden(j-1,1))>=4200   %si la próxima suma supera el valor esperado, detener bucle %restricción
     a=0 ;                        %detener bucle 
     end 
     costo=costo+PdOrden(j,2);        %sumar los costos, objetivo de la optimización
     j=j-1;                      %pasa al articulo de siguiente mas valioso 
end
3
Peso 
costo


%% algoritmo de optimización golozo (indicador de sensibilidad Peso sobre costo)

I1=zeros(10,1);                       %nueva columna llena de zeros 
for i=1:1:10                          % for para barrer haciendo la divición del indicador de sensibilidad
   I1(i,1)=Pd(i,1)/Pd(i,2);           % indicador se guardará en I1
                      
end
Iorden=sort(I1);                      %se ordena de forma ascendente 

Pdorden=zeros(10,2);                 %se genera una matriz que se llenará con los valores ordenados  
for i=1:1:10                         %barrerá la columna de valores en orden Iorden 
 for j=1:1:10                        %barrerá 
     
    
     if Iorden(i,1)==I1(j,1)
     Pdorden(i,:)=Pd(j,:);
        
    end
 end
end

j=1;       % empieza en 10 por organizacion ascendente 
Peso=0;     %inicio de variables
costo=0;
a=1;        % constante para bucle
while a==1  % mientras se cumpla el ciclo continua 
     Peso=Peso+PdOrden(j,1);   %se suman los pesos en cada iteración (se agrega articulo)
     
     if (Peso+PdOrden(j+1,1))>=4200   %si la próxima suma supera el valor esperado, detener bucle %restricción
     a=0 ;                        %detener bucle 
     end 
     costo=costo+PdOrden(j,2);        %sumar los costos, objetivo de la optimización
     j=j+1;                      %pasa al articulo de siguiente mas valioso 
end
4
Peso 
costo

%% algoritmo de optimización golozo (indicador de sensibilidad costo sobre peso)

I1=zeros(10,1);                       %nueva columna llena de zeros 
for i=1:1:10                          % for para barrer haciendo la divición del indicador de sensibilidad
   I1(i,1)=Pd(i,2)/Pd(i,1);           % indicador se guardará en I1
                      
end
Iorden=sort(I1);                      %se ordena de forma ascendente 

Pdorden=zeros(10,2);                 %se genera una matriz que se llenará con los valores ordenados  
for i=1:1:10                         %barrerá la columna de valores en orden Iorden 
 for j=1:1:10                        %barrerá 
     
    
     if Iorden(i,1)==I1(j,1)
     Pdorden(i,:)=Pd(j,:);
        
    end
 end
end

j=10;       % empieza en 10 por organizacion ascendente 
Peso=0;     %inicio de variables
costo=0;
a=1;        % constante para bucle
while a==1  % mientras se cumpla el ciclo continua 
     Peso=Peso+PdOrden(j,1);   %se suman los pesos en cada iteración (se agrega articulo)
     
     if (Peso+PdOrden(j-1,1))>=4200   %si la próxima suma supera el valor esperado, detener bucle %restricción
     a=0 ;                        %detener bucle 
     end 
     costo=costo+PdOrden(j,2);        %sumar los costos, objetivo de la optimización
     j=j-1;                      %pasa al articulo de siguiente mas valioso 
end
5
Peso 
costo

  