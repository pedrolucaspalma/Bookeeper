# Bookeeper

## Entities

### Book

[ ] - Each book will have:
    [ ] - A bookID (PK) (UUID)
    [ ] - An author (varchar)
    [ ] - At least one gender (varchar)
    [ ] - A title (varchar)
    [ ] - A year of release (varchar)
    [ ] - An edition (varchar)
    [ ] - A description that says if it is part of a series of books or not (isPartOfASeries) (boolean)
        [ ] - If it does, it will have the series name on a separate property from the name as well (varchar)

### User
[ ] - Each user will have:
    [ ] - An userID (PK) (UUID)
    [ ] - A name (varchar)
    [ ] - An Email (varchar)
    [ ] - A birthday (date?)

### BookCopy
[ ] - Each BookCopy will have:
    [ ] - A bookCopyID (PK) (UUID)
    [ ] - A bookID (FK)
    [ ] - A UserID (FK)
    [ ] - A description that says if it is a digital or physical copy (varchar)

### Library
[ ] - Each library will have:
    [ ] - A libraryID (PK)
    [ ] - A userID (FK)
    [ ] - A bookCopyID (FK)


## Rules

### General

[ ] - Any person can create a new user
[ ] - Each user will have a Library
[ ] - Any user can insert a book to the database

### User Creation

[ ] - A user cannot register a new account using a already registered e-mail
[ ] - A new library must be created at user registration

### Book Creation
[ ] - There cannot be two books with the same title, author and edition

### BookCopy Creation
[ ] - A user cannot have two BookCopies created from the same book