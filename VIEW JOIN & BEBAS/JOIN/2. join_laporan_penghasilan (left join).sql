CREATE VIEW join_laporan_penghasilan AS
SELECT 
    lp.id AS laporan_id,
    wp.nama AS nama_wajib_pajak,
    lp.tanggal_transaksi,
    lp.nominal,
    lp.keterangan
FROM 
    laporan_penghasilan lp
LEFT JOIN 
    wajib_pajak wp ON lp.wajib_pajak_id = wp.id;