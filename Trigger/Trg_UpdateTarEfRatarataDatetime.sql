CREATE TRIGGER UpdateTarEfRatarataDatetime 
ON tarif_efektif_rata_rata
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE tarif_efektif_rata_rata
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO