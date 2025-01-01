-- Tabel wajib_pajak
CREATE TABLE wajib_pajak (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	npwp VARCHAR(16) NOT NULL,
	nik CHAR(16) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	nama VARCHAR(255) NOT NULL,
	nomor_telepon VARCHAR(255) NOT NULL,
	alamat VARCHAR(255) NOT NULL,
	tipe_wajib_pajak TINYINT DEFAULT 0,
);