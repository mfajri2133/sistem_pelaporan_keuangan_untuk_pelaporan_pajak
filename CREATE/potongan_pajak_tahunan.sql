--Tabel potongan_pajak_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_tahunan
CREATE TABLE potongan_pajak_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    penghasilan_kena_pajak DECIMAL(18, 2) NOT NULL,
    total_pajak DECIMAL(18, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);