IF OBJECT_ID('dbo.GetGolonganTarifEfektif', 'P') IS NOT NULL
DROP PROC dbo.GetGolonganTarifEfektif;
GO
CREATE PROC dbo.GetGolonganTarifEfektif
@tarifMin AS DECIMAL(18, 2),
@tarifMax AS DECIMAL(18, 2),
@numRows AS INT OUTPUT
AS
SET NOCOUNT ON;
SELECT 
    g.id AS GolonganId,
    g.nama AS NamaGolongan,
    t.jumlah_minimal,
    t.jumlah_maksimal,
    t.persentase_pajak
FROM 
    golongan g
JOIN 
    tarif_efektif_per_golongan tg ON g.id = tg.golongan_id
JOIN 
    tarif_efektif_rata_rata t ON tg.tarif_id = t.id
WHERE 
    t.persentase_pajak BETWEEN @tarifMin AND @tarifMax;
SET @numRows = @@ROWCOUNT;
GO