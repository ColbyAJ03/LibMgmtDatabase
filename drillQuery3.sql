USE libMgmt
GO

SELECT bo.Name
FROM borrower as bo
LEFT OUTER JOIN book_loans AS bl
ON bl.cardNo = bo.cardNo
WHERE bl.dateOut IS NULL