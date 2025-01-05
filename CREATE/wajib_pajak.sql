--Tabel wajib_pajak untuk hubungan ke Tabel golongan dan ptkp
CREATE TABLE wajib_pajak (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    npwp VARCHAR(16) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
	nama VARCHAR(255) NOT NULL,
    nomor_telepon VARCHAR(12) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    tipe_wajib_pajak TINYINT DEFAULT 0,
    golongan_id BIGINT NOT NULL,
    ptkp_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (golongan_id) REFERENCES golongan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (ptkp_id) REFERENCES ptkp(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
