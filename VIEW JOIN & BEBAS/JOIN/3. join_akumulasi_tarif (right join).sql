CREATE VIEW join_akumulasi_tarif AS
SELECT 
    apb.id AS akumulasi_bulanan_id,
    apb.total AS total_penghasilan,
    apb.total_pajak,
    apb.periode,
    te.persentase_pajak
FROM 
    akumulasi_penghasilan_bulanan apb
RIGHT JOIN 
    tarif_efektif_per_golongan tg ON apb.golongan_tarif_efektif_id = tg.id
RIGHT JOIN 
    tarif_efektif_rata_rata te ON tg.tarif_id = te.id;