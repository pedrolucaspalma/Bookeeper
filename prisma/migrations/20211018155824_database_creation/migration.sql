-- CreateTable
CREATE TABLE "Book" (
    "bookId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "author" TEXT NOT NULL,
    "gender1" TEXT NOT NULL,
    "gender2" TEXT,
    "gender3" TEXT,
    "title" TEXT NOT NULL,
    "yearOfRelease" TEXT NOT NULL,
    "edition" TEXT NOT NULL,
    "seriesTitle" TEXT
);

-- CreateTable
CREATE TABLE "User" (
    "userId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "birthday" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "BookCopy" (
    "bookCopyId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "originalBookId" INTEGER NOT NULL,
    "ownerId" INTEGER NOT NULL,
    "libraryId" INTEGER NOT NULL,
    CONSTRAINT "BookCopy_originalBookId_fkey" FOREIGN KEY ("originalBookId") REFERENCES "Book" ("bookId") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "BookCopy_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User" ("userId") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "BookCopy_libraryId_fkey" FOREIGN KEY ("libraryId") REFERENCES "Library" ("libraryId") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Library" (
    "libraryId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "ownerId" INTEGER NOT NULL,
    CONSTRAINT "Library_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User" ("userId") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Library_ownerId_key" ON "Library"("ownerId");
