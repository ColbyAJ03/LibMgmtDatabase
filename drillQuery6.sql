USE libMgmt
GO

SELECT bo.name, bo.[address], COUNT(bl.cardNo) AS "booksCheckedOut"
FROM book_loans AS bl
INNER JOIN borrower AS bo
ON bo.cardNo = bl.cardNO
GROUP BY bo.name, bo.[address]
HAVING COUNT(bl.cardNo)>5