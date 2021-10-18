/*
  Warnings:

  - You are about to drop the `Library` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropIndex
DROP INDEX "Library_ownerId_key";

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Library";
PRAGMA foreign_keys=on;

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_BookCopy" (
    "bookCopyId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "originalBookId" INTEGER NOT NULL,
    "ownerId" INTEGER NOT NULL,
    "libraryId" INTEGER NOT NULL,
    CONSTRAINT "BookCopy_originalBookId_fkey" FOREIGN KEY ("originalBookId") REFERENCES "Book" ("bookId") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "BookCopy_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User" ("userId") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_BookCopy" ("bookCopyId", "libraryId", "originalBookId", "ownerId") SELECT "bookCopyId", "libraryId", "originalBookId", "ownerId" FROM "BookCopy";
DROP TABLE "BookCopy";
ALTER TABLE "new_BookCopy" RENAME TO "BookCopy";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
