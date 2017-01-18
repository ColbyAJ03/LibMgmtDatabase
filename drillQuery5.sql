USE libMgmt
GO

SELECT lb.branchName, COUNT(bl.branchID) AS booksLoaned
FROM library_branch AS lb
INNER JOIN book_loans as bl
ON lb.branchID = bl.branchID
GROUP BY lb.branchName
