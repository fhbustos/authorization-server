--usuarios
INSERT INTO `spring`.`authorities` VALUES (NULL, 'juan', 'write');
INSERT INTO `spring`.`authorities` VALUES (NULL, 'pedro', 'write');

INSERT INTO `spring`.`users` VALUES (NULL, 'juan', '123', '1');
INSERT INTO `spring`.`users` VALUES (NULL, 'pedro', '456', '1');

--clientes
INSERT INTO `spring`.`oauth_client_details`
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('webapp', 'websecret', 'read', 'password,refresh_token', 
	null, null, 36000, 36000, null, true);
	
INSERT INTO `spring`.`oauth_client_details`
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('cellapp', 'cellsecret', 'read', 'password,refresh_token', 
	null, null, 12000, 36000, null, true);
	
INSERT INTO `spring`.`oauth_client_details`
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('resourceserver', 'resourceserversecret', 'read,write', null, 
	null, null, null, null, null, true);