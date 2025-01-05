-- Insert data golongan
INSERT INTO golongan (nama, created_at) VALUES
('Golongan A', '2023-01-01 08:00:00'),
('Golongan B', '2023-01-02 09:00:00'),
('Golongan C', '2023-01-03 10:00:00');

-- Insert data ptkp
INSERT INTO ptkp (nama, jumlah, created_at) VALUES
('TK/0', 54000000, '2023-01-01'),
('TK/1', 58500000, '2023-01-01'),
('TK/2', 63000000, '2023-01-01'),
('TK/3', 67500000, '2023-01-01'),
('K/0', 58500000, '2023-01-01'),
('K/1', 63000000, '2023-01-01'),
('K/2', 67500000, '2023-01-01'),
('K/3', 72000000, '2023-01-01'),
('K/I/0', 112500000, '2023-01-01'),
('K/I/1', 117000000, '2023-01-01'),
('K/I/2', 121500000, '2023-01-01'),
('K/I/3', 126000000, '2023-01-01');

-- Insert data wajib_pajak
INSERT INTO wajib_pajak (npwp, email, nama, nomor_telepon, alamat, tipe_wajib_pajak, golongan_id, ptkp_id, created_at) VALUES
('1234567890123456', 'budi@example.com', 'Budi Santoso', '081234567890', 'Jakarta', 0, 1, 1, '2023-01-01 12:00:00'),
('9876543210987654', 'siti@example.com', 'Siti Aisyah', '089876543210', 'Bandung', 1, 2, 2, '2023-01-01 12:00:00'),
('1122334455667788', 'ahmad@example.com', 'Ahmad Fadillah', '081122334455', 'Surabaya', 0, 3, 3, '2023-01-01 12:00:00'),
('5566778899001122', 'rita@example.com', 'Rita Handayani', '085566778899', 'Medan', 1, 1, 4, '2023-01-01 12:00:00'),
('9988776655443322', 'dewi@example.com', 'Dewi Kurniawati', '089987766554', 'Semarang', 0, 2, 5, '2023-01-01 12:00:00'),
('3344556677889900', 'agus@example.com', 'Agus Setiawan', '081334455667', 'Palembang', 1, 3, 6, '2023-01-01 12:00:00'),
('7766554433221100', 'dina@example.com', 'Dina Amelia', '087766554433', 'Makassar', 0, 1, 7, '2023-01-01 12:00:00'),
('8899667744553322', 'teguh@example.com', 'Teguh Prasetyo', '088996677455', 'Tangerang', 1, 2, 8, '2023-01-01 12:00:00'),
('1112233445566778', 'maria@example.com', 'Maria Yuliana', '081112233445', 'Bekasi', 0, 3, 9, '2023-01-01 12:00:00'),
('4433221100998877', 'joko@example.com', 'Joko Widodo', '084433221100', 'Depok', 1, 1, 10, '2023-01-01 12:00:00'),
('5544332211009988', 'sari@example.com', 'Sari Wulandari', '085544332211', 'Bogor', 0, 2, 11, '2023-01-01 12:00:00'),
('3322110099887766', 'ferdi@example.com', 'Ferdiansyah', '083322110099', 'Malang', 1, 3, 12, '2023-01-01 12:00:00'),
('9900887766554433', 'ratna@example.com', 'Ratna Sari', '089900887766', 'Padang', 0, 1, 1, '2023-01-01 12:00:00'),
('2211009988776655', 'edi@example.com', 'Edi Susanto', '082211009988', 'Solo', 1, 2, 2, '2023-01-01 12:00:00'),
('1100998776655443', 'nina@example.com', 'Nina Hartati', '081100998877', 'Manado', 0, 3, 3, '2023-01-01 12:00:00'),
('7766443322110099', 'arif@example.com', 'Arif Rahman', '087766443322', 'Balikpapan', 1, 1, 4, '2023-01-01 12:00:00'),
('8899776655443322', 'yanti@example.com', 'Yanti Maulana', '088997766554', 'Banjarmasin', 0, 2, 5, '2023-01-01 12:00:00'),
('1122445577889900', 'bambang@example.com', 'Bambang Hermanto', '081122445577', 'Pontianak', 1, 3, 6, '2023-01-01 12:00:00'),
('5566889900112233', 'lisa@example.com', 'Lisa Marlina', '085566889900', 'Palangkaraya', 0, 1, 7, '2023-01-01 12:00:00'),
('9988771100998877', 'adit@example.com', 'Adit Nugroho', '089987711009', 'Jayapura', 1, 2, 8, '2023-01-01 12:00:00'),
('3344778899001122', 'syifa@example.com', 'Syifa Rizqiana', '081334477889', 'Kupang', 0, 3, 9, '2023-01-01 12:00:00'),
('7766332211009988', 'muhammad@example.com', 'Muhammad Iqbal', '087766332211', 'Mataram', 1, 1, 10, '2023-01-01 12:00:00'),
('8899445533221100', 'tina@example.com', 'Tina Lestari', '088994455332', 'Samarinda', 0, 2, 11, '2023-01-01 12:00:00'),
('1122667788990044', 'joni@example.com', 'Joni Suprapto', '081122667788', 'Ambon', 1, 3, 12, '2023-01-01 12:00:00'),
('3322008877665544', 'dika@example.com', 'Dika Permana', '083320088799', 'Cirebon', 0, 1, 1, '2023-01-01 12:00:00'),
('4433110099887766', 'anita@example.com', 'Anita Kusuma', '084433110099', 'Yogyakarta', 1, 2, 2, '2023-01-01 12:00:00'),
('7766223344551133', 'rudi@example.com', 'Rudi Hartono', '087766223344', 'Denpasar', 0, 3, 3, '2023-01-01 12:00:00'),
('8899332211445566', 'asti@example.com', 'Asti Handayani', '088993322110', 'Jambi', 1, 1, 4, '2023-01-01 12:00:00'),
('1122556688990022', 'benny@example.com', 'Benny Sutanto', '081125566778', 'Pekanbaru', 0, 2, 5, '2023-01-01 12:00:00'),
('556644332211009', 'prabowo@example.com', 'Prabowo Subianto', '085122499067', 'Jakarta', 2, 1, 7, '2023-01-01 12:00:00');


-- Insert data tarif_efektif_rata_rata
INSERT INTO tarif_efektif_rata_rata (jumlah_minimal, jumlah_maksimal, persentase_pajak, created_at) VALUES
-- Golongan A
(0.00, 5400000.00, 0.00, '2023-01-01 08:00:00'),
(5400000.00, 5650000.00, 0.25, '2023-01-01 08:00:00'),
(5650000.00, 5950000.00, 0.50, '2023-01-01 08:00:00'),
(5950000.00, 6300000.00, 0.75, '2023-01-01 08:00:00'),
(6300000.00, 6750000.00, 1.00, '2023-01-01 08:00:00'),
(6750000.00, 7500000.00, 1.25, '2023-01-01 08:00:00'),
(7500000.00, 8550000.00, 1.50, '2023-01-01 08:00:00'),
(8550000.00, 9650000.00, 1.75, '2023-01-01 08:00:00'),
(9650000.00, 10050000.00, 2.00, '2023-01-01 08:00:00'),
(10050000.00, 10350000.00, 2.25, '2023-01-01 08:00:00'),
(10350000.00, 10700000.00, 2.50, '2023-01-01 08:00:00'),
(10700000.00, 11050000.00, 3.00, '2023-01-01 08:00:00'),
(11050000.00, 11600000.00, 3.50, '2023-01-01 08:00:00'),
(11600000.00, 12500000.00, 4.00, '2023-01-01 08:00:00'),
(12500000.00, 13750000.00, 5.00, '2023-01-01 08:00:00'),
(13750000.00, 15100000.00, 6.00, '2023-01-01 08:00:00'),
(15100000.00, 16950000.00, 7.00, '2023-01-01 08:00:00'),
(16950000.00, 19750000.00, 8.00, '2023-01-01 08:00:00'),
(19750000.00, 24150000.00, 9.00, '2023-01-01 08:00:00'),
(24150000.00, 26450000.00, 10.00, '2023-01-01 08:00:00'),
(26450000.00, 28000000.00, 11.00, '2023-01-01 08:00:00'),
(28000000.00, 30050000.00, 12.00, '2023-01-01 08:00:00'),
(30050000.00, 32400000.00, 13.00, '2023-01-01 08:00:00'),
(32400000.00, 35400000.00, 14.00, '2023-01-01 08:00:00'),
(35400000.00, 39100000.00, 15.00, '2023-01-01 08:00:00'),
(39100000.00, 43850000.00, 16.00, '2023-01-01 08:00:00'),
(43850000.00, 47800000.00, 17.00, '2023-01-01 08:00:00'),
(47800000.00, 51400000.00, 18.00, '2023-01-01 08:00:00'),
(51400000.00, 56300000.00, 19.00, '2023-01-01 08:00:00'),
(56300000.00, 62200000.00, 20.00, '2023-01-01 08:00:00'),
(62200000.00, 68600000.00, 21.00, '2023-01-01 08:00:00'),
(68600000.00, 77500000.00, 22.00, '2023-01-01 08:00:00'),
(77500000.00, 89000000.00, 23.00, '2023-01-01 08:00:00'),
(89000000.00, 103000000.00, 24.00, '2023-01-01 08:00:00'),
(103000000.00, 125000000.00, 25.00, '2023-01-01 08:00:00'),
(125000000.00, 157000000.00, 26.00, '2023-01-01 08:00:00'),
(157000000.00, 206000000.00, 27.00, '2023-01-01 08:00:00'),
(206000000.00, 337000000.00, 28.00, '2023-01-01 08:00:00'),
(337000000.00, 454000000.00, 29.00, '2023-01-01 08:00:00'),
(454000000.00, 550000000.00, 30.00, '2023-01-01 08:00:00'),
(550000000.00, 695000000.00, 31.00, '2023-01-01 08:00:00'),
(695000000.00, 910000000.00, 32.00, '2023-01-01 08:00:00'),
(910000000.00, 1400000000.00, 33.00, '2023-01-01 08:00:00'),
-- Golongan B
(0.00, 6200000.00, 0.00, '2023-01-01 08:00:00'),
(6200000.00, 6500000.00, 0.25, '2023-01-01 08:00:00'),
(6500000.00, 6850000.00, 0.50, '2023-01-01 08:00:00'),
(6850000.00, 7300000.00, 0.75, '2023-01-01 08:00:00'),
(7300000.00, 9200000.00, 1.00, '2023-01-01 08:00:00'),
(9200000.00, 10750000.00, 1.50, '2023-01-01 08:00:00'),
(10750000.00, 11250000.00, 2.00, '2023-01-01 08:00:00'),
(11250000.00, 11600000.00, 2.50, '2023-01-01 08:00:00'),
(11600000.00, 12600000.00, 3.00, '2023-01-01 08:00:00'),
(12600000.00, 13600000.00, 4.00, '2023-01-01 08:00:00'),
(13600000.00, 14950000.00, 5.00, '2023-01-01 08:00:00'),
(14950000.00, 16400000.00, 6.00, '2023-01-01 08:00:00'),
(16400000.00, 18450000.00, 7.00, '2023-01-01 08:00:00'),
(18450000.00, 21850000.00, 8.00, '2023-01-01 08:00:00'),
(21850000.00, 26000000.00, 9.00, '2023-01-01 08:00:00'),
(26000000.00, 27700000.00, 10.00, '2023-01-01 08:00:00'),
(27700000.00, 29350000.00, 11.00, '2023-01-01 08:00:00'),
(29350000.00, 31450000.00, 12.00, '2023-01-01 08:00:00'),
(31450000.00, 33950000.00, 13.00, '2023-01-01 08:00:00'),
(33950000.00, 37100000.00, 14.00, '2023-01-01 08:00:00'),
(37100000.00, 41100000.00, 15.00, '2023-01-01 08:00:00'),
(41100000.00, 45800000.00, 16.00, '2023-01-01 08:00:00'),
(45800000.00, 49500000.00, 17.00, '2023-01-01 08:00:00'),
(49500000.00, 53800000.00, 18.00, '2023-01-01 08:00:00'),
(53800000.00, 58500000.00, 19.00, '2023-01-01 08:00:00'),
(58500000.00, 64000000.00, 20.00, '2023-01-01 08:00:00'),
(64000000.00, 71000000.00, 21.00, '2023-01-01 08:00:00'),
(71000000.00, 80000000.00, 22.00, '2023-01-01 08:00:00'),
(80000000.00, 93000000.00, 23.00, '2023-01-01 08:00:00'),
(93000000.00, 109000000.00, 24.00, '2023-01-01 08:00:00'),
(109000000.00, 129000000.00, 25.00, '2023-01-01 08:00:00'),
(129000000.00, 163000000.00, 26.00, '2023-01-01 08:00:00'),
(163000000.00, 211000000.00, 27.00, '2023-01-01 08:00:00'),
(211000000.00, 374000000.00, 28.00, '2023-01-01 08:00:00'),
(374000000.00, 459000000.00, 29.00, '2023-01-01 08:00:00'),
(459000000.00, 555000000.00, 30.00, '2023-01-01 08:00:00'),
(555000000.00, 704000000.00, 31.00, '2023-01-01 08:00:00'),
(704000000.00, 957000000.00, 32.00, '2023-01-01 08:00:00'),
(957000000.00, 1405000000.00, 33.00, '2023-01-01 08:00:00'),
-- Golongan C
(0.00, 6600000.00, 0.00, '2023-01-01 08:00:00'),
(6600000.00, 6950000.00, 0.25, '2023-01-01 08:00:00'),
(6950000.00, 7350000.00, 0.50, '2023-01-01 08:00:00'),
(7350000.00, 7800000.00, 0.75, '2023-01-01 08:00:00'),
(7800000.00, 8850000.00, 1.00, '2023-01-01 08:00:00'),
(8850000.00, 9800000.00, 1.25, '2023-01-01 08:00:00'),
(9800000.00, 10950000.00, 1.50, '2023-01-01 08:00:00'),
(10950000.00, 11200000.00, 1.75, '2023-01-01 08:00:00'),
(11200000.00, 12050000.00, 2.00, '2023-01-01 08:00:00'),
(12050000.00, 12950000.00, 3.00, '2023-01-01 08:00:00'),
(12950000.00, 14150000.00, 4.00, '2023-01-01 08:00:00'),
(14150000.00, 15550000.00, 5.00, '2023-01-01 08:00:00'),
(15550000.00, 17050000.00, 6.00, '2023-01-01 08:00:00'),
(17050000.00, 19500000.00, 7.00, '2023-01-01 08:00:00'),
(19500000.00, 22700000.00, 8.00, '2023-01-01 08:00:00'),
(22700000.00, 26600000.00, 9.00, '2023-01-01 08:00:00'),
(26600000.00, 28100000.00, 10.00, '2023-01-01 08:00:00'),
(28100000.00, 30100000.00, 11.00, '2023-01-01 08:00:00'),
(30100000.00, 32600000.00, 12.00, '2023-01-01 08:00:00'),
(32600000.00, 35400000.00, 13.00, '2023-01-01 08:00:00'),
(35400000.00, 38900000.00, 14.00, '2023-01-01 08:00:00'),
(38900000.00, 43000000.00, 15.00, '2023-01-01 08:00:00'),
(43000000.00, 47400000.00, 16.00, '2023-01-01 08:00:00'),
(47400000.00, 51200000.00, 17.00, '2023-01-01 08:00:00'),
(51200000.00, 55800000.00, 18.00, '2023-01-01 08:00:00'),
(55800000.00, 60400000.00, 19.00, '2023-01-01 08:00:00'),
(60400000.00, 66700000.00, 20.00, '2023-01-01 08:00:00'),
(66700000.00, 74500000.00, 21.00, '2023-01-01 08:00:00'),
(74500000.00, 83200000.00, 22.00, '2023-01-01 08:00:00'),
(83200000.00, 95600000.00, 23.00, '2023-01-01 08:00:00'),
(95600000.00, 110000000.00, 24.00, '2023-01-01 08:00:00'),
(11000000000.00, 134000000.00, 25.00, '2023-01-01 08:00:00'),
(134000000.00, 169000000.00, 26.00, '2023-01-01 08:00:00'),
(169000000.00, 221000000.00, 27.00, '2023-01-01 08:00:00'),
(221000000.00, 390000000.00, 28.00, '2023-01-01 08:00:00'),
(390000000.00, 463000000.00, 29.00, '2023-01-01 08:00:00'),
(463000000.00, 561000000.00, 30.00, '2023-01-01 08:00:00'),
(561000000.00, 709000000.00, 31.00, '2023-01-01 08:00:00'),
(709000000.00, 965000000.00, 32.00, '2023-01-01 08:00:00'),
(965000000.00, 1419000000.00, 33.00, '2023-01-01 08:00:00');

--Insert data tarif_per_golongan
INSERT INTO tarif_efektif_per_golongan (golongan_id, tarif_id, created_at) VALUES
(1, 1, '2023-01-01 08:00:00'),
(1, 2, '2023-01-01 08:00:00'),
(1, 3, '2023-01-01 08:00:00'),
(1, 4, '2023-01-01 08:00:00'),
(1, 5, '2023-01-01 08:00:00'),
(1, 6, '2023-01-01 08:00:00'),
(1, 7, '2023-01-01 08:00:00'),
(1, 8, '2023-01-01 08:00:00'),
(1, 9, '2023-01-01 08:00:00'),
(1, 10, '2023-01-01 08:00:00'),
(1, 11, '2023-01-01 08:00:00'),
(1, 12, '2023-01-01 08:00:00'),
(2, 13, '2023-01-02 09:00:00'),
(2, 14, '2023-01-02 09:00:00'),
(2, 15, '2023-01-02 09:00:00'),
(2, 16, '2023-01-02 09:00:00'),
(2, 17, '2023-01-02 09:00:00'),
(2, 18, '2023-01-02 09:00:00'),
(2, 19, '2023-01-02 09:00:00'),
(2, 20, '2023-01-02 09:00:00'),
(2, 21, '2023-01-02 09:00:00'),
(2, 22, '2023-01-02 09:00:00'),
(2, 23, '2023-01-02 09:00:00'),
(2, 24, '2023-01-02 09:00:00'),
(3, 25, '2023-01-03 10:00:00'),
(3, 26, '2023-01-03 10:00:00'),
(3, 27, '2023-01-03 10:00:00'),
(3, 28, '2023-01-03 10:00:00'),
(3, 29, '2023-01-03 10:00:00'),
(3, 30, '2023-01-03 10:00:00');

-- Insert data laporan_penghasilan
INSERT INTO laporan_penghasilan (wajib_pajak_id, tanggal_transaksi, nominal, keterangan, created_at) VALUES
(1, '2023-01-01', 5000000, 'Gaji Januari', '2023-01-01 12:00:00'),
(2, '2023-01-02', 6000000, 'Gaji Januari', '2023-01-02 12:00:00'),
(3, '2023-01-03', 5500000, 'Gaji Januari', '2023-01-03 12:00:00'),
(4, '2023-01-04', 6200000, 'Gaji Januari', '2023-01-04 12:00:00'),
(5, '2023-01-05', 4800000, 'Gaji Januari', '2023-01-05 12:00:00'),
(6, '2023-01-06', 5300000, 'Gaji Januari', '2023-01-06 12:00:00'),
(7, '2023-01-07', 4900000, 'Gaji Januari', '2023-01-07 12:00:00'),
(8, '2023-01-08', 6100000, 'Gaji Januari', '2023-01-08 12:00:00'),
(9, '2023-01-09', 5300000, 'Gaji Januari', '2023-01-09 12:00:00'),
(10, '2023-01-10', 5700000, 'Gaji Januari', '2023-01-10 12:00:00'),
(11, '2023-01-11', 5400000, 'Gaji Januari', '2023-01-11 12:00:00'),
(12, '2023-01-12', 5900000, 'Gaji Januari', '2023-01-12 12:00:00'),
(13, '2023-01-13', 6100000, 'Gaji Januari', '2023-01-13 12:00:00'),
(14, '2023-01-14', 5200000, 'Gaji Januari', '2023-01-14 12:00:00'),
(15, '2023-01-15', 5600000, 'Gaji Januari', '2023-01-15 12:00:00'),
(16, '2023-01-16', 5800000, 'Gaji Januari', '2023-01-16 12:00:00'),
(17, '2023-01-17', 6000000, 'Gaji Januari', '2023-01-17 12:00:00'),
(18, '2023-01-18', 5200000, 'Gaji Januari', '2023-01-18 12:00:00'),
(19, '2023-01-19', 5500000, 'Gaji Januari', '2023-01-19 12:00:00'),
(20, '2023-01-20', 5800000, 'Gaji Januari', '2023-01-20 12:00:00'),
(21, '2023-01-21', 6100000, 'Gaji Januari', '2023-01-21 12:00:00'),
(22, '2023-01-22', 5400000, 'Gaji Januari', '2023-01-22 12:00:00'),
(23, '2023-01-23', 5700000, 'Gaji Januari', '2023-01-23 12:00:00'),
(24, '2023-01-24', 5300000, 'Gaji Januari', '2023-01-24 12:00:00'),
(25, '2023-01-25', 4900000, 'Gaji Januari', '2023-01-25 12:00:00'),
(26, '2023-01-26', 6200000, 'Gaji Januari', '2023-01-26 12:00:00'),
(27, '2023-01-27', 6000000, 'Gaji Januari', '2023-01-27 12:00:00'),
(28, '2023-01-28', 5300000, 'Gaji Januari', '2023-01-28 12:00:00'),
(29, '2023-01-29', 5500000, 'Gaji Januari', '2023-01-29 12:00:00'),
(30, '2023-01-30', 5900000, 'Gaji Januari', '2023-01-30 12:00:00');


-- Insert data akumulasi_penghasilan_tahunan
INSERT INTO akumulasi_penghasilan_tahunan (wajib_pajak_id, total_penghasilan, selisih_pajak, tahun, jumlah_ptkp, created_at) VALUES
(1, 70000000, 5000000, 2023, 5400000.00, '2023-01-01 12:00:00'),
(2, 82000000, 6000000, 2023, 5500000.00, '2023-01-02 12:00:00'),
(3, 75000000, 7000000, 2023, 5600000.00, '2023-01-03 12:00:00'),
(4, 62000000, 4000000, 2023, 5700000.00, '2023-01-04 12:00:00'),
(5, 86000000, 8000000, 2023, 5800000.00, '2023-01-05 12:00:00'),
(6, 93000000, 9000000, 2023, 5900000.00, '2023-01-06 12:00:00'),
(7, 57000000, 3500000, 2023, 6000000.00, '2023-01-07 12:00:00'),
(8, 61000000, 4200000, 2023, 6100000.00, '2023-01-08 12:00:00'),
(9, 69000000, 4600000, 2023, 6200000.00, '2023-01-09 12:00:00'),
(10, 72000000, 4900000, 2023, 6300000.00, '2023-01-10 12:00:00'),
(11, 65000000, 5000000, 2023, 6400000.00, '2023-01-11 12:00:00'),
(12, 78000000, 5400000, 2023, 6500000.00, '2023-01-12 12:00:00'),
(13, 68000000, 4800000, 2023, 6600000.00, '2023-01-13 12:00:00'),
(14, 70000000, 5000000, 2023, 6700000.00, '2023-01-14 12:00:00'),
(15, 81000000, 6500000, 2023, 6800000.00, '2023-01-15 12:00:00'),
(16, 79000000, 6000000, 2023, 6900000.00, '2023-01-16 12:00:00'),
(17, 81000000, 6500000, 2023, 7000000.00, '2023-01-17 12:00:00'),
(18, 65000000, 4800000, 2023, 7100000.00, '2023-01-18 12:00:00'),
(19, 66000000, 5000000, 2023, 7200000.00, '2023-01-19 12:00:00'),
(20, 92000000, 8500000, 2023, 7300000.00, '2023-01-20 12:00:00'),
(21, 60000000, 4000000, 2023, 7400000.00, '2023-01-21 12:00:00'),
(22, 65000000, 4800000, 2023, 7500000.00, '2023-01-22 12:00:00'),
(23, 67000000, 5000000, 2023, 7600000.00, '2023-01-23 12:00:00'),
(24, 68000000, 5200000, 2023, 7700000.00, '2023-01-24 12:00:00'),
(25, 70000000, 5500000, 2023, 7800000.00, '2023-01-25 12:00:00'),
(26, 85000000, 7000000, 2023, 7900000.00, '2023-01-26 12:00:00'),
(27, 60000000, 4000000, 2023, 8000000.00, '2023-01-27 12:00:00'),
(28, 90000000, 7500000, 2023, 8100000.00, '2023-01-28 12:00:00'),
(29, 64000000, 4500000, 2023, 8200000.00, '2023-01-29 12:00:00'),
(30, 67000000, 5000000, 2023, 8300000.00, '2023-01-30 12:00:00');



-- Insert data akumulasi_penghasilan_bulanan
INSERT INTO akumulasi_penghasilan_bulanan (total, wajib_pajak_id, golongan_tarif_efektif_id, persentase_pajak, total_pajak, penghasilan_bersih, periode, created_at) VALUES
(5000000.00, 1, 1, 0.05, 250000.00, 4750000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6000000.00, 2, 2, 0.06, 360000.00, 5640000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5500000.00, 3, 3, 0.07, 385000.00, 5115000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6200000.00, 4, 4, 0.08, 496000.00, 5704000.00, '2023-01-01', '2023-01-01 12:00:00'),
(4800000.00, 5, 5, 0.09, 432000.00, 4368000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5300000.00, 6, 6, 0.10, 530000.00, 4770000.00, '2023-01-01', '2023-01-01 12:00:00'),
(4900000.00, 7, 7, 0.11, 539000.00, 4361000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6100000.00, 8, 8, 0.12, 732000.00, 5368000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5300000.00, 9, 9, 0.13, 689000.00, 4611000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5700000.00, 10, 10, 0.14, 798000.00, 4902000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5400000.00, 11, 11, 0.15, 810000.00, 4590000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5900000.00, 12, 12, 0.16, 944000.00, 4956000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6100000.00, 13, 13, 0.17, 1037000.00, 5063000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5200000.00, 14, 14, 0.18, 936000.00, 4264000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5600000.00, 15, 15, 0.19, 1064000.00, 4536000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5800000.00, 16, 16, 0.20, 1160000.00, 4640000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6000000.00, 17, 17, 0.21, 1260000.00, 4740000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5200000.00, 18, 18, 0.22, 1144000.00, 4056000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5500000.00, 19, 19, 0.23, 1265000.00, 4235000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5800000.00, 20, 20, 0.24, 1392000.00, 4408000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6100000.00, 21, 21, 0.25, 1525000.00, 4575000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5400000.00, 22, 22, 0.26, 1404000.00, 3996000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5700000.00, 23, 23, 0.27, 1539000.00, 4161000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5300000.00, 24, 24, 0.28, 1484000.00, 3816000.00, '2023-01-01', '2023-01-01 12:00:00'),
(4900000.00, 25, 25, 0.29, 1421000.00, 3479000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6200000.00, 26, 26, 0.30, 1860000.00, 4340000.00, '2023-01-01', '2023-01-01 12:00:00'),
(6000000.00, 27, 27, 0.31, 1860000.00, 4140000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5300000.00, 28, 28, 0.32, 1696000.00, 3604000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5500000.00, 29, 29, 0.33, 1815000.00, 3685000.00, '2023-01-01', '2023-01-01 12:00:00'),
(5900000.00, 30, 30, 0.34, 2006000.00, 3894000.00, '2023-01-01', '2023-01-01 12:00:00');



--Insert data laporan_penghasilan_akumulasi_bulanan
INSERT INTO laporan_penghasilan_akumulasi_bulanan (akumulasi_penghasilan_bulanan_id, laporan_penghasilan_id, created_at) VALUES
(1, 1, '2023-01-01 12:00:00'),
(2, 2, '2023-01-02 12:00:00'),
(3, 3, '2023-01-03 12:00:00'),
(4, 4, '2023-01-04 12:00:00'),
(5, 5, '2023-01-05 12:00:00'),
(6, 6, '2023-01-06 12:00:00'),
(7, 7, '2023-01-07 12:00:00'),
(8, 8, '2023-01-08 12:00:00'),
(9, 9, '2023-01-09 12:00:00'),
(10, 10, '2023-01-10 12:00:00'),
(11, 11, '2023-01-11 12:00:00'),
(12, 12, '2023-01-12 12:00:00'),
(13, 13, '2023-01-13 12:00:00'),
(14, 14, '2023-01-14 12:00:00'),
(15, 15, '2023-01-15 12:00:00'),
(16, 16, '2023-01-16 12:00:00'),
(17, 17, '2023-01-17 12:00:00'),
(18, 18, '2023-01-18 12:00:00'),
(19, 19, '2023-01-19 12:00:00'),
(20, 20, '2023-01-20 12:00:00'),
(21, 21, '2023-01-21 12:00:00'),
(22, 22, '2023-01-22 12:00:00'),
(23, 23, '2023-01-23 12:00:00'),
(24, 24, '2023-01-24 12:00:00'),
(25, 25, '2023-01-25 12:00:00'),
(26, 26, '2023-01-26 12:00:00'),
(27, 27, '2023-01-27 12:00:00'),
(28, 28, '2023-01-28 12:00:00'),
(29, 29, '2023-01-29 12:00:00'),
(30, 30, '2023-01-30 12:00:00');


-- Insert data akumulasi_bulanan_tahunan
INSERT INTO akumulasi_bulanan_tahunan (akumulasi_penghasilan_bulanan_id, akumulasi_penghasilan_tahunan_id, created_at) VALUES
(1, 1, '2023-01-01 12:00:00'),
(2, 2, '2023-01-02 12:00:00'),
(3, 3, '2023-01-03 12:00:00'),
(4, 4, '2023-01-04 12:00:00'),
(5, 5, '2023-01-05 12:00:00'),
(6, 6, '2023-01-06 12:00:00'),
(7, 7, '2023-01-07 12:00:00'),
(8, 8, '2023-01-08 12:00:00'),
(9, 9, '2023-01-09 12:00:00'),
(10, 10, '2023-01-10 12:00:00'),
(11, 11, '2023-01-11 12:00:00'),
(12, 12, '2023-01-12 12:00:00'),
(13, 13, '2023-01-13 12:00:00'),
(14, 14, '2023-01-14 12:00:00'),
(15, 15, '2023-01-15 12:00:00'),
(16, 16, '2023-01-16 12:00:00'),
(17, 17, '2023-01-17 12:00:00'),
(18, 18, '2023-01-18 12:00:00'),
(19, 19, '2023-01-19 12:00:00'),
(20, 20, '2023-01-20 12:00:00'),
(21, 21, '2023-01-21 12:00:00'),
(22, 22, '2023-01-22 12:00:00'),
(23, 23, '2023-01-23 12:00:00'),
(24, 24, '2023-01-24 12:00:00'),
(25, 25, '2023-01-25 12:00:00'),
(26, 26, '2023-01-26 12:00:00'),
(27, 27, '2023-01-27 12:00:00'),
(28, 28, '2023-01-28 12:00:00'),
(29, 29, '2023-01-29 12:00:00'),
(30, 30, '2023-01-30 12:00:00');


-- Insert data potongan_pajak_tahunan
INSERT INTO potongan_pajak_tahunan (akumulasi_penghasilan_tahunan_id, persentase_pajak, penghasilan_kena_pajak, total_pajak, created_at) VALUES
(1, 0.05, 70000000, 3500000, '2023-01-01 12:00:00'),
(2, 0.10, 82000000, 8200000, '2023-01-02 12:00:00'),
(3, 0.12, 75000000, 9000000, '2023-01-03 12:00:00'),
(4, 0.08, 62000000, 4960000, '2023-01-04 12:00:00'),
(5, 0.15, 86000000, 12900000, '2023-01-05 12:00:00'),
(6, 0.20, 93000000, 18600000, '2023-01-06 12:00:00'),
(7, 0.05, 57000000, 2850000, '2023-01-07 12:00:00'),
(8, 0.07, 61000000, 4270000, '2023-01-08 12:00:00'),
(9, 0.09, 69000000, 6210000, '2023-01-09 12:00:00'),
(10, 0.11, 72000000, 7920000, '2023-01-10 12:00:00'),
(11, 0.13, 65000000, 8450000, '2023-01-11 12:00:00'),
(12, 0.17, 78000000, 13260000, '2023-01-12 12:00:00'),
(13, 0.06, 68000000, 4080000, '2023-01-13 12:00:00'),
(14, 0.10, 70000000, 7000000, '2023-01-14 12:00:00'),
(15, 0.14, 81000000, 11340000, '2023-01-15 12:00:00'),
(16, 0.18, 79000000, 14220000, '2023-01-16 12:00:00'),
(17, 0.20, 81000000, 16200000, '2023-01-17 12:00:00'),
(18, 0.07, 65000000, 4550000, '2023-01-18 12:00:00'),
(19, 0.09, 66000000, 5940000, '2023-01-19 12:00:00'),
(20, 0.15, 92000000, 13800000, '2023-01-20 12:00:00'),
(21, 0.06, 60000000, 3600000, '2023-01-21 12:00:00'),
(22, 0.12, 65000000, 7800000, '2023-01-22 12:00:00'),
(23, 0.14, 67000000, 9380000, '2023-01-23 12:00:00'),
(24, 0.11, 68000000, 7480000, '2023-01-24 12:00:00'),
(25, 0.08, 70000000, 5600000, '2023-01-25 12:00:00'),
(26, 0.19, 85000000, 16150000, '2023-01-26 12:00:00'),
(27, 0.05, 60000000, 3000000, '2023-01-27 12:00:00'),
(28, 0.16, 90000000, 14400000, '2023-01-28 12:00:00'),
(29, 0.07, 64000000, 4480000, '2023-01-29 12:00:00'),
(30, 0.09, 67000000, 6030000, '2023-01-30 12:00:00');


-- Insert data akumulasi_potongan_tahunan
INSERT INTO akumulasi_potongan_tahunan (akumulasi_penghasilan_tahunan_id, potongan_pajak_tahunan_id, created_at) VALUES
(1, 1, '2023-01-01 12:00:00'),
(2, 2, '2023-01-02 12:00:00'),
(3, 3, '2023-01-03 12:00:00'),
(4, 4, '2023-01-04 12:00:00'),
(5, 5, '2023-01-05 12:00:00'),
(6, 6, '2023-01-06 12:00:00'),
(7, 7, '2023-01-07 12:00:00'),
(8, 8, '2023-01-08 12:00:00'),
(9, 9, '2023-01-09 12:00:00'),
(10, 10, '2023-01-10 12:00:00'),
(11, 11, '2023-01-11 12:00:00'),
(12, 12, '2023-01-12 12:00:00'),
(13, 13, '2023-01-13 12:00:00'),
(14, 14, '2023-01-14 12:00:00'),
(15, 15, '2023-01-15 12:00:00'),
(16, 16, '2023-01-16 12:00:00'),
(17, 17, '2023-01-17 12:00:00'),
(18, 18, '2023-01-18 12:00:00'),
(19, 19, '2023-01-19 12:00:00'),
(20, 20, '2023-01-20 12:00:00'),
(21, 21, '2023-01-21 12:00:00'),
(22, 22, '2023-01-22 12:00:00'),
(23, 23, '2023-01-23 12:00:00'),
(24, 24, '2023-01-24 12:00:00'),
(25, 25, '2023-01-25 12:00:00'),
(26, 26, '2023-01-26 12:00:00'),
(27, 27, '2023-01-27 12:00:00'),
(28, 28, '2023-01-28 12:00:00'),
(29, 29, '2023-01-29 12:00:00'),
(30, 30, '2023-01-30 12:00:00');





	
