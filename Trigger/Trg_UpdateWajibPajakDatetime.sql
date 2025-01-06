CREATE TRIGGER UpdateWajibPajakDatetime 
ON wajib_pajak
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE wajib_pajak
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO