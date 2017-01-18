USE libMGMT
GO

SELECT b.title, lb.branchName, bc.noOfCopies
FROM book_copies AS bc
INNER JOIN book as b
ON bc.bookID = b.bookID
INNER JOIN library_branch AS lb
on bc.branchID = lb.branchID
WHERE b.title = 'The Lost Tribe'
AND lb.branchName = 'Sharpstown'
