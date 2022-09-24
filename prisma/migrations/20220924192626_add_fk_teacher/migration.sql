/*
  Warnings:

  - You are about to drop the column `coursesId` on the `teachers` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[fk_id_teacher]` on the table `courses` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "teachers" DROP CONSTRAINT "teachers_coursesId_fkey";

-- AlterTable
ALTER TABLE "courses" ADD COLUMN     "fk_id_teacher" TEXT;

-- AlterTable
ALTER TABLE "teachers" DROP COLUMN "coursesId";

-- CreateIndex
CREATE UNIQUE INDEX "courses_fk_id_teacher_key" ON "courses"("fk_id_teacher");

-- AddForeignKey
ALTER TABLE "courses" ADD CONSTRAINT "courses_fk_id_teacher_fkey" FOREIGN KEY ("fk_id_teacher") REFERENCES "teachers"("id") ON DELETE SET NULL ON UPDATE CASCADE;
