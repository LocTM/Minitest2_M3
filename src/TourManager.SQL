Create database TourManager1;

Use TourManager1;

Create table Tour(
                     id INT NOT NULL PRIMARY KEY auto_increment,
                     tourCode varchar(255),
                     category_id INT(255),
                     destination_id INT(255),
                     dateStart DATE,
                     dateEnd DATE

);

ALTER TABLE Tour
    ADD FOREIGN KEY (category_id) REFERENCES CategoryTour(id),
    ADD FOREIGN KEY (destination_id) REFERENCES Destination(id);

Create table Destination(
                            id INT NOT NULL PRIMARY KEY auto_increment,
                            destinationName varchar(255),
                            describes varchar(255),
                            cost INT,
                            city_id INT

);

ALTER TABLE Destination
    ADD FOREIGN KEY (city_id) REFERENCES City(id);

Create table CategoryTour(
                             id INT NOT NULL PRIMARY KEY auto_increment,
                             categoryCode varchar(255),
                             categoryName varchar(255)
);


Create table City(
                     id INT NOT NULL PRIMARY KEY auto_increment,
                     cityName varchar(255)
);


Create table OrderTour(
                          id INT NOT NULL PRIMARY KEY auto_increment,
                          tour_id INT,
                          clients_id INT,
                          status varchar(255)

);

ALTER TABLE OrderTour
    ADD FOREIGN KEY (tour_id) REFERENCES Tour(id),
	 ADD FOREIGN KEY (clients_id) REFERENCES Clients(id);


Create table Clients(
                        id INT NOT NULL PRIMARY KEY auto_increment,
                        nameClients varchar(255),
                        idNumber varchar (255),
                        dateBirth DATE,
                        city_id INT

);

-- Bảng Điểm đến du lịch (id, tên điểm đến, mô tả, giá trung bình, thành phố _id)
-- Thêm 5 bản ghi của điểm đến du lịch
select * from destination;
INSERT INTO destination values (1, 'Ha Noi', 'TP Ha Noi', 5000, 1);
INSERT INTO destination values (2, 'Da Nang', 'TP Da Nang', 4000, 2);
INSERT INTO destination values (3, 'TP HCM', 'TP HCM', 5500, 3);
INSERT INTO destination values (4, 'Vung Tau', 'TP Vung Tau', 7000, 4);
INSERT INTO destination values (5, 'Nha Trang', 'TP Nha Trang', 6000, 5);
select * FROM destination;
-- Bảng Clients(id, name, số căn cước, năm sinh, thành phố_id)
-- Thêm 10 khách hàng

insert into Clients value (1,'Nguyen Van A','001','2000-12-01',1);
insert into Clients value (2,'Tran Van B','002','1987-2-08',1);
insert into Clients value (3,'Nguyen Van C','003','2010-12-01',1);
insert into Clients value (4,'Pham Van D','004','2003-04-08',1);
insert into Clients value (5,'Nguyen Van E','005','1990-2-15',1);
insert into Clients value (6,'Dinh Van F','006','2011-03-01',1);
insert into Clients value (7,'Nguyen Van G','007','1997-08-02',1);
insert into Clients value (8,'Ha Van H','008','1999-05-09',1);
insert into Clients value (9,'Doan Van I','009','1996-10-01',1);
insert into Clients value (10,'Nguyen Van K','010','1973-08-01',1);


-- City(id, tên thành phố)
-- Thêm 5 thành phố 
INSERT INTO City values (1, 'Ha Noi');
INSERT INTO City values (2, 'Da Nang');
INSERT INTO City values (3, 'TP HCM');
INSERT INTO City values (4, 'Vung Tau');
INSERT INTO City values (5, 'Nha Trang');


-- Tour(id, mã tour, loại tour_id, giá điểm đến du lịch, id ngày bắt đầu (dạng ngày tháng), ngày kết thúc (dạng ngày tháng))
-- Thêm 15 tour
select * from Tour;
INSERT INTO Tour values (1, 'TOUR001',1, 1, '2020-02-01', '2024-02-10');
INSERT INTO Tour values (2, 'TOUR002', 2, 2, '2020-03-01', '2024-03-10');
INSERT INTO Tour values (3, 'TOUR003', 1, 3, '2020-04-01', '2024-04-10');
INSERT INTO Tour values (4, 'TOUR004', 1, 4, '2020-05-01', '2024-05-10');
INSERT INTO Tour values (5, 'TOUR005', 2, 5, '2020-06-01', '2024-06-10');
INSERT INTO Tour values (6, 'TOUR006', 1, 1, '2020-07-01', '2024-07-10');
INSERT INTO Tour values (7, 'TOUR007', 2, 2, '2020-08-01', '2024-08-10');
INSERT INTO Tour values (8, 'TOUR008', 2, 3, '2024-09-01', '2024-09-10');
INSERT INTO Tour values (9, 'TOUR009', 1, 4, '2024-10-01', '2024-10-10');
INSERT INTO Tour values (10, 'TOUR010', 2, 5, '2024-11-01', '2024-11-05');
INSERT INTO Tour values (11, 'TOUR011', 1, 1, '2024-12-01', '2024-12-05');
INSERT INTO Tour values (12, 'TOUR012', 2, 2, '2024-03-01', '2024-03-05');
INSERT INTO Tour values (13, 'TOUR013', 2, 3, '2024-02-01', '2024-02-05');
INSERT INTO Tour values (14, 'TOUR014', 1, 4, '2024-03-01', '2024-03-05');
INSERT INTO Tour values (15, 'TOUR015', 1, 5, '2024-02-01', '2024-02-05');
INSERT INTO Tour values (16, 'TOUR015', 1, 5, '2020-03-01', '2024-02-05');
INSERT INTO Tour values (17, 'TOUR015', 1, 5, '2020-03-01', '2020-04-05');
INSERT INTO Tour values (18, 'TOUR015', 1, 5, '2020-03-01', '2020-04-05');
INSERT INTO Tour values (19, 'TOUR015', 1, 5, '2020-03-01', '2020-04-05');
INSERT INTO Tour values (20, 'TOUR015', 1, 5, '2020-03-01', '2020-04-05');


select * from Tour;


-- CategoryTour(id, mã loại, tên loại)
-- Thêm 2 loại
INSERT INTO CategoryTour values (1, 'TOUR001', 'FoodTour');
INSERT INTO CategoryTour values (2, 'TOUR001', 'BikeTour');


-- OrderTour(id, tour_id, khách hàng_id, trạng thái)
-- Thêm 10 hóa đơn đặt tour
INSERT INTO OrderTour values (1, '1', '1','TRUE');
INSERT INTO OrderTour values (2, '2', '2','TRUE');
INSERT INTO OrderTour values (3, '3', '3','TRUE');
INSERT INTO OrderTour values (4, '4', '4','FALSE');
INSERT INTO OrderTour values (5, '5', '5','TRUE');
INSERT INTO OrderTour values (6, '6', '6','TRUE');
INSERT INTO OrderTour values (7, '7', '7','FALSE');
INSERT INTO OrderTour values (8, '8', '8','FALSE');
INSERT INTO OrderTour values (9, '9', '9','TRUE');
INSERT INTO OrderTour values (10, '10', '10','TRUE');

-- Thống kê số lượng tour của các thành phố
SELECT City.cityName, COUNT(Tour.id) AS NumberOfTours
FROM City
         LEFT JOIN Destination ON City.id = Destination.city_id
         LEFT JOIN Tour ON Destination.id = Tour.destination_id
GROUP BY City.cityName;

-- Tính số tour có ngày bắt đầu trong tháng 3 năm 2020 ( dùng count) 
SELECT COUNT(*) AS SoLuongTour
FROM Tour
WHERE YEAR(dateStart) = 2020 AND MONTH(dateStart) = 3;

-- Kết thúc tháng 4 năm 2020
SELECT COUNT(*) AS SoLuongTour
FROM Tour
WHERE YEAR(dateEnd) = 2020 AND MONTH(dateEnd) = 4;




