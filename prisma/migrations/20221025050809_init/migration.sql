-- DropIndex
DROP INDEX "Ahorro_id_key";

-- DropIndex
DROP INDEX "Reunion_id_key";

-- DropIndex
DROP INDEX "Usuario_cedula_key";

-- AlterTable
ALTER TABLE "Ahorro" ADD CONSTRAINT "Ahorro_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Reunion" ADD CONSTRAINT "Reunion_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("cedula");
