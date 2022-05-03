create database Bus

drop table BusInfo

create table BusInfo(BusID int Identity primary key,
BoardingPoint nvarchar(50),
TravelDate Date,
Amount decimal(5,2),
Rating int);

INSERT INTO BusInfo (BoardingPoint,TravelDate,Amount,Rating )
VALUES 
('BGL','06-18-2017' ,400.65 ,2 ),
('HYD','10-05-2017' ,600.00 ,3 ),
('CHN','07-25-2016' ,445.95 ,3 ),
('PUN','12-10-2017' ,543.00 ,4 ),
('MUM','01-28-2017' ,500.50 ,4 ),
('PUN','03-27-2016' ,333.55 ,3 ),
('MUM','11-06-2016' ,510.00 ,4 );

select * from BusInfo;

select BoardingPoint,TravelDate from BusInfo where Amount>450;

select BusId,BoardingPoint from BusInfo where TravelDate='12-10-2017';

CREATE VIEW Bus_view AS
SELECT BusId, BoardingPoint
FROM BusInfo
WHERE rating>3;

select * from Bus_view

Create procedure SPBus
@BusID int,
@BoardingPoint nvarchar(50),
@TravelDate Date,
@Amount decimal(5,2),
@Rating int
as
Begin
     Insert into SPBus values (@BusId,@BoardingPoint,@TravelDate,@Amount,@Rating)   
End
Go

Exec SPBus 