-- Tabel pengguna untuk hubungan ke Tabel roles
CREATE TABLE pengguna (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    passwords VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
);