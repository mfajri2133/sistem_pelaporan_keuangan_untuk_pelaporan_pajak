--Tabel rekapitulasi_laporan untuk hubungan ke Tabel akumulasi_penghasilan_bulanan dan laporan_penghasilan
CREATE TABLE rekapitulasi_laporan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_bulanan_id BIGINT NOT NULL,
    laporan_penghasilan_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at DATETIME NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_bulanan_id) REFERENCES akumulasi_penghasilan_bulanan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (laporan_penghasilan_id) REFERENCES laporan_penghasilan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);