-- Query Membuat View V_PenghasilanTahunanTerBesarWajPaj
CREATE VIEW V_PenghasilanTahunanTerBesarWajPaj AS
SELECT 
    wp.nama AS nama_wajib_pajak,
    MAX(apt.total_penghasilan) AS penghasilan_tahunan_terbesar
FROM 
    akumulasi_penghasilan_tahunan apt
JOIN 
    wajib_pajak wp ON apt.wajib_pajak_id = wp.id
GROUP BY 
    wp.nama;
