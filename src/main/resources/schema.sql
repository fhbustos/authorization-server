--usuarios
DROP TABLE IF EXISTS `spring`.`users`;
CREATE TABLE IF NOT EXISTS `spring`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `enabled` INT NOT NULL,
  PRIMARY KEY (`id`));

DROP TABLE IF EXISTS `spring`.`authorities`;
CREATE TABLE IF NOT EXISTS `spring`.`authorities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `authority` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

--clientes  
DROP TABLE IF EXISTS `spring`.`oauth_client_details`;
CREATE TABLE `spring`.`oauth_client_details` (
    `client_id` VARCHAR(256) PRIMARY KEY,
    `resource_ids` VARCHAR(256),
    `client_secret` VARCHAR(256),
    `scope` VARCHAR(256),
    `authorized_grant_types` VARCHAR(256),
    `web_server_redirect_uri` VARCHAR(256),
    `authorities` VARCHAR(256),
    `access_token_validity` INTEGER,
    `refresh_token_validity` INTEGER,
    `additional_information` VARCHAR(4096),
    `autoapprove` VARCHAR(256)
);