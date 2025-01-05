--Tabel golongan
CREATE TABLE golongan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- Tabel tarif_efektif_rata_rata
CREATE TABLE tarif_efektif_rata_rata (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    jumlah_minimal DECIMAL(18, 2) NOT NULL,
    jumlah_maksimal DECIMAL(18, 2) NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- Tabel tarif_efektif_per_golongan untuk hubungan ke Tabel golongan dan tarif_efektif_rata_rata
CREATE TABLE tarif_efektif_per_golongan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    golongan_id BIGINT NOT NULL,
    tarif_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (golongan_id) REFERENCES golongan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (tarif_id) REFERENCES tarif_efektif_rata_rata(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- Tabel ptkp
CREATE TABLE ptkp (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    jumlah DECIMAL(18, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

--Tabel wajib_pajak untuk hubungan ke Tabel golongan dan ptkp
CREATE TABLE wajib_pajak (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    npwp VARCHAR(16) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
	nama VARCHAR(255) NOT NULL,
    nomor_telepon VARCHAR(12) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    tipe_wajib_pajak TINYINT DEFAULT 0,
    golongan_id BIGINT NOT NULL,
    ptkp_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (golongan_id) REFERENCES golongan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (ptkp_id) REFERENCES ptkp(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

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


--Tabel akumulasi_penghasilan_bulanan untuk hubungan ke Tabel wajib_pajak dan tarif_efektif_per_golongan
CREATE TABLE akumulasi_penghasilan_bulanan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    total DECIMAL(18, 2) NOT NULL,
    wajib_pajak_id BIGINT NOT NULL,
    golongan_tarif_efektif_id BIGINT NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    total_pajak DECIMAL(18, 2) NOT NULL,
    penghasilan_bersih DECIMAL(18, 2) NOT NULL,
    periode DATE NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (golongan_tarif_efektif_id) REFERENCES tarif_efektif_per_golongan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

--Tabel akumulasi_penghasilan_tahunan untuk hubungan ke Tabel wajib_pajak
CREATE TABLE akumulasi_penghasilan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    wajib_pajak_id BIGINT NOT NULL,
    total_penghasilan DECIMAL(18, 2) NOT NULL,
    selisih_pajak DECIMAL(18, 2) NOT NULL,
    tahun INT NOT NULL,
    jumlah_ptkp DECIMAL(18, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (wajib_pajak_id) REFERENCES wajib_pajak(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--Tabel potongan_pajak_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_tahunan
CREATE TABLE potongan_pajak_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    persentase_pajak FLOAT NOT NULL,
    penghasilan_kena_pajak DECIMAL(18, 2) NOT NULL,
    total_pajak DECIMAL(18, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--Tabel akumulasi_bulanan_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_bulanan dan akumulasi_penghasilan_tahunan
CREATE TABLE akumulasi_bulanan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_bulanan_id BIGINT NOT NULL,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_bulanan_id) REFERENCES akumulasi_penghasilan_bulanan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	 FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--Tabel akumulasi_potongan_tahunan untuk hubungan ke Tabel akumulasi_penghasilan_tahunan dan potongan_pajak_tahunan
CREATE TABLE akumulasi_potongan_tahunan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_tahunan_id BIGINT NOT NULL,
    potongan_pajak_tahunan_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_tahunan_id) REFERENCES akumulasi_penghasilan_tahunan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (potongan_pajak_tahunan_id) REFERENCES potongan_pajak_tahunan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--Tabel roles
CREATE TABLE roles (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- Tabel pengguna untuk hubungan ke Tabel roles
CREATE TABLE pengguna (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    passwords VARCHAR(255) NOT NULL,
    role_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (role_id) REFERENCES roles(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--Tabel rekapitulasi_laporan untuk hubungan ke Tabel akumulasi_penghasilan_bulanan dan laporan_penghasilan
CREATE TABLE rekapitulasi_laporan (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    akumulasi_penghasilan_bulanan_id BIGINT NOT NULL,
    laporan_penghasilan_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL,
	FOREIGN KEY (akumulasi_penghasilan_bulanan_id) REFERENCES akumulasi_penghasilan_bulanan(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (laporan_penghasilan_id) REFERENCES laporan_penghasilan(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);
