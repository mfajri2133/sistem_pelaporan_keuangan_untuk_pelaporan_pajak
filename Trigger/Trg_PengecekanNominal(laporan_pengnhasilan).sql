CREATE TRIGGER PengecekanNominal
ON laporan_penghasilan
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE nominal <= 4500000)	
    BEGIN
        RAISERROR('Nominal transaksi harus lebih besar dari empat juta lima ratus', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END
GO