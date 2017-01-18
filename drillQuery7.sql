USE libMgmt
GO

SELECT b.title, bc.noOfCopies
FROM book AS b
INNER JOIN book_copies AS bc
ON b.bookID = bc.bookID
INNER JOIN book_authors AS ba
ON b.bookID = ba.bookID
INNER JOIN library_branch AS lb
ON bc.branchID = lb.branchID
WHERE ba.authorName LIKE 'Stephen King'
AND lb.branchName = 'Central'
