USE libMGMT
GO

SELECT b.title, lb.branchName, bc.noOfCopies
FROM book AS b
INNER JOIN book_copies as bc
ON b.bookID = bc.bookID
INNER JOIN library_branch AS lb
on bc.branchID = lb.branchID
WHERE b.title = 'The Lost Tribe'

