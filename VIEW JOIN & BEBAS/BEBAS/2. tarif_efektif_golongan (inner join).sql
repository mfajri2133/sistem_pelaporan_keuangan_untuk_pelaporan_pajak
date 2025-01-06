CREATE VIEW join_tarif_efektif_golongan AS
SELECT 
    g.nama AS golongan,
    tg.tarif_id,
    te.persentase_pajak
FROM 
    golongan g
INNER JOIN 
    tarif_efektif_per_golongan tg ON g.id = tg.golongan_id
INNER JOIN 
    tarif_efektif_rata_rata te ON tg.tarif_id = te.id;