SQL> CREATE TABLE Mahasiswa (
  2      id INT PRIMARY KEY,
  3      nama VARCHAR2(100),
  4      tempat_lahir VARCHAR2(100),
  5      tanggal_lahir DATE,
  6      no_hp VARCHAR2(20),
  7      email VARCHAR2(100),
  8      tinggi NUMBER(5,2),
  9      berat NUMBER(5,2)
 10  );

Table created.

SQL> INSERT INTO Mahasiswa VALUES (1,'Kevin','Semarang',TO_DATE('2004-05-10','YYYY-MM-DD'),'0811111111','kevin@email.com',170,60);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (2,'Rafi','Solo',TO_DATE('2003-02-01','YYYY-MM-DD'),'0822222222','rafi@email.com',168,58);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (3,'Budi','Jakarta',TO_DATE('2002-03-15','YYYY-MM-DD'),'0833333333','budi@email.com',172,65);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (4,'Andi','Bandung',TO_DATE('2004-01-20','YYYY-MM-DD'),'0844444444','andi@email.com',169,62);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (5,'Rina','Surabaya',TO_DATE('2003-07-11','YYYY-MM-DD'),'0855555555','rina@email.com',160,50);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (6,'Sari','Semarang',TO_DATE('2002-08-12','YYYY-MM-DD'),'0866666666','sari@email.com',158,48);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (7,'Dewi','Malang',TO_DATE('2003-09-10','YYYY-MM-DD'),'0877777777','dewi@email.com',162,52);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (8,'Agus','Solo',TO_DATE('2004-10-05','YYYY-MM-DD'),'0888888888','agus@email.com',175,70);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (9,'Rudi','Jakarta',TO_DATE('2002-11-21','YYYY-MM-DD'),'0899999999','rudi@email.com',171,66);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (10,'Fajar','Bandung',TO_DATE('2003-12-01','YYYY-MM-DD'),'0810101010','fajar@email.com',173,68);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (11,'Ayu','Semarang',TO_DATE('2002-06-14','YYYY-MM-DD'),'0811112222','ayu@email.com',159,49);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (12,'Nina','Malang',TO_DATE('2003-04-09','YYYY-MM-DD'),'0822223333','nina@email.com',161,51);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (13,'Bayu','Solo',TO_DATE('2004-03-03','YYYY-MM-DD'),'0833334444','bayu@email.com',176,72);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (14,'Dina','Surabaya',TO_DATE('2003-05-17','YYYY-MM-DD'),'0844445555','dina@email.com',163,54);

1 row created.

SQL> INSERT INTO Mahasiswa VALUES (15,'Eka','Jakarta',TO_DATE('2002-02-25','YYYY-MM-DD'),'0855556666','eka@email.com',167,59);

1 row created.

SQL> 
SQL> SELECT * FROM Mahasiswa;SELECT nama, LOWER(nama), UPPER(nama), INITCAP(nama) FROM Mahasiswa;
SELECT * FROM Mahasiswa;SELECT nama, LOWER(nama), UPPER(nama), INITCAP(nama) FROM Mahasiswa
                        *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> SELECT CONCAT(nama,' Mahasiswa') FROM Mahasiswa;

CONCAT(NAMA,'MAHASISWA')                                                        
--------------------------------------------------------------------------------
Kevin Mahasiswa                                                                 
Rafi Mahasiswa                                                                  
Budi Mahasiswa                                                                  
Andi Mahasiswa                                                                  
Rina Mahasiswa                                                                  
Sari Mahasiswa                                                                  
Dewi Mahasiswa                                                                  
Agus Mahasiswa                                                                  
Rudi Mahasiswa                                                                  
Fajar Mahasiswa                                                                 
Ayu Mahasiswa                                                                   

CONCAT(NAMA,'MAHASISWA')                                                        
--------------------------------------------------------------------------------
Nina Mahasiswa                                                                  
Bayu Mahasiswa                                                                  
Dina Mahasiswa                                                                  
Eka Mahasiswa                                                                   

15 rows selected.

SQL> 
SQL> SELECT nama, LENGTH(nama), SUBSTR(nama,1,3) FROM Mahasiswa;

NAMA                                                                            
--------------------------------------------------------------------------------
LENGTH(NAMA) SUBSTR(NAMA,                                                       
------------ ------------                                                       
Kevin                                                                           
           5 Kev                                                                
                                                                                
Rafi                                                                            
           4 Raf                                                                
                                                                                
Budi                                                                            
           4 Bud                                                                
                                                                                

NAMA                                                                            
--------------------------------------------------------------------------------
LENGTH(NAMA) SUBSTR(NAMA,                                                       
------------ ------------                                                       
Andi                                                                            
           4 And                                                                
                                                                                
Rina                                                                            
           4 Rin                                                                
                                                                                
Sari                                                                            
           4 Sar                                                                
                                                                                

NAMA                                                                            
--------------------------------------------------------------------------------
LENGTH(NAMA) SUBSTR(NAMA,                                                       
------------ ------------                                                       
Dewi                                                                            
           4 Dew                                                                
                                                                                
Agus                                                                            
           4 Agu                                                                
                                                                                
Rudi                                                                            
           4 Rud                                                                
                                                                                

NAMA                                                                            
--------------------------------------------------------------------------------
LENGTH(NAMA) SUBSTR(NAMA,                                                       
------------ ------------                                                       
Fajar                                                                           
           5 Faj                                                                
                                                                                
Ayu                                                                             
           3 Ayu                                                                
                                                                                
Nina                                                                            
           4 Nin                                                                
                                                                                

NAMA                                                                            
--------------------------------------------------------------------------------
LENGTH(NAMA) SUBSTR(NAMA,                                                       
------------ ------------                                                       
Bayu                                                                            
           4 Bay                                                                
                                                                                
Dina                                                                            
           4 Din                                                                
                                                                                
Eka                                                                             
           3 Eka                                                                
                                                                                

15 rows selected.

SQL> 
SQL> SELECT LPAD(nama,10,'*'), RPAD(nama,10,'*') FROM Mahasiswa;

LPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
RPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
*****Kevin                                                                      
Kevin*****                                                                      
                                                                                
******Rafi                                                                      
Rafi******                                                                      
                                                                                
******Budi                                                                      
Budi******                                                                      
                                                                                

LPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
RPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
******Andi                                                                      
Andi******                                                                      
                                                                                
******Rina                                                                      
Rina******                                                                      
                                                                                
******Sari                                                                      
Sari******                                                                      
                                                                                

LPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
RPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
******Dewi                                                                      
Dewi******                                                                      
                                                                                
******Agus                                                                      
Agus******                                                                      
                                                                                
******Rudi                                                                      
Rudi******                                                                      
                                                                                

LPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
RPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
*****Fajar                                                                      
Fajar*****                                                                      
                                                                                
*******Ayu                                                                      
Ayu*******                                                                      
                                                                                
******Nina                                                                      
Nina******                                                                      
                                                                                

LPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
RPAD(NAMA,10,'*')                                                               
----------------------------------------                                        
******Bayu                                                                      
Bayu******                                                                      
                                                                                
******Dina                                                                      
Dina******                                                                      
                                                                                
*******Eka                                                                      
Eka*******                                                                      
                                                                                

15 rows selected.

SQL> 
SQL> SELECT LTRIM('   KEVIN'), RTRIM('KEVIN   ') FROM DUAL;

LTRIM RTRIM                                                                     
----- -----                                                                     
KEVIN KEVIN                                                                     

SQL> 
SQL> SELECT INSTR(nama,'a') FROM Mahasiswa;

INSTR(NAMA,'A')                                                                 
---------------                                                                 
              0                                                                 
              2                                                                 
              0                                                                 
              0                                                                 
              4                                                                 
              2                                                                 
              0                                                                 
              0                                                                 
              0                                                                 
              2                                                                 
              0                                                                 

INSTR(NAMA,'A')                                                                 
---------------                                                                 
              4                                                                 
              2                                                                 
              4                                                                 
              3                                                                 

15 rows selected.

SQL> 
SQL> SELECT REPLACE(nama,'a','@') FROM Mahasiswa;SELECT tanggal_lahir, TO_CHAR(tanggal_lahir,'DD/MM/YYYY') FROM Mahasiswa;
SELECT REPLACE(nama,'a','@') FROM Mahasiswa;SELECT tanggal_lahir, TO_CHAR(tanggal_lahir,'DD/MM/YYYY') FROM Mahasiswa
                                            *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                         
---------                                                                       
11-MAR-26                                                                       

SQL> 
SQL> SELECT ADD_MONTHS(SYSDATE,2) FROM DUAL;

ADD_MONTH                                                                       
---------                                                                       
11-MAY-26                                                                       

SQL> 
SQL> SELECT LAST_DAY(SYSDATE) FROM DUAL;

LAST_DAY(                                                                       
---------                                                                       
31-MAR-26                                                                       

SQL> 
SQL> SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM DUAL;

NEXT_DAY(                                                                       
---------                                                                       
16-MAR-26                                                                       

SQL> 
SQL> SELECT MONTHS_BETWEEN(SYSDATE,tanggal_lahir) FROM Mahasiswa;SELECT TO_CHAR(SYSDATE,'DD MON YYYY') FROM DUAL;
SELECT MONTHS_BETWEEN(SYSDATE,tanggal_lahir) FROM Mahasiswa;SELECT TO_CHAR(SYSDATE,'DD MON YYYY') FROM DUAL
                                                            *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> SELECT TO_NUMBER('12345') FROM DUAL;

TO_NUMBER('12345')                                                              
------------------                                                              
             12345                                                              

SQL> 
SQL> SELECT TO_DATE('2024-01-01','YYYY-MM-DD') FROM DUAL;SELECT ABS(-10), MOD(10,3), FLOOR(12.8), POWER(2,3) FROM DUAL;
SELECT TO_DATE('2024-01-01','YYYY-MM-DD') FROM DUAL;SELECT ABS(-10), MOD(10,3), FLOOR(12.8), POWER(2,3) FROM DUAL
                                                    *
ERROR at line 1:
ORA-03405: End of query reached; no additional text should follow. 


SQL> 
SQL> SELECT ROUND(12.456,2), CEIL(12.2) FROM DUAL;

ROUND(12.456,2) CEIL(12.2)                                                      
--------------- ----------                                                      
          12.46         13                                                      

SQL> SPOOL OFF
