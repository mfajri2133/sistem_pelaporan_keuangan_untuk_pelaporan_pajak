CREATE TABLE wajib_pajak (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	npwp VARCHAR(16) NOT NULL,
	nik CHAR(16) NOT NULL,
	email VARCHAR(255) UNIQUE,
	nama VARCHAR(255) NOT NULL,
	nomor_telepon VARCHAR(255) NOT NULL,
	alamat VARCHAR(255) NOT NULL,
	tipe_wajib_pajak TINYINT DEFAULT 0,
);

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

CREATE TABLE transaksi_keuangan (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	wajib_pajak_id BIGINT NOT NULL,
	tanggal_transaksi DATE NOT NULL,
	nominal BIGINT NOT NULL,
	nama VARCHAR(255) NOT NULL,
	keterangan VARCHAR(255) NOT NULL,
	jenis_transaksi TINYINT DEFAULT 0,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE kategori_pajak (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	nama VARCHAR(255) NOT NULL,
	tarif_pajak DECIMAL(10,2) NOT NULL,
);

CREATE TABLE laporan_pajak_detail (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	laporan_pajak_id BIGINT NOT NULL,
	kategori_pajak_id BIGINT NOT NULL,
	nominal_pajak DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (laporan_pajak_id) REFERENCES laporan_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (kategori_pajak_id) REFERENCES kategori_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);




