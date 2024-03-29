USE [ASSIGNMENTJAVA5]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [bigint] NULL,
	[productid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[available] [bit] NULL,
	[confirm] [bit] NULL,
	[createdate] [date] NULL,
	[price] [float] NULL,
	[username] [varchar](255) NULL,
	[account_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[about] [varchar](255) NULL,
	[available] [bit] NOT NULL,
	[createdate] [date] NULL,
	[discount] [int] NOT NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[categoryid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[revenue_price](
	[sum] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKagh5svlor3slbay6tq5wqor1o] FOREIGN KEY([account_id])
REFERENCES [dbo].[accounts] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKagh5svlor3slbay6tq5wqor1o]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]

GO
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'ALFKI', N'alfki', N'Maria Anders',N'quận 12 - tphcm',0765543280, N'alfki@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo',N'quận 12 - tphcm',0765543280, N'anatr@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'ANTON', N'anton', N'Antonio Moreno',N'quận 12 - tphcm',0765543280, N'anton@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'AROUT', N'arout', N'Thomas Hardy',N'quận 12 - tphcm',0765543280, N'arout@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BERGS', N'bergs', N'Christina Berglund',N'quận 12 - tphcm',0765543280, N'bergs@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BLAUS', N'blaus', N'Hanna Moos',N'quận 12 - tphcm',0765543280, N'blaus@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BLONP', N'blonp', N'Frédérique Citeaux',N'quận 12 - tphcm',0765543280, N'blonp@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BOLID', N'bolid', N'Martín Sommer',N'quận 12 - tphcm',0765543280, N'bolid@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BONAP', N'bonap', N'Laurence Lebihan',N'quận 12 - tphcm',0765543280, N'bonap@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BOTTM', N'bottm', N'Elizabeth Lincoln',N'quận 12 - tphcm',0765543280, N'bottm@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth',N'quận 12 - tphcm',0765543280, N'bsbev@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson',N'quận 12 - tphcm',0765543280, N'cactu@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'CENTC', N'centc', N'Francisco Chang',N'quận 12 - tphcm',0765543280, N'centc@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'CHOPS', N'chops', N'Yang Wang',N'quận 12 - tphcm',0765543280, N'chops@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'COMMI', N'commi', N'Pedro Afonso',N'quận 12 - tphcm',0765543280, N'commi@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown',N'quận 12 - tphcm',0765543280, N'consh@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'customer', N'123', N'Nguyễn Văn Tèo',N'quận 12 - tphcm',0765543280, N'teonv@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'director', N'123', N'Nguyễn Chí Phèo',N'quận 12 - tphcm',0765543280, N'pheonc@fpt.edu.vn', N'-1407968806.jpg', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb',N'quận 12 - tphcm',0765543280, N'dracd@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'DUMON', N'dumon', N'Janine Labrune',N'quận 12 - tphcm',0765543280, N'dumon@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'EASTC', N'eastc', N'Ann Devon',N'quận 12 - tphcm',0765543280, N'eastc@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel',N'quận 12 - tphcm',0765543280, N'ernsh@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FAMIA', N'famia', N'Aria Cruz',N'quận 12 - tphcm',0765543280, N'famia@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FISSA', N'fissa', N'Diego Roel',N'quận 12 - tphcm',0765543280, N'fissa@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FOLIG', N'folig', N'Martine Rancé',N'quận 12 - tphcm',0765543280, N'folig@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FOLKO', N'folko', N'Maria Larsson',N'quận 12 - tphcm',0765543280, N'folko@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FRANK', N'frank', N'Peter Franken',N'quận 12 - tphcm',0765543280, N'frank@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FRANR', N'franr', N'Carine Schmitt',N'quận 12 - tphcm',0765543280, N'franr@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FRANS', N'frans', N'Paolo Accorti',N'quận 12 - tphcm',0765543280, N'frans@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez',N'quận 12 - tphcm',0765543280, N'furib@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra',N'quận 12 - tphcm',0765543280, N'galed@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre',N'quận 12 - tphcm',0765543280, N'godos@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'leminh', N'123', N'Ho Le Minh',N'quận 12 - tphcm',0987654321, N'leminh@gmail.com', N'user.png', 1, 0)
INSERT [dbo].[accounts] ([username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (N'admin', N'admin', N'Le Minh',N'quận 12 - tphcm',0987654321, N'minhhlps18682@fpt.edu.vn', N'user.png', 1, 1)

go

INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Đồng hồ đeo tay',1)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Máy tính xách tay',1)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Máy ảnh',1)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Điện thoại',1)
INSERT [dbo].[categories] ([name], [status]) VALUES ( N'Nước bông',0)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'thời trang nam',1)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Nón thời trang',1)
INSERT [dbo].[categories] ( [name], [status]) VALUES ( N'Túi xách du lịch',1)
INSERT [dbo].[categories] ([name], [status]) VALUES ( N'Đồng hồ đeo tay',1)
INSERT [dbo].[categories] ([name], [status]) VALUES ( N'Đồng hồ đeo tay',0)
INSERT [dbo].[categories] ([name], [status]) VALUES ( N'Đồng hồ đeo tay',0)
go

insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1980-03-29' AS Date),1, N'1.jpg',  N'Aniseed Syrup',10,  190, 1 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('dong',0, CAST(N'1982-12-18' AS Date),2, N'2.jpg',  N'Aniseed Syrup',62.5,  190, 2 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1973-06-14' AS Date),2, N'3.jpg',  N'Aniseed Syrup',30,  190, 1 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0,  CAST(N'1976-03-10' AS Date),4, N'4.jpg',  N'Aniseed Syrup',18,  190, 3 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1978-12-06' AS Date),3, N'5.jpg',  N'Aniseed Syrup',60,  190, 4 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1981-09-03' AS Date),5, N'6.jpg',  N'Aniseed Syrup',70,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1,  CAST(N'1972-02-26' AS Date),3, N'7.jpg',  N'Aniseed Syrup',20,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1983-03-13' AS Date),2, N'8.jpg',  N'Aniseed Syrup',15,  190, 7 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1985-12-10' AS Date),4, N'9.jpg',  N'Aniseed Syrup',12.2,  190, 8);
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1986-03-29' AS Date),5, N'10.jpg',  N'Aniseed Syrup',18,  190, 5 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1987-06-29' AS Date),5, N'1.jpg',  N'Aniseed Syrup',26,  190, 2 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1982-01-22' AS Date),5, N'2.jpg',  N'Aniseed Syrup',35,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1984-05-14' AS Date),1, N'3.jpg',  N'Aniseed Syrup',40,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1976-03-16' AS Date),1, N'4.jpg',  N'Aniseed Syrup',41.5,  190, 9 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1977-04-17' AS Date),2, N'5.jpg',  N'Aniseed Syrup',33.6,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1975-03-28' AS Date),1, N'6.jpg',  N'Aniseed Syrup',28.9,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1980-02-21' AS Date),1, N'7.jpg',  N'Aniseed Syrup',30.5,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1980-09-30' AS Date),2, N'8.jpg',  N'Aniseed Syrup',5,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',1, CAST(N'1980-04-12' AS Date),3, N'9.jpg',  N'Aniseed Syrup',2,  190, 6 );
insert products(about, available, createdate, discount, image, name, price, quantity, categoryid) values('',0, CAST(N'1980-10-02' AS Date),0, N'10.jpg',  N'Aniseed Syrup',2,  190, 6 );
