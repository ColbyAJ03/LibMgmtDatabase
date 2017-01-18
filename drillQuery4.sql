USE libMgmt
GO

DECLARE @todaysDate as date
SET @todaysDate = GETDATE()

SELECT  b.title, bo.name, bo.[address]
FROM book_loans AS bl
INNER JOIN library_branch AS lb
ON bl.branchID = lb.branchID
INNER JOIN book AS b
ON bl.bookID = b.bookID
INNER JOIN borrower AS bo
ON bl.cardNO = bo.cardNo

WHERE dueDate = @todaysDate
AND lb.branchName = 'Sharpstown'

