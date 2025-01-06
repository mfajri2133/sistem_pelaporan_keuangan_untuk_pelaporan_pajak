-- Query Membuat View V_JumlahAlumulasiPerGol
CREATE VIEW V_JumlahAlumulasiPerGol AS
SELECT 
    g.nama AS nama_golongan,
    COUNT(apb.id) AS jumlah_akumulasi
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
JOIN 
    golongan g ON wp.golongan_id = g.id
GROUP BY 
    g.nama;
