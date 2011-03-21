DELETE FROM hosts_profiles WHERE NOT hostid IN (SELECT hostid FROM hosts);
DELETE FROM hosts_profiles_ext WHERE NOT hostid IN (SELECT hostid FROM hosts);

CREATE TABLE host_profile (
	hostid                   number(20)                                NOT NULL,
	type                     nvarchar2(64)   DEFAULT ''                ,
	type_full                nvarchar2(64)   DEFAULT ''                ,
	name                     nvarchar2(64)   DEFAULT ''                ,
	alias                    nvarchar2(64)   DEFAULT ''                ,
	os                       nvarchar2(64)   DEFAULT ''                ,
	os_full                  nvarchar2(255)  DEFAULT ''                ,
	os_short                 nvarchar2(64)   DEFAULT ''                ,
	serialno_a               nvarchar2(64)   DEFAULT ''                ,
	serialno_b               nvarchar2(64)   DEFAULT ''                ,
	tag                      nvarchar2(64)   DEFAULT ''                ,
	asset_tag                nvarchar2(64)   DEFAULT ''                ,
	macaddress_a             nvarchar2(64)   DEFAULT ''                ,
	macaddress_b             nvarchar2(64)   DEFAULT ''                ,
	hardware                 nvarchar2(255)  DEFAULT ''                ,
	hardware_full            nclob           DEFAULT ''                ,
	software                 nvarchar2(255)  DEFAULT ''                ,
	software_full            nclob           DEFAULT ''                ,
	software_app_a           nvarchar2(64)   DEFAULT ''                ,
	software_app_b           nvarchar2(64)   DEFAULT ''                ,
	software_app_c           nvarchar2(64)   DEFAULT ''                ,
	software_app_d           nvarchar2(64)   DEFAULT ''                ,
	software_app_e           nvarchar2(64)   DEFAULT ''                ,
	contact                  nclob           DEFAULT ''                ,
	location                 nclob           DEFAULT ''                ,
	location_lat             nvarchar2(16)   DEFAULT ''                ,
	location_lon             nvarchar2(16)   DEFAULT ''                ,
	notes                    nclob           DEFAULT ''                ,
	chassis                  nvarchar2(64)   DEFAULT ''                ,
	model                    nvarchar2(64)   DEFAULT ''                ,
	hw_arch                  nvarchar2(32)   DEFAULT ''                ,
	vendor                   nvarchar2(64)   DEFAULT ''                ,
	contract_number          nvarchar2(64)   DEFAULT ''                ,
	installer_name           nvarchar2(64)   DEFAULT ''                ,
	deployment_status        nvarchar2(64)   DEFAULT ''                ,
	url_a                    nvarchar2(255)  DEFAULT ''                ,
	url_b                    nvarchar2(255)  DEFAULT ''                ,
	url_c                    nvarchar2(255)  DEFAULT ''                ,
	host_networks            nclob           DEFAULT ''                ,
	host_netmask             nvarchar2(39)   DEFAULT ''                ,
	host_router              nvarchar2(39)   DEFAULT ''                ,
	oob_ip                   nvarchar2(39)   DEFAULT ''                ,
	oob_netmask              nvarchar2(39)   DEFAULT ''                ,
	oob_router               nvarchar2(39)   DEFAULT ''                ,
	date_hw_purchase         nvarchar2(64)   DEFAULT ''                ,
	date_hw_install          nvarchar2(64)   DEFAULT ''                ,
	date_hw_expiry           nvarchar2(64)   DEFAULT ''                ,
	date_hw_decomm           nvarchar2(64)   DEFAULT ''                ,
	site_address_a           nvarchar2(128)  DEFAULT ''                ,
	site_address_b           nvarchar2(128)  DEFAULT ''                ,
	site_address_c           nvarchar2(128)  DEFAULT ''                ,
	site_city                nvarchar2(128)  DEFAULT ''                ,
	site_state               nvarchar2(64)   DEFAULT ''                ,
	site_country             nvarchar2(64)   DEFAULT ''                ,
	site_zip                 nvarchar2(64)   DEFAULT ''                ,
	site_rack                nvarchar2(128)  DEFAULT ''                ,
	site_notes               nclob           DEFAULT ''                ,
	poc_1_name               nvarchar2(128)  DEFAULT ''                ,
	poc_1_email              nvarchar2(128)  DEFAULT ''                ,
	poc_1_phone_a            nvarchar2(64)   DEFAULT ''                ,
	poc_1_phone_b            nvarchar2(64)   DEFAULT ''                ,
	poc_1_cell               nvarchar2(64)   DEFAULT ''                ,
	poc_1_screen             nvarchar2(64)   DEFAULT ''                ,
	poc_1_notes              nclob           DEFAULT ''                ,
	poc_2_name               nvarchar2(128)  DEFAULT ''                ,
	poc_2_email              nvarchar2(128)  DEFAULT ''                ,
	poc_2_phone_a            nvarchar2(64)   DEFAULT ''                ,
	poc_2_phone_b            nvarchar2(64)   DEFAULT ''                ,
	poc_2_cell               nvarchar2(64)   DEFAULT ''                ,
	poc_2_screen             nvarchar2(64)   DEFAULT ''                ,
	poc_2_notes              nclob           DEFAULT ''                ,
	PRIMARY KEY (hostid)
);
ALTER TABLE host_profile ADD CONSTRAINT c_host_profile_1 FOREIGN KEY (hostid) REFERENCES hosts (hostid) ON DELETE CASCADE;

-- create temporary t_host_profile table
CREATE TABLE t_host_profile (
	hostid                   number(20),
	type                     nvarchar2(64),
	type_full                nvarchar2(64),
	name                     nvarchar2(64),
	alias                    nvarchar2(64),
	os                       nvarchar2(64),
	os_full                  nvarchar2(255),
	os_short                 nvarchar2(64),
	serialno_a               nvarchar2(64),
	serialno_b               nvarchar2(64),
	tag                      nvarchar2(64),
	asset_tag                nvarchar2(64),
	macaddress_a             nvarchar2(64),
	macaddress_b             nvarchar2(64),
	hardware                 nvarchar2(255),
	hardware_full            nclob,
	software                 nvarchar2(255),
	software_full            nclob,
	software_app_a           nvarchar2(64),
	software_app_b           nvarchar2(64),
	software_app_c           nvarchar2(64),
	software_app_d           nvarchar2(64),
	software_app_e           nvarchar2(64),
	contact                  nclob,
	location                 nclob,
	location_lat             nvarchar2(16),
	location_lon             nvarchar2(16),
	notes                    nclob,
	chassis                  nvarchar2(64),
	model                    nvarchar2(64),
	hw_arch                  nvarchar2(32),
	vendor                   nvarchar2(64),
	contract_number          nvarchar2(64),
	installer_name           nvarchar2(64),
	deployment_status        nvarchar2(64),
	url_a                    nvarchar2(255),
	url_b                    nvarchar2(255),
	url_c                    nvarchar2(255),
	host_networks            nclob,
	host_netmask             nvarchar2(39),
	host_router              nvarchar2(39),
	oob_ip                   nvarchar2(39),
	oob_netmask              nvarchar2(39),
	oob_router               nvarchar2(39),
	date_hw_purchase         nvarchar2(64),
	date_hw_install          nvarchar2(64),
	date_hw_expiry           nvarchar2(64),
	date_hw_decomm           nvarchar2(64),
	site_address_a           nvarchar2(128),
	site_address_b           nvarchar2(128),
	site_address_c           nvarchar2(128),
	site_city                nvarchar2(128),
	site_state               nvarchar2(64),
	site_country             nvarchar2(64),
	site_zip                 nvarchar2(64),
	site_rack                nvarchar2(128),
	site_notes               nclob,
	poc_1_name               nvarchar2(128),
	poc_1_email              nvarchar2(128),
	poc_1_phone_a            nvarchar2(64),
	poc_1_phone_b            nvarchar2(64),
	poc_1_cell               nvarchar2(64),
	poc_1_screen             nvarchar2(64),
	poc_1_notes              nclob,
	poc_2_name               nvarchar2(128),
	poc_2_email              nvarchar2(128),
	poc_2_phone_a            nvarchar2(64),
	poc_2_phone_b            nvarchar2(64),
	poc_2_cell               nvarchar2(64),
	poc_2_screen             nvarchar2(64),
	poc_2_notes              nclob,
	notes_ext                nclob
);

-- select all profiles into temporary table
INSERT INTO t_host_profile
	SELECT p.hostid, p.devicetype, ep.device_type, p.name, ep.device_alias, p.os, ep.device_os, ep.device_os_short, p.serialno, ep.device_serial,
		p.tag, ep.device_tag, p.macaddress, ep.ip_macaddress, ep.device_hardware, p.hardware, ep.device_software, p.software,
		ep.device_app_01, ep.device_app_02, ep.device_app_03, ep.device_app_04, ep.device_app_05, p.contact, p.location, '', '',
		p.notes, ep.device_chassis, ep.device_model, ep.device_hw_arch,	ep.device_vendor, ep.device_contract, ep.device_who,
		ep.device_status, ep.device_url_1, ep.device_url_2, ep.device_url_3, ep.device_networks, ep.ip_subnet_mask, ep.ip_router,
		ep.oob_ip, ep.oob_subnet_mask, ep.oob_router, ep.date_hw_buy, ep.date_hw_install, ep.date_hw_expiry, ep.date_hw_decomm,
		ep.site_street_1, ep.site_street_2, ep.site_street_3, ep.site_city, ep.site_state, ep.site_country, ep.site_zip, ep.site_rack,
		ep.site_notes, ep.poc_1_name, ep.poc_1_email, ep.poc_1_phone_1, ep.poc_1_phone_2, ep.poc_1_cell, ep.poc_1_screen, ep.poc_1_notes,
		ep.poc_2_name, ep.poc_2_email, ep.poc_2_phone_1, ep.poc_2_phone_2, ep.poc_2_cell, ep.poc_2_screen, ep.poc_2_notes, ep.device_notes
	FROM hosts_profiles p LEFT JOIN hosts_profiles_ext ep on p.hostid=ep.hostid
	UNION ALL
	SELECT ep.hostid, p.devicetype, ep.device_type, p.name, ep.device_alias, p.os, ep.device_os, ep.device_os_short, p.serialno, ep.device_serial,
		p.tag, ep.device_tag, p.macaddress, ep.ip_macaddress, ep.device_hardware, p.hardware, ep.device_software, p.software,
		ep.device_app_01, ep.device_app_02, ep.device_app_03, ep.device_app_04, ep.device_app_05, p.contact, p.location, '', '',
		p.notes, ep.device_chassis, ep.device_model, ep.device_hw_arch,	ep.device_vendor, ep.device_contract, ep.device_who,
		ep.device_status, ep.device_url_1, ep.device_url_2, ep.device_url_3, ep.device_networks, ep.ip_subnet_mask, ep.ip_router,
		ep.oob_ip, ep.oob_subnet_mask, ep.oob_router, ep.date_hw_buy, ep.date_hw_install, ep.date_hw_expiry, ep.date_hw_decomm,
		ep.site_street_1, ep.site_street_2, ep.site_street_3, ep.site_city, ep.site_state, ep.site_country, ep.site_zip, ep.site_rack,
		ep.site_notes, ep.poc_1_name, ep.poc_1_email, ep.poc_1_phone_1, ep.poc_1_phone_2, ep.poc_1_cell, ep.poc_1_screen, ep.poc_1_notes,
		ep.poc_2_name, ep.poc_2_email, ep.poc_2_phone_1, ep.poc_2_phone_2, ep.poc_2_cell, ep.poc_2_screen, ep.poc_2_notes, ep.device_notes
	FROM hosts_profiles p RIGHT JOIN hosts_profiles_ext ep on p.hostid=ep.hostid
	WHERE p.hostid IS NULL;

-- merge notes field
UPDATE t_host_profile SET notes = notes||CHR(13)||CHR(10)||notes_ext WHERE notes IS NOT NULL AND notes_ext IS NOT NULL;
UPDATE t_host_profile SET notes = notes_ext WHERE notes IS NULL;
ALTER TABLE t_host_profile DROP COLUMN notes_ext;

-- copy data from temporary table
INSERT INTO host_profile SELECT * FROM t_host_profile;

DROP TABLE t_host_profile;
DROP TABLE hosts_profiles;
DROP TABLE hosts_profiles_ext;