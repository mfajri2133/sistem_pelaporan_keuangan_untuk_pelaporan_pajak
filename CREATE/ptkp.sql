-- Tabel ptkp
CREATE TABLE ptkp (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    jumlah DECIMAL(18, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
);