-- Query Membuat View V_RatarataPajakBulPerGol
CREATE VIEW V_RatarataPajakBulPerGol AS
SELECT 
    g.nama AS nama_golongan,
    AVG(apb.total_pajak) AS rata_rata_pajak
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
JOIN 
    golongan g ON wp.golongan_id = g.id
GROUP BY 
    g.nama;