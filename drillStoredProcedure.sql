USE libMgmt
GO

CREATE PROC dueThisWeek @date date = '20170101'
AS
DECLARE @endDate date
SET @endDate = DATEADD(week,1,@date)
SELECT bl.dueDate, bo.cardNo, bo.name, bo.phone, b.title
FROM book_loans AS bl
INNER JOIN book AS b
ON bl.bookID = b.bookID
INNER JOIN borrower AS bo
ON bl.cardNO = bo.cardNo
WHERE bl.dueDate BETWEEN @date AND @endDate
ORDER BY bl.dueDate




