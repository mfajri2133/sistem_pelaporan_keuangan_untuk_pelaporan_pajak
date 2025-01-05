--Tabel akumulasi_penghasilan_bulanan untuk hubungan ke Tabel wajib_pajak dan tarif_efektif_per_golongan
CREATE TABLE akumulasi_penghasilan_bulanan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    total DECIMAL(18, 2) NOT NULL,
    wajib_pajak_id BIGINT NOT NULL,
    golongan_tarif_efektif_id BIGINT NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    total_pajak DECIMAL(18, 2) NOT NULL,
    penghasilan_bersih DECIMAL(18, 2) NOT NULL,
    periode DATE NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (golongan_tarif_efektif_id) REFERENCES tarif_efektif_per_golongan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);