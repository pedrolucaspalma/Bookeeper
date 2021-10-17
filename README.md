# Bookeeper

## Entities

### Book

[ ] - Each book will have:
    [ ] - A bookID (PK)
    [ ] - An author
    [ ] - At least one gender
    [ ] - A title
    [ ] - A description that says if it is part of a series of books or not (isPartOfASeries)
        [ ] - If it does, it will have the series name on a separate property from the name as well

### User
[ ] - Each user will have:
    [ ] - An userID (PK)
    [ ] - A name
    [ ] - An Email
    [ ] - A birthday

### BookCopy
[ ] - Each BookCopy will have:
    [ ] - A bookCopyID (PK)
    [ ] - A bookID (FK)
    [ ] - A UserID (FK)
    [ ] - A description that says if it is a digital or physical copy

### Library
[ ] - Each library will have:
    [ ] - A libraryID (PK)
    [ ] - A bookCopyID (FK)