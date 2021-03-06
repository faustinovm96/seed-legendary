
/* Populate tables */
INSERT INTO clientes (cli_nombres, cli_apellidos, cli_direccion, cli_email, create_at, foto) VALUES('Andres', 'Guzman', '', 'profesor@bolsadeideas.com', '2017-08-01', '');
INSERT INTO clientes (cli_nombres, cli_apellidos, cli_direccion, cli_email, create_at, foto) VALUES('John', 'Doe', '', 'john.doe@gmail.com', '2017-08-02', '');
INSERT INTO clientes (cli_nombres, cli_apellidos, cli_direccion, cli_email, create_at, foto) VALUES('Linus', 'Torvalds', '', 'linus.torvalds@gmail.com', '2017-08-03', '');
INSERT INTO clientes (cli_nombres, cli_apellidos, cli_direccion, cli_email, create_at, foto) VALUES('Jane', 'Doe', '', 'jane.doe@gmail.com', '2017-08-04', '');
INSERT INTO clientes (cli_nombres, cli_apellidos, cli_direccion, cli_email, create_at, foto) VALUES('Rasmus', 'Lerdorf', '', 'rasmus.lerdorf@gmail.com', '2017-08-05', '');

/* Populate tabla productos */
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Sony Camara digital DSC-W320B', 123490, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Apple iPod shuffle', 1499990, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Sony Notebook Z110', 37990, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO productos (prod_nombre, prod_precio, create_at) VALUES('Mica Comoda 5 Cajones', 299990, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (fac_descripcion, fac_observacion, cliente_id, create_at) VALUES('Factura equipos de oficina', null, 1, NOW());
INSERT INTO detalles_facturas (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO detalles_facturas (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO detalles_facturas (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO detalles_facturas (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (fac_descripcion, fac_observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importante!', 2, NOW());
INSERT INTO detalles_facturas (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

/* Creamos algunos usuarios con sus roles */
INSERT INTO `users` (username, password, enabled) VALUES ('faustino','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG',1);
INSERT INTO `users` (username, password, enabled) VALUES ('admin','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS',1);

INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_ADMIN');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_USER');