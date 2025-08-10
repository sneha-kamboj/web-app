USE `mifosplatform-tenants`;
CREATE TABLE IF NOT EXISTS `mifos_tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `schema_name` varchar(100) NOT NULL,
  `timezone_id` varchar(100) NOT NULL DEFAULT 'UTC',
  `created_on_utc` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_mifos_tenants_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `mifos_tenants` (`identifier`, `name`, `description`, `schema_name`, `timezone_id`) 
  VALUES ('default', 'Default Tenant', 'Default tenant for demo', 'mifostenant-default', 'UTC')
  ON DUPLICATE KEY UPDATE name=VALUES(name), description=VALUES(description), schema_name=VALUES(schema_name), timezone_id=VALUES(timezone_id);
