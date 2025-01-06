CREATE TRIGGER UpdateAkumPenghasilanBulananDatetime 
ON akumulasi_penghasilan_bulanan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE akumulasi_penghasilan_bulanan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO