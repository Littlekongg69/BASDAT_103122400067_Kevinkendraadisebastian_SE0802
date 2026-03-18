SQL> --nama: kevin
SQL> --nim: 103122400067
SQL> CREATE TABLE Film (
  2      id_film INT PRIMARY KEY,
  3      judul VARCHAR2(200),
  4      sinopsis VARCHAR2(200),
  5      tahun INT,
  6      durasi INT
  7  );

Table created.

SQL> CREATE TABLE Theater (
  2      id_theater INT PRIMARY KEY,
  3      harga INT,
  4      kapasitas INT,
  5      kelas VARCHAR2(20)
  6  );

Table created.

SQL> CREATE TABLE Member (
  2      id_member INT PRIMARY KEY,
  3      nama VARCHAR2(200),
  4      no_hp VARCHAR2(20),
  5      tgl_lahir DATE,
  6      email VARCHAR2(200)
  7  );

Table created.

SQL> CREATE TABLE Jadwal (
  2      id_jadwal INT PRIMARY KEY,
  3      id_film INT,
  4      id_theater INT,
  5      periode_start DATE,
  6      periode_end DATE,
  7      FOREIGN KEY (id_film) REFERENCES Film(id_film),
  8      FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
  9  );

Table created.

SQL> CREATE TABLE Inventaris (
  2      id_inventaris INT PRIMARY KEY,
  3      id_theater INT,
  4      nomor_kursi VARCHAR2(10),
  5      FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
  6  );

Table created.

SQL> CREATE TABLE Transaksi (
  2      kode_pemesanan INT PRIMARY KEY,
  3      id_jadwal INT,
  4      id_member INT,
  5      status VARCHAR2(20),
  6      tanggal DATE,
  7      total_harga INT,
  8      FOREIGN KEY (id_jadwal) REFERENCES Jadwal(id_jadwal),
  9      FOREIGN KEY (id_member) REFERENCES Member(id_member)
 10  );

Table created.

SQL> INSERT INTO Film VALUES (1,'Avengers','Film superhero',2019,180);

1 row created.

SQL> INSERT INTO Film VALUES (2,'Inception','Film sci-fi',2010,148);

1 row created.

SQL> 
SQL> SELECT * FROM Film;INSERT INTO Theater VALUES (1,50000,100,'Reguler');
SELECT * FROM Film;INSERT INTO Theater VALUES (1,50000,100,'Reguler')
                   *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> INSERT INTO Theater VALUES (2,75000,80,'VIP');

1 row created.

SQL> 
SQL> SELECT * FROM Theater;INSERT INTO Member VALUES
  2  (1,'Kevin','08123456789',TO_DATE('2004-05-10','YYYY-MM-DD'),'kevin@email.com');
SELECT * FROM Theater;INSERT INTO Member VALUES
                      *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> INSERT INTO Member VALUES
  2  (2,'Rafi','08129876543',TO_DATE('2003-02-01','YYYY-MM-DD'),'rafi@email.com');

1 row created.

SQL> 
SQL> SELECT * FROM Member;INSERT INTO Jadwal VALUES
  2  (1,1,1,TO_DATE('2026-03-11 13:00:00','YYYY-MM-DD HH24:MI:SS'),
  3           TO_DATE('2026-03-11 16:00:00','YYYY-MM-DD HH24:MI:SS'));
SELECT * FROM Member;INSERT INTO Jadwal VALUES
                     *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> INSERT INTO Jadwal VALUES
  2  (2,2,2,TO_DATE('2026-03-11 17:00:00','YYYY-MM-DD HH24:MI:SS'),
  3           TO_DATE('2026-03-11 19:30:00','YYYY-MM-DD HH24:MI:SS'));

1 row created.

SQL> 
SQL> SELECT * FROM Jadwal;INSERT INTO Inventaris VALUES (1,1,'A1');
SELECT * FROM Jadwal;INSERT INTO Inventaris VALUES (1,1,'A1')
                     *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> INSERT INTO Inventaris VALUES (2,1,'A2');
INSERT INTO Inventaris VALUES (2,1,'A2')
*
ERROR at line 1:
ORA-02291: integrity constraint (KEVIN.SYS_C008621) violated - parent key not 
found 


SQL> 
SQL> SELECT * FROM Inventaris;INSERT INTO Transaksi VALUES
  2  (1,1,1,'Lunas',TO_DATE('2026-03-11','YYYY-MM-DD'),50000);
SELECT * FROM Inventaris;INSERT INTO Transaksi VALUES
                         *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> INSERT INTO Transaksi VALUES
  2  (2,2,2,'Pending',TO_DATE('2026-03-11','YYYY-MM-DD'),75000);

1 row created.

SQL> 
SQL> SELECT * FROM Transaksi;UPDATE Film SET durasi = 185 WHERE id_film = 1;
SELECT * FROM Transaksi;UPDATE Film SET durasi = 185 WHERE id_film = 1
                        *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> UPDATE Theater SET harga = 55000 WHERE id_theater = 1;

0 rows updated.

SQL> UPDATE Member SET no_hp = '08222222222' WHERE id_member = 1;

0 rows updated.

SQL> 
SQL> UPDATE Jadwal
  2  SET periode_end = TO_DATE('2026-03-11 16:10:00','YYYY-MM-DD HH24:MI:SS')
  3  WHERE id_jadwal = 1;

0 rows updated.

SQL> 
SQL> UPDATE Transaksi SET status = 'Lunas' WHERE kode_pemesanan = 2;

1 row updated.

SQL> 
SQL> SELECT * FROM Film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
Avengers                                                                        
Film superhero                                                                  
      2019        180                                                           
                                                                                

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         2                                                                      
Inception                                                                       
Film sci-fi                                                                     
      2010        148                                                           
                                                                                

SQL> SELECT * FROM Theater;

ID_THEATER      HARGA  KAPASITAS KELAS                                          
---------- ---------- ---------- --------------------                           
         2      75000         80 VIP                                            

SQL> SELECT * FROM Member;

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP                TGL_LAHIR                                                  
-------------------- ---------                                                  
EMAIL                                                                           
--------------------------------------------------------------------------------
         2                                                                      
Rafi                                                                            
08129876543          01-FEB-03                                                  
rafi@email.com                                                                  
                                                                                

SQL> SELECT * FROM Jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIODE_S PERIODE_E                            
---------- ---------- ---------- --------- ---------                            
         2          2          2 11-MAR-26 11-MAR-26                            

SQL> SELECT * FROM Transaksi;DELETE FROM Inventaris WHERE id_inventaris = 2;
SELECT * FROM Transaksi;DELETE FROM Inventaris WHERE id_inventaris = 2
                        *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> DELETE FROM Film WHERE id_film = 2;
DELETE FROM Film WHERE id_film = 2
*
ERROR at line 1:
ORA-02292: integrity constraint (KEVIN.SYS_C008618) violated - child record 
found 


SQL> 
SQL> SELECT * FROM Inventaris;

no rows selected

SQL> SELECT * FROM Film;SPOOL OFF
  2  ;
SELECT * FROM Film;SPOOL OFF
                   *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> SPOOL OFF
