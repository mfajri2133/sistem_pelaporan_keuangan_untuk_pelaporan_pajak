CREATE VIEW view_akumulasi_pendapatan_bulanan AS
SELECT 
    akumulasi_penghasilan_bulanan.wajib_pajak_id,
    wajib_pajak.npwp,
    akumulasi_penghasilan_bulanan.total AS total_penghasilan,
    akumulasi_penghasilan_bulanan.total_pajak,
    akumulasi_penghasilan_bulanan.periode
FROM akumulasi_penghasilan_bulanan
JOIN wajib_pajak ON akumulasi_penghasilan_bulanan.wajib_pajak_id = wajib_pajak.id;
