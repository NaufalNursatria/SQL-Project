CREATE TABLE tkelas(
    kodekelas CHAR(4),
    angkatan CHAR(5),
    kapasitas NUMBER
    );

INSERT INTO tkelas VALUES ('LA01','B2023',60);
INSERT INTO tkelas VALUES ('LA02','B2024',50);
INSERT INTO tkelas VALUES ('LA03','B2021',40);
INSERT INTO tkelas VALUES ('LA04','B2022',60);

CREATE TABLE tmahasiswa(
    nim NUMBER,
    nama VARCHAR2(24),
    tgllahir DATE,
    kelas CHAR(4)
    );

INSERT INTO tmahasiswa VALUES (1235,'Budi Binomo',DATE '2000-02-15','LA02');
INSERT INTO tmahasiswa VALUES (1235,'Adi Sanjaya',DATE '2000-02-13','LA01');
INSERT INTO tmahasiswa VALUES (1236,'Naufal Nursatria',DATE '2000-07-14','LA01');

SELECT * FROM tkelas WHERE kapasitas=60;

SELECT angkatan, nim, (EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM tgllahir)) AS umur FROM tkelas, tmahasiswa WHERE tkelas.kodekelas=tmahasiswa.kelas ORDER BY Umur DESC;