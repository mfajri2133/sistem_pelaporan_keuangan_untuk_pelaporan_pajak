--Tabel akumulasi_bulanan_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_bulanan dan akumulasi_penghasilan_tahunan
CREATE TABLE akumulasi_bulanan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_bulanan_id BIGINT NOT NULL,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_bulanan_id) REFERENCES akumulasi_penghasilan_bulanan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	 FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);