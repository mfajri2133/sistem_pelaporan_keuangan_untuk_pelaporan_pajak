-- Query Membuat View V_PenghasilanTerkecilPerGol
CREATE VIEW V_PenghasilanTerkecilPerGol AS
SELECT 
    g.nama AS nama_golongan,
    MIN(apb.total) AS penghasilan_terkecil
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
JOIN 
    golongan g ON wp.golongan_id = g.id
GROUP BY 
    g.nama;