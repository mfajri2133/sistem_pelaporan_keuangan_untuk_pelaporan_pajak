-- Query Membuat View V_JumlahAkumulasiPenghasilanPerGol
CREATE VIEW V_JumlahAkumulasiPenghasilanPerGol AS
SELECT 
    g.nama AS nama_golongan,
    COUNT(apb.id) AS total_akumulasi
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
JOIN 
    golongan g ON wp.golongan_id = g.id
GROUP BY 
    g.nama;
