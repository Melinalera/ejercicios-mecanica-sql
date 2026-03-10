use taller;
create table MecDiag(
codMD int,
tematica varchar(70),
codMec int,
constraint PK_mecdiag primary key(codMD),
constraint FK_mecdiag_mec foreign key(codMec) references mecanico(codMec)
)ENGINE=INNODB;

insert into MecDiag values
(2122,'Motor roto',483),
(2127,'Motores en general',488),
(2143,'Resortes del diferencial rotos',497),
(2155,'Neumaticos',499),
(2151,'Puertas',506),
(2160,'Motores',476),
(2161,'Analista de chasis',504),
(2163,'Analista de piston',484),
(2164,'Electricista',478),
(2165,'Amortiguadores y direccion',516),
(2166,'Direccion',526),
(2168,'Tren delantero',521),
(2190,'Mecanica general',522),
(2197,'Neumatica',542),
(2199,'Tren delantero',544);
create table MECREP(
codMR int,
horaE time,
horaS time,
codMec int,
constraint PK_mecrep primary key(codMR),
constraint FK_mecrep_mec foreign key(codMec) references mecanico(codMec)
)ENGINE=INNODB;

insert into MECREP values
(4233,'17:05','19:45',481),
(4235,'07:45','22:00',477),
(4255,'12:00','20:00',501),
(4256,'08:00','14:30',509),
(4267,'13:00','19:00',514),
(4272,'14:45','20:30',517),
(4293,'10:00','15:45',540),
(4294,'11:00','12:00',524),
(4296,'10:00','18:30',528),
(4303,'7:45','18:00',550);

create table Vehiculo(
codVEH int,
Matricula varchar(7),
Modelo varchar(45),
Marca varchar(50),
Color varchar(25),
codC int,
constraint PK_codVEH primary key(codVEH),
constraint FK_vehiculo FOREIGN key(codC) references cliente(codC)
)ENGINE=INNODB;


insert into Vehiculo values
(894,'NVM191','Veneno','Benztruk','Verde',1027),
(895,'BLH189','R8-E-TRON','Audi','Rojo',1028),
(896,'AAA000','LaFerrari','Ferrari','rojo',1030),
(897,'BBB222','Italia','Ferrari','Amarillo',1030),
(898,'JKL203','Fiesta','Ford','Azul',1022),
(1000,'HCO379','Clio','Renault','Gris',1040),
(1004,'ABC567','Impreza','Subaru','Azul',1047),
(1007,'MTC491','Punto','Fiat','Azul Oscuro',1050),
(1008,'HJY295','505','Peugeot','Negro',1048),
(1009,'NPW301','Suran','Volkswagen','Gris',1055),
(1010,'DRB249','Tiggo 3','Chery','Arena',1056),
(1013,'GG149EZ','100','Fiat','azul',1061),
(1014,'GG149WP','306','peugeot','rojo',1062),
(1015,'JAJ508','89','Peugeot','Azul',1023),
(1016,'ATR468','90','Volkswagen','Amarillo',1059),
(1017,'GSM602','Kangoo','Renault','Gris',1063),
(1018,'FLC112','Fiesta','Ford','Negro',1043),
(1020,'GJD884', 'Siena', 'Chevrolet', 'Negro', 1067),
(1022,'HGG223','Fiorino','Fiat','Negro',1083),
(1024,'AB124CD','NissanJuke','Nissan','Rojo',1073),
(1026,'CRO234','Reno 19','Renault','Fucsia',1074),
(1029,'ARE855','EcoSport','Ford','Blanco',1078),
(1041,'AAD590','Fiesta','Ford','Negro',1096),
(1044,'BNE745','Uno','Fiat','Rojo',1094),
(1045,'CVL323','405','Peugeot','Verde oscuro',1098),
(1049,'DNJ312','Fiesta','Ford','Rojo',1104),
(1051,'NBA987','Falcon','Ford','Bordo',1104);


create table Repuesto(
codRep int,
Nombre varchar (50),
stock int,
PP int,
precio float,
Unidad varchar(20),
constraint PK_codRep primary key(codRep)
)ENGINE=INNODB;


insert into Repuesto values
(60,'Motor',2,1,65000,'Por unidad'),
(61,'Rueda',5,2,1000,'Por unidad'),
(62,'Ventana',50,10,1000,'Por unidad'),
(63,'Retrovisor',150,50,500,'Por unidad'),
(65,'Cigüeñal',10,8,3000,'Cada uno'),
(66,'Grasa de caja de cambios',8,3,900,'Por tarro de 1/2 kg'),
(78,'Limpiaparabrisas',7,9,359,'Por dos unidades'),
(80,'Barra caja de cambios',2,1,1200,'Por unidad'),
(81,'Volante',2,2,14300,'Por unidad'),
(83,'Tapa de cilindro gol trend',11,10,9800,'Por unidad'),
(84,'Discos de frenos',7,3,1300,'Por unidad'),
(86,'Cigüeñal Ford Universal',6,3,7000,'Por unidad'),
(87,'Motor Volkswagen 2.0',2,1,30000,'Por unidad'),
(88,'Arbol de levas corsa 1.6',3,1,8500,'Por unidad'),
(89,'Embrague de auto 250',4,3,6250,'Por unidad'),
(90,'Puerta',50,9,5600,'Por unidad'),
(91,'Bocina',14,6,3000,'Por unidad'),
(92,'Diferencial',2,1,12567,'Por unidad'),
(93,'Carburador',6,3,5678,'Por unidad'),
(94,'Cadena distribucion Peugeot 308',16,4,24000,'Por unidad'),
(95,'Embrague Ford',14,7,49266,'Por unidad'),
(96,'Amortiguador Peugeot 308',4,2,4000,'Por unidad'),
(97,'Pack de Ruedas Todo terreno',2,2,4000,'Por unidad'),
(115,'Kit reparacion parrilla Peugeot',4,2,1200,'Por set completo'),
(118,'Tren delantero original Peugeot',1,0,9500,'Por kit de 10 piezas'),
(119,'Llanta',40,15,1800,'Por 2 unidades'),
(120,'Arbol de Levas',20,5,8500,'Por unidad'),
(121,'Valvula de admision',30,10,250,'Por 10 unidades'),
(122,'Caja de Cambios',50,10,14600,'Por 2 unidades'),
(123,'Cilindro',10,5,3045,'Por unidad'),
(124,'Piston',9,5,1200,'Por unidad'),
(129,'Parachoques',26,10,60,'cada 2 unidades');


create table ficha(
codF int,
codVEH int,
fecha date,
hora time,
constraint PK_ficha primary key(codF),
constraint FK_codC_ficha FOREIGN key(codVEH) references Vehiculo(codVEH)
)ENGINE=INNODB;

insert into ficha values
(8003,1020,'2023/03/30','09:20'),
(8004,1007,'2023/03/30','13:50'),
(8005,1014,'2023/04/01','08:30'),
(8006,896,'2023/04/01','10:45'),
(8007,1017,'2023/04/05','12:38');


create table fichamd(
codF int,
codMD int,
informe varchar(100),
constraint PK_FichaMD primary key(codMD,codF),
constraint FK_codF FOREIGN key(codF) references ficha(codF),
constraint FK_codMD_FM FOREIGN key(codMD) references MecDiag(codMD)
)ENGINE=INNODB;

insert into fichamd values
(8003,2160,'Presenta rotura de motor. Se solicita reemplazo'),
(8003,2122,'Reemplazo de motor'),
(8004,2190,'Problemas con la caja de cambios'),
(8005,2168,'Choque frontal rotura tren delantero'),
(8006,2164,'Se detecto problemas electricos a nivel de luces delanteras'),
(8007,2151,'Problemas al abrir las puertas traseras');

create table presup(
NPresup int,
codF int,
fecha date,
DiagFinal varchar(100),
Monto float,
constraint PK_NPresup primary key(NPresup),
constraint FK_codF_presup FOREIGN key(codF) references ficha(codF)
)ENGINE=INNODB;

insert into presup values
(70100,8003,'2023/03/30','Se debe reeplazar el motor en su totalidad. Rotura del Block del motor',150000),
(70101,8004,'2023/04/04','Reemplazo de la grasa de la caja de cambio, y reparacion de la barra',8750),
(70102,8005,'2023/04/05','Sustitucion del tren delantero y arreglo de la parrila frontal',14000),
(70103,8006,'2023/04/06','Reseteo de la computadora interna del vehiculo con programa oficial',18500),
(70104,8007,'2023/04/06','Reparacion de cierre de puerta trasera izquierda y reemplazo de puerta derecha',9700);



create table Presurep(
Npresup int,
codRep int,
cant int,
constraint PK_PresuRep primary key(Npresup,codRep),
constraint FK_Npresu FOREIGN key(Npresup) references presup(Npresup),
constraint FK_codRe FOREIGN key(codRep) references Repuesto(codRep)
)ENGINE=INNODB;


select * from presup where Monto < 10000;
SELECT * from cliente order by DNI DESC limit 1;
select * from Repuesto where stock = PP;
select * FROM mecanico  where Apellido like ("C%") order by Nombre;
select Nombre , precio from Repuesto order by Nombre asc;
SELECT COUNT(NPresup) AS cantidad_presup 
FROM presup;
SELECT Color, COUNT(*) AS segcolor_Vehiculo FROM Vehiculo group by Color order by segcolor_Vehiculo asc;
select codF, COUNT(*) AS cant_inf
from fichamd
group by codF;
select Nombre,Apellido,repara from mecanico order by repara asc;
select NPresup, Monto from presup where Monto between 1200 and 10000 ;
select avg (Precio)as Precio_promedio from Repuesto;
select Nombre,Apellido,Direccion,tel, count(*) as cantidad_vehiculo from cliente where cantidad_vehiculo > 1;
select c.Nombre,c.Apellido,c.Direccion,c.tel, count(v.codVEH) as cantidad_vehiculo
from cliente c
join Vehiculo v on c.codC=v.codC
group by c.codC,c.Nombre,c.Apellido,c.Direccion,c.tel
having count(v.codVEH) > 1; 
select Nombre, apellido,repara from mecanico where repara = 1;
select v.codVEHV,v.Matricula,v.Modelo,v.Marcar, SUM(Monto*cant) as Monto_final from Presurep
join Presurep pre on v.codC=c.codC 
group by  v.codVEHV,v.Matricula,v.Modelo,v.Marcar

















