CREATE TRIGGER UpdateLaporanPenghasilanDatetime 
ON laporan_penghasilan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE laporan_penghasilan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO