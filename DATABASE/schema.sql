/*

CREATE database OfIciUlasım;*/
use OfIciUlasım;

create table kullanicilar(
TcNo varchar(11) PRIMARY KEY ,
ad varchar(100),
soyad varchar(100),
eposta varchar(100) unique,
sifre varchar(100)
 
);

create table kartlar(
kart_no varchar(100)primary key,
kullanici_id varchar(11),
bakiye Decimal(10,2) default 0.00,
kart_tipi enum('Tam', 'Ogrenci', 'Emekli') DEFAULT 'Tam',
olusturma_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(TcNo)
);

create table hatlar(
id int primary key auto_increment,
hat_kodu varchar(10) unique,
hat_adı varchar(100));

create table otobusler(
numarası int primary key auto_increment,
gun_tipi ENUM('HaftaIci', 'Cumartesi', 'Pazar'),
id int,
foreign key (id) references hatlar(id)
);

create table HareketSaatleri(
id int primary key auto_increment,
otobusNumara int,
hat_id int,
kalkis_saati TIME,
gun_tipi ENUM('HaftaIci', 'Cumartesi', 'Pazar'),
foreign key (hat_id) references hatlar(id),
foreign key (otobusNumara) references otobusler(numarası)
);

Create table IslemGecmisi(
id INT PRIMARY KEY AUTO_INCREMENT,
    kart_no VARCHAR(16),
    islem_tipi ENUM('Yukleme', 'Harcama'),
    miktar DECIMAL(10, 2),
    tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (kart_no) REFERENCES Kartlar(kart_no)

);
CREATE TABLE Alarmlar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kullanici_id varchar(11),
    hat_id INT,
    alarm_saati TIME,
    aktif_mi BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(TcNo),
    FOREIGN KEY (hat_id) REFERENCES hatlar(id)
);
