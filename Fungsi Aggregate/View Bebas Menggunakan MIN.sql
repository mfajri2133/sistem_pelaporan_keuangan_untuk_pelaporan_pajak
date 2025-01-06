-- Query Membuat View V_PajakTerkecilPerWajibPajak
CREATE VIEW V_PajakTerkecilPerWajibPajak AS
SELECT 
    wp.nama AS nama_wajib_pajak,
    MIN(apb.total_pajak) AS pajak_terkecil
FROM 
    akumulasi_penghasilan_bulanan apb
JOIN 
    wajib_pajak wp ON apb.wajib_pajak_id = wp.id
GROUP BY 
    wp.nama;