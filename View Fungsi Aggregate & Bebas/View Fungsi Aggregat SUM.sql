-- Query Membuat View V_TotalPenghasilanWajibPajak
CREATE VIEW V_TotalPenghasilanWajibPajak AS
SELECT 
    wp.nama AS nama_wajib_pajak,
    SUM(apb.total) AS total_penghasilan
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
GROUP BY 
    wp.nama;