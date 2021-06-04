% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).
inventario(pr8, 10).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, morelos, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(katherine, zacatecana, 3).
cliente(hector, gaudalupe, 4).
cliente(benjamin, zacatecas, 5).
cliente(nestor, zacatecas, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

% _ (guion bajo) COMODIN que permite UNIFICAR cualquier valor, SIN MOSTRARLO

%EJEMPLO: crear regla que muestre a los clientes de Jerez
%clientes_jerez(Nombre) :- cliente(Nombre, jerez, _).	

%PROBAR CONSULTA: clientes_jerez(Nombre).

%EJEMPLO 2: mostrar los clientes con calificacion de 5
%clientes_5(Nombre) :- cliente(Nombre, _, 5).

%EJEMPLO 3: mostrar un listado con el nombre del producto y su existencia
%producto_cantidad(Prod, Cant):- producto(NumProd, Prod, _) , inventario(NumProd, Cant).

clientes_ciudad(Nombre) :- cliente(Nombre,fresnillo,_). 

cliente_calificado(Nombre) :- cliente(Nombre,_,3).

cliente_dc(Nombre) :- cliente(Nombre,fresnillo,5).

inventario_c(Cantidad):- inventario(pr7,Cantidad).

producto_clave(Clave):- producto(Clave,computadora,_).

inventario_n(Cantidad):- inventario(pr8,Cantidad).