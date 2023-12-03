CREATE TABLE `PrinRequest` (
  `User_id` integer,
  `Request_id` integer,
  `Created_at` timestamp
);

CREATE TABLE `Users` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `role` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `payment` varchar(255),
  `phone` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `PrinRequestDetails` (
  `Request_id` integer PRIMARY KEY,
  `TenFile_id` integer,
  `User_id` integer,
  `Status` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `FileRequestDetails` (
  `TenFile_id` integer PRIMARY KEY,
  `SoLuong` integer,
  `User_id` integer,
  `Status` varchar(255),
  `created_at` timestamp
);

ALTER TABLE `Users` ADD FOREIGN KEY (`id`) REFERENCES `PrinRequest` (`User_id`);

ALTER TABLE `PrinRequestDetails` ADD FOREIGN KEY (`Request_id`) REFERENCES `PrinRequest` (`Request_id`);

ALTER TABLE `FileRequestDetails` ADD FOREIGN KEY (`TenFile_id`) REFERENCES `PrinRequestDetails` (`TenFile_id`);

ALTER TABLE `FileRequestDetails` ADD FOREIGN KEY (`User_id`) REFERENCES `Users` (`id`);
