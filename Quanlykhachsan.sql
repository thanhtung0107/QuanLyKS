

GO
If OBJECT_ID('users') is not null
Drop table users
Go
Create Table users(
	Username nvarchar(10) not null,
	Password nvarchar(10) null,
	Role nvarchar(10) null,
	Constraint PK_users Primary key (Username)
)

---
If OBJECT_ID('khachhang') is not null
Drop table khachhang
Go
Create Table khachhang(
	CMND nvarchar(10) not null,
	hoten nvarchar(50) null,	
	gtinh bit null,
	sdt nvarchar(11) null,
	Constraint PK_khachhang Primary key (CMND)
)
--
If OBJECT_ID('phong') is not null
Drop table phong
Go
Create Table phong(
	maphong nvarchar(10) not null,
	loaiphong nvarchar(20) null,
	giaphong decimal(18,2) null,
	trangthai bit null,
	Constraint PK_phong Primary key (maphong)
)
If OBJECT_ID('CTHD') is not null
Drop table CTHD
Go
Create Table CTHD(
	maHD int IDENTITY(00001,1) not null,
	maphong nvarchar(10) not null,
	CMND nvarchar(10) not null,
	checkin datetime null,
	checkout datetime null,
	username nvarchar(10) null,
	
	Constraint PK_CTHD Primary key (maHD),
	Constraint FK_CTHD_phong Foreign key (maphong)
	References phong(maphong),
	Constraint FK_CTHD_khachhang Foreign key (CMND)
	References khachhang(CMND)

)



INSERT dbo.users
        ( Username, Password, Role )
VALUES  ( N'admin', -- Username - nvarchar(10)
          N'nhom1', -- Password - nvarchar(10)
          N'admin'  -- Role - nvarchar(10)
          )
INSERT dbo.users
        ( Username, Password, Role )
VALUES  ( N'nhanvien1', -- Username - nvarchar(10)
          N'123', -- Password - nvarchar(10)
          N'nv'  -- Role - nvarchar(10)
          )
INSERT dbo.users
        ( Username, Password, Role )
VALUES  ( N'nhanvien2', -- Username - nvarchar(10)
          N'456', -- Password - nvarchar(10)
          N'nv'  -- Role - nvarchar(10)
          )

INSERT dbo.khachhang
        ( CMND, hoten, gtinh, sdt )
VALUES  ( N'0012000230', -- CMND - nvarchar(10)
          
          N'Do Dang Viet', -- hoten - nvarchar(50)
          1, -- gtinh - bit
          N'0960123222'  -- sdt - nvarchar(11)
          )
INSERT dbo.khachhang
        ( CMND, hoten, gtinh, sdt )
VALUES  ( N'1052002230', -- CMND - nvarchar(10)
         
          N'Tran Phuc Hong', -- hoten - nvarchar(50)
          1, -- gtinh - bit
          N'0927662961'  -- sdt - nvarchar(11)
          )
INSERT dbo.khachhang
        ( CMND, hoten, gtinh, sdt )
VALUES  ( N'0725671031', -- CMND - nvarchar(10)
        
          N'Le Van Nam', -- hoten - nvarchar(50)
          1, -- gtinh - bit
          N'0962748290'  -- sdt - nvarchar(11)
          )
INSERT dbo.khachhang
        ( CMND, hoten, gtinh, sdt )
VALUES  ( N'0268371056', -- CMND - nvarchar(10)
          
          N'Pham Trong Toan', -- hoten - nvarchar(50)
          1, -- gtinh - bit
          N'0983812616'  -- sdt - nvarchar(11)
          )
INSERT dbo.khachhang
        ( CMND, hoten, gtinh, sdt )
VALUES  ( N'0548176013', -- CMND - nvarchar(10)
         
          N'Vo Thi Sau', -- hoten - nvarchar(50)
          0, -- gtinh - bit
          N'0925174131'  -- sdt - nvarchar(11)
          )

INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P201' , -- maphong - nvarchar(10)
          N'Phong Tieu Chuan' , -- loaiphong - nvarchar(20)
          750000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P202' , -- maphong - nvarchar(10)
          N'Phong Tieu Chuan' , -- loaiphong - nvarchar(20)
          750000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
        
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P203' , -- maphong - nvarchar(10)
          N'Phong Tieu Chuan' , -- loaiphong - nvarchar(20)
          750000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P204' , -- maphong - nvarchar(10)
          N'Phong Cao Cap' , -- loaiphong - nvarchar(20)
          1000000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P205' , -- maphong - nvarchar(10)
          N'Phong Cao Cap' , -- loaiphong - nvarchar(20)
          1000000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P206' , -- maphong - nvarchar(10)
          N'Phong Cao Cap' , -- loaiphong - nvarchar(20)
          1000000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P208' , -- maphong - nvarchar(10)
          N'Phong SVIP' , -- loaiphong - nvarchar(20)
          1500000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P209' , -- maphong - nvarchar(10)
          N'Phong SVIP' , -- loaiphong - nvarchar(20)
          1500000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
INSERT dbo.phong
        ( maphong ,
          loaiphong ,
          giaphong ,
          trangthai
        )
VALUES  ( N'P210' , -- maphong - nvarchar(10)
          N'Phong SVIP' , -- loaiphong - nvarchar(20)
          1500000 , -- giaphong - decimal
          0  -- trangthai - bit
        )
        Insert into phong values (N'P301',N'Phong Tieu Chuan',750000,0)
        Insert into phong values (N'P302',N'Phong Tieu Chuan',750000,0)
        Insert into phong values (N'P303',N'Phong Tieu Chuan',750000,0)
        Insert into phong values (N'P304',N'Phong Tieu Chuan',750000,0)
        Insert into phong values (N'P305',N'Phong Tieu Chuan',750000,0)
        Insert into phong values (N'P306',N'Phong Tieu Chuan',750000,0)
		Insert into phong values (N'P307',N'Phong Cao Cap',1000000,0)
		Insert into phong values (N'P308',N'Phong Cao Cap',1000000,0)
		Insert into phong values (N'P309',N'Phong SVIP',1500000,0)
		Insert into phong values (N'P310',N'Phong SVIP',1500000,0)
Select * from users
Select * from khachhang
Select * from phong
Select * from CTHD