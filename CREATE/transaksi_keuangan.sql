-- Tabel transaksi_keuangan untuk hubungan one-to-many ke tabel wajib_pajak
CREATE TABLE transaksi_keuangan (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	wajib_pajak_id BIGINT NOT NULL,
	tanggal_transaksi DATE NOT NULL,
	nominal BIGINT NOT NULL,
	keterangan VARCHAR(255) NOT NULL,
	jenis_transaksi TINYINT DEFAULT 0,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);