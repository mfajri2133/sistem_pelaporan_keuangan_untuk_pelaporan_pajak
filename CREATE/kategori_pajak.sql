-- Tabel kategori_pajak
CREATE TABLE kategori_pajak (
	id BIGINT IDENTITY(1,1) PRIMARY KEY,
	nama VARCHAR(255) NOT NULL,
	tarif_pajak DECIMAL(10,2) NOT NULL,
);