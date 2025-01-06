CREATE TRIGGER UpdateTarEfPerGolDatetime 
ON tarif_efektif_per_golongan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE tarif_efektif_per_golongan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO