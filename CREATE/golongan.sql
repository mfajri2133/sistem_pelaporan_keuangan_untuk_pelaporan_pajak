--Tabel golongan
CREATE TABLE golongan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at DATETIME NOT NULL
);