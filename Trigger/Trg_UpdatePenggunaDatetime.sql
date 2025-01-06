CREATE TRIGGER UpdatePenggunaDatetime 
ON pengguna
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE pengguna
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO