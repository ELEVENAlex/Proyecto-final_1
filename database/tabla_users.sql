DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
	`id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`username` VARCHAR(60) NOT NULL COLLATE 'utf8mb4_general_ci',
	`password` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci'
)