CREATE VIEW pen_bulanan AS
SELECT
    ab.id AS akumulasi_bulanan_id,
    wp.nama AS wajib_pajak_nama,
    ab.total AS total_penghasilan,
    ab.total_pajak AS total_pajak,
    ab.penghasilan_bersih AS penghasilan_bersih
FROM akumulasi_penghasilan_bulanan ab
INNER JOIN wajib_pajak wp ON ab.wajib_pajak_id = wp.id;