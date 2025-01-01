-- Tabel laporan_pajak_detail untuk hubungan Many-to-Many antara laporan_pajak dan kategori_pajak
CREATE TABLE laporan_pajak_detail (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	laporan_pajak_id BIGINT NOT NULL,
	kategori_pajak_id BIGINT NOT NULL,
	jumlah_transaksi INT NOT NULL,
	nominal_pajak DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (laporan_pajak_id) REFERENCES laporan_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (kategori_pajak_id) REFERENCES kategori_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);