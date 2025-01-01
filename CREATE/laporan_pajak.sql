-- Tabel laporan_pajak untuk hubungan one-to-many ke tabel wajib_pajak
CREATE TABLE laporan_pajak (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	wajib_pajak_id BIGINT NOT NULL,
	periode_awal DATE NOT NULL,
	periode_akhir DATE NOT NULL,
	total_pajak DECIMAL(10,2),
	status TINYINT DEFAULT 0,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);