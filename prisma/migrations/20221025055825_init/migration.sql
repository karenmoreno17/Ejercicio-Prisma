-- AlterTable
CREATE SEQUENCE "ahorro_id_seq";
ALTER TABLE "Ahorro" ALTER COLUMN "id" SET DEFAULT nextval('ahorro_id_seq');
ALTER SEQUENCE "ahorro_id_seq" OWNED BY "Ahorro"."id";

-- AlterTable
CREATE SEQUENCE "reunion_id_seq";
ALTER TABLE "Reunion" ALTER COLUMN "id" SET DEFAULT nextval('reunion_id_seq');
ALTER SEQUENCE "reunion_id_seq" OWNED BY "Reunion"."id";

-- AlterTable
CREATE SEQUENCE "usuario_cedula_seq";
ALTER TABLE "Usuario" ALTER COLUMN "cedula" SET DEFAULT nextval('usuario_cedula_seq');
ALTER SEQUENCE "usuario_cedula_seq" OWNED BY "Usuario"."cedula";
