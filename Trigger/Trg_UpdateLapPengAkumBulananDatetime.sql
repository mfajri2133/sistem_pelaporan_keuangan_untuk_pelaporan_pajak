CREATE TRIGGER UpdateLapPengAkumBulananDatetime 
ON laporan_penghasilan_akumulasi_bulanan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE laporan_penghasilan_akumulasi_bulanan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO