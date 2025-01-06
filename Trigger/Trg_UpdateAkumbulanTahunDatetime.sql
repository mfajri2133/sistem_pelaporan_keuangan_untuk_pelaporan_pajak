CREATE TRIGGER UpdateAkumbulanTahunDatetime 
ON akumulasi_bulanan_tahunan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE akumulasi_bulanan_tahunan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO