CREATE TRIGGER UpdateGolonganDatetime 
ON golongan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE golongan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO