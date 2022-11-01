/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Profile" DROP CONSTRAINT "Profile_userId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Profile";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Usuario" (
    "cedula" INTEGER NOT NULL,
    "contrasena" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "telefono" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Reunion" (
    "id" INTEGER NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "motivo" TEXT NOT NULL,
    "tipo" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Ahorro" (
    "id" INTEGER NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "monto" INTEGER NOT NULL,
    "tarifa" INTEGER NOT NULL,
    "descripcion" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_cedula_key" ON "Usuario"("cedula");

-- CreateIndex
CREATE UNIQUE INDEX "Reunion_id_key" ON "Reunion"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Ahorro_id_key" ON "Ahorro"("id");
