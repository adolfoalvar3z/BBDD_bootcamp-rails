CREATE TABLE "medico" (
  "rut" varchar(10) PRIMARY KEY NOT NULL,
  "nombre" varchar(50) NOT NULL,
  "direccion" varchar(50) NOT NULL,
  "especialidad" int NOT NULL
);

CREATE TABLE "especialidad" (
  "id" serial PRIMARY KEY NOT NULL,
  "descripcion" varchar(100) NOT NULL
);

CREATE TABLE "consulta" (
  "id" serial PRIMARY KEY NOT NULL,
  "fecha" date NOT NULL,
  "hora" time NOT NULL,
  "box" int NOT NULL,
  "licencia" boolean NOT NULL DEFAULT 0,
  "rut_medico" varchar(10) NOT NULL,
  "rut_paciente" varchar(10) NOT NULL
);

CREATE TABLE "paciente" (
  "rut" varchar(10) PRIMARY KEY NOT NULL,
  "nombre" varchar(50) NOT NULL,
  "direccion" varchar(50) NOT NULL
);

CREATE TABLE "licencia" (
  "codigo" serial PRIMARY KEY NOT NULL,
  "diagnostico" varchar(250) NOT NULL,
  "fechaInicio" date NOT NULL,
  "fechaFin" date NOT NULL,
  "id_consulta" int NOT NULL
);

ALTER TABLE "medico" ADD FOREIGN KEY ("especialidad") REFERENCES "especialidad" ("id");

ALTER TABLE "consulta" ADD FOREIGN KEY ("rut_medico") REFERENCES "medico" ("rut");

ALTER TABLE "consulta" ADD FOREIGN KEY ("rut_paciente") REFERENCES "paciente" ("rut");

ALTER TABLE "licencia" ADD FOREIGN KEY ("id_consulta") REFERENCES "consulta" ("id");
