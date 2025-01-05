-- Tabel laporan_penghasilan 
CREATE TABLE laporan_penghasilan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    wajib_pajak_id BIGINT NOT NULL,
    tanggal_transaksi DATE NOT NULL,
    nominal BIGINT NOT NULL,
    keterangan VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);