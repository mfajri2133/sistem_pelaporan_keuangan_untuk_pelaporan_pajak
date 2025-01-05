--Tabel akumulasi_potongan_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_tahunan dan potongan_pajak_tahunan
CREATE TABLE akumulasi_potongan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    potongan_pajak_tahunan_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (potongan_pajak_tahunan_id) REFERENCES potongan_pajak_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);