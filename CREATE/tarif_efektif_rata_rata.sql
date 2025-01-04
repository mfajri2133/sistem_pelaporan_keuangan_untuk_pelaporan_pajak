-- Tabel tarif_efektif_rata_rata
CREATE TABLE tarif_efektif_rata_rata (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    jumlah_minimal DECIMAL(18, 2) NOT NULL,
    jumlah_maksimal DECIMAL(18, 2) NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at DATETIME NOT NULL
);