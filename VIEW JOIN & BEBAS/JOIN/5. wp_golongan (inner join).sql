CREATE VIEW wp_golongan AS
SELECT 
    wp.id AS wajib_pajak_id,
    wp.npwp,
    wp.email,
    wp.nama AS nama_wajib_pajak,
    wp.nomor_telepon,
    g.nama AS golongan
FROM 
    wajib_pajak wp
INNER JOIN 
    golongan g ON wp.golongan_id = g.id;