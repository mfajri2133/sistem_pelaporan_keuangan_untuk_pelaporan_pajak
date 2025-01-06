IF OBJECT_ID('dbo.GetAkumulasiPenghasilanBulanan', 'P') IS NOT NULL
DROP PROC dbo.GetAkumulasiPenghasilanBulanan;
GO
CREATE PROC dbo.GetAkumulasiPenghasilanBulanan
@wajibPajakId AS BIGINT,
@periodeStart AS DATETIME,
@periodeEnd AS DATETIME,
@numRows AS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        id AS AkumulasiId,
        total AS TotalPenghasilan,
        total_pajak AS TotalPajak,
        penghasilan_bersih AS PenghasilanBersih,
        periode
    FROM 
        akumulasi_penghasilan_bulanan
    WHERE 
        wajib_pajak_id = @wajibPajakId
        AND periode BETWEEN @periodeStart AND @periodeEnd;
    
    SET @numRows = @@ROWCOUNT;
END;
GO