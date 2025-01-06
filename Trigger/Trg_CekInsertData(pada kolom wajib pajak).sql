-- Query Membuat Trigger CekInsertDataNama
CREATE TRIGGER CekInsertDataNama
ON wajib_pajak
FOR INSERT 
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE nama LIKE '%[^a-zA-Z]%')
	BEGIN
        RAISERROR('Data yang Anda masukkan pada kolom nama hanya bisa diisi huruf saja.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
	END
END;
GO





