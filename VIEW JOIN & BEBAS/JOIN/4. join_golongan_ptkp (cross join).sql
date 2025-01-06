CREATE VIEW join_golongan_ptkp AS
SELECT 
    g.nama AS golongan,
    ptkp.jumlah AS jumlah_ptkp
FROM 
    golongan g
CROSS JOIN 
    ptkp;