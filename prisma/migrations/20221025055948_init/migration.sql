/*
  Warnings:

  - You are about to drop the column `fecha` on the `Ahorro` table. All the data in the column will be lost.
  - You are about to drop the column `fecha` on the `Reunion` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Ahorro" DROP COLUMN "fecha";

-- AlterTable
ALTER TABLE "Reunion" DROP COLUMN "fecha";
