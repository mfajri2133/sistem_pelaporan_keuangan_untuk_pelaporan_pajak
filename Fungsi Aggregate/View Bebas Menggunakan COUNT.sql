-- Query Membuat View V_JumlahLaporanWajibPajak
CREATE VIEW V_JumlahLaporanWajibPajak AS
SELECT 
    wp.nama AS nama_wajib_pajak,
    COUNT(lp.id) AS jumlah_laporan
FROM 
    laporan_penghasilan lp
JOIN 
    wajib_pajak wp ON lp.wajib_pajak_id = wp.id
GROUP BY 
    wp.nama;
