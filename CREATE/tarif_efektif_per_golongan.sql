-- Tabel tarif_efektif_per_golongan untuk hubungan ke Tabel golongan dan tarif_efektif_rata_rata
CREATE TABLE tarif_efektif_per_golongan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    golongan_id BIGINT NOT NULL,
    tarif_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at DATETIME NOT NULL,
	FOREIGN KEY (golongan_id) REFERENCES golongan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (tarif_id) REFERENCES tarif_efektif_rata_rata(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);