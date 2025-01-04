--Tabel akumulasi_penghasilan_tahunan untuk hubungan ke Tabel wajib_pajak
CREATE TABLE akumulasi_penghasilan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    wajib_pajak_id BIGINT NOT NULL,
    total_penghasilan DECIMAL(18, 2) NOT NULL,
    selisih_pajak DECIMAL(18, 2) NOT NULL,
    tahun INT NOT NULL,
    jumlah_ptkp DECIMAL(18, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at DATETIME NOT NULL,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);