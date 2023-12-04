CREATE TABLE [FileDetails] (
  [File_id] number PRIMARY KEY,
  [Name] varchar(255),
  [created_at] timestamp
)
GO

CREATE TABLE [Users] (
  [id] number PRIMARY KEY,
  [username] varchar(255),
  [role] varchar(255),
  [email] varchar(255),
  [address] varchar(255),
  [payment] varchar(255),
  [phone] varchar(255)
)
GO

CREATE TABLE [PrinterDetails] (
  [Printer_id] number PRIMARY KEY,
  [PrinterName] varchar(255),
  [Status] varchar(255)
)
GO

CREATE TABLE [PrintRequest] (
  [Request_id] number PRIMARY KEY,
  [TenMayIn_id] number,
  [User_id] number,
  [TenFile_id] number,
  [SoLuong] number,
  [TwoSides] varchar(255),
  [SoTrang] varchar(255),
  [Status] varchar(255),
  [created_at] timestamp
)
GO

ALTER TABLE [PrintRequest] ADD FOREIGN KEY ([TenMayIn_id]) REFERENCES [PrinterDetails] ([Printer_id])
GO

ALTER TABLE [PrintRequest] ADD FOREIGN KEY ([User_id]) REFERENCES [Users] ([id])
GO

ALTER TABLE [PrintRequest] ADD FOREIGN KEY ([TenFile_id]) REFERENCES [FileDetails] ([File_id])
GO
