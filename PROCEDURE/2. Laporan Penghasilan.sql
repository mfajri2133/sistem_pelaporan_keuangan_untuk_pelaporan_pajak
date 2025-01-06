IF OBJECT_ID('dbo.GetLaporanPenghasilan', 'P') IS NOT NULL
DROP PROC dbo.GetLaporanPenghasilan;
GO
CREATE PROC dbo.GetLaporanPenghasilan
@wajibPajakId AS BIGINT,
@fromDate AS DATETIME = '19000101',
@toDate AS DATETIME = '99991231',
@numRows AS INT OUTPUT
AS
SET NOCOUNT ON;
SELECT 
    id AS LaporanId,
    wajib_pajak_id,
    tanggal_transaksi,
    nominal,
    keterangan
FROM 
    laporan_penghasilan
WHERE 
    wajib_pajak_id = @wajibPajakId
    AND tanggal_transaksi >= @fromDate
    AND tanggal_transaksi < @toDate;
SET @numRows = @@ROWCOUNT;
GO
