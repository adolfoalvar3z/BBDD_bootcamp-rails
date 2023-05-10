create DATABASE mundial;

create table partidos(
id_partido serial not null int primary key,
eq_local varchar(50) NOT null,
eq_visita varchar(50) not null,
fecha TIMESTAMP not null,
resultado char(1) not null CHECK(resultado in ('L','E','V','l','e', 'v')),
gol_local int not null CHECK(gol_local >=0),
gol_visita int not null CHECK(gol_visita >=0),
gol_penal_local int CHECK(gol_penal_local >=0),
gol_penal_visita int CHECK(gol_penal_visita >=0),

);