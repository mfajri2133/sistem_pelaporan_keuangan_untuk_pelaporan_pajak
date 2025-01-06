CREATE TRIGGER UpdatePotonganPajTahunDatetime 
ON potongan_pajak_tahunan
AFTER UPDATE
AS
BEGIN
    -- Mengupdate kolom updated_at dengan nilai GETDATE() setelah data diubah
    UPDATE potongan_pajak_tahunan
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted)
END
GO