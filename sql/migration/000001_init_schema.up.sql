create table UserInfo(
	Username varchar(50) primary key,
	Firstname varchar(50) not null,
	Lastname  varchar(50) not null,
	Dob date,
	Phone char(10) unique,
	Email varchar(30) unique,
	AvartarUrl varchar(200)
);

create table Authentication(
	Username varchar(50) not null references UserInfo(Username) on delete cascade,
	PassHass char(100) not null,
	Salt char(100) not null,
	CreatedAt timestamp with time zone not null,
	primary key(Username, CreatedAt)
);

create table Message(
	Roomid int,
	Sender varchar(50) references UserInfo(Username) on delete cascade,
	Receiver varchar(50) references UserInfo(Username) on delete cascade,
	Content json not null,
	SendedAt timestamp with time zone not null,
	primary key(RoomID, SendedAt)
);

create table RoomInfo(
	Roomid int primary key,
	RoomName varchar(100) not null
);

create table Room(
	Roomid int references RoomInfo(roomid) on delete cascade,
	Member varchar(50) references UserInfo(Username) on delete cascade,
	JoinedAt timestamp with time zone not null,
	Role char(10) check (Role in ('member', 'admin'))
);

select * from UserInfo;