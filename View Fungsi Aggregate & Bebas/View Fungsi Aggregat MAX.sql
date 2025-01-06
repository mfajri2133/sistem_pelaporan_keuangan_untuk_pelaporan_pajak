-- Query Membuat View V_PenghasilanTerbesarPerGol
CREATE VIEW V_PenghasilanTerbesarPerGol AS
SELECT 
    g.nama AS nama_golongan,
    MAX(apb.total) AS penghasilan_terbesar
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
JOIN 
    golongan g ON wp.golongan_id = g.id
GROUP BY 
    g.nama;
