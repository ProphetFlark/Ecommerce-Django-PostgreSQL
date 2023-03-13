create table productos(
	id serial primary key,
	nombre varchar(100),
	precio int,
	cantidad int,
	categoria varchar(50),
	descripcion varchar(300)
);

select * from productos;

insert into productos (nombre, precio, cantidad, categoria, descripcion) values ('Televisión', 1000, 10, 'Tecnologia', 'In blandit ultrices enim. Lorem ipsum dolor sit amet'),
('Celular', 1500, 50, 'Tecnologia', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu.'),
('Bananos', 10, 200, 'Frutas', 'Donec vitae nisi.'),
('Camiseta', 100, 40, 'Ropa', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
('Detergente', 20, 40, 'Limpieza', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed'),
('CPU', 2000, 10, 'Tecnologia', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.'),
('Silla', 250, 10, 'Muebles', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.'),
('Nueces', 10, 50, 'Comida', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci'),
('Cama', 4000, 15, 'Muebles', 'Nulla justo.'),
('Planta', 45, 60, 'Decoracion', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor'),
('Ventana', 650, 30, 'Hogar', 'Aenean lectus. Pellentesque eget nunc.'),
('Mochila', 150, 85, 'Escuela', 'Maecenas ut massa quis augue luctus tincidunt.'),
('Laptop', 650, 45, 'Tecnologia', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.'),
('Tortilla', 5, 500, 'Comida', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
('Cuaderno', 15, 200, 'Escuela', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.'),
('Pintura', 200, 50, 'Decoracion', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');