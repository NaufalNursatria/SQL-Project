CREATE TABLE konsumen(
	idKonsumen NUMBER PRIMARY KEY,
	namaKonsumen VARCHAR2(24)
);

CREATE TABLE membeli(
	idBeli NUMBER,
	kodeKonsumen NUMBER,
	barang VARCHAR2(64),
	jumlah NUMBER,
	CONSTRAINT fk_konsumen_idkonsumen FOREIGN KEY (kodekonsumen) REFERENCES konsumen(idKonsumen)
);

CREATE TABLE membeli3(
	idBeli NUMBER,
	kodeKonsumen NUMBER CHECK (kodeKonsumen IN(1,2)),
	barang VARCHAR2(64),
	jumlah NUMBER
);
INSERT INTO membeli3 VALUES(101,2,'Pulpen','10');
INSERT INTO membeli3 VALUES(102,3,'Pulpen','10');






CREATE DOMAIN kdKonsumen AS NUMBER CHECK (VALUE IN(SELECT idKonsumen FROM konsumen));

CREATE TABLE membeli2(
	idBeli NUMBER,
	kodeKonsumen kdKonsumen,
	barang VARCHAR2(64),
	jumlah NUMBER
);

ALTER TABLE membeli DROP CONSTRAINT fk_konsumen_idkonsumen;

ALTER TABLE membeli ADD CONSTRAINT fk_konsumen_idkonsumen FOREIGN KEY (kodekonsumen) REFERENCES konsumen(idKonsumen);

INSERT INTO konsumen VALUES(1, 'Adi');
INSERT INTO konsumen VALUES(2, 'Budi');

INSERT INTO membeli VALUES(101,2,'Buku','10');
INSERT INTO membeli VALUES(102,3,'Buku','10');



CREATE TABLE konsumen2(
	idKonsumen NUMBER,
	namaKonsumen VARCHAR2(24),
	CONSTRAINT pk2 PRIMARY KEY(idKonsumen)
);

ALTER TABLE konsumen2 DROP CONSTRAINT pk2;
ALTER TABLE konsumen DROP CONSTRAINT SYS_C0098996730;



 