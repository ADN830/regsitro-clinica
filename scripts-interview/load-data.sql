CREATE TABLE `usuario` (
  `sede_id` int(11) DEFAULT 3 COMMENT '3 = sede san borja',
  `subrole_id` int(11) DEFAULT 1,
  `user` char(50) NOT NULL,
  `pass` char(20) NOT NULL,
  `mail` char(40) NOT NULL,
  `nom` char(200) NOT NULL,
  `cmp` int(11) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `idusercreate` char(50) DEFAULT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `iduserupdate` char(50) DEFAULT NULL,
  `update` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- drop table hc_analisis;
CREATE TABLE `hc_analisis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archivo_id` int(11) DEFAULT NULL,
  `a_dni` char(15) NOT NULL,
  `a_mue` date NOT NULL,
  `a_nom` char(150) NOT NULL,
  `a_med` char(100) NOT NULL,
  `a_exa` char(100) NOT NULL,
  `a_sta` char(15) NOT NULL,
  `a_obs` char(255) NOT NULL,
  `idf` decimal(11,2) DEFAULT '0.00' COMMENT 'indice de fragmentacion',
  `cor` tinyint(1) DEFAULT NULL,
  `lab` char(15) NOT NULL,
  `a_fec` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) DEFAULT '1',
  `idusercreate` char(50) DEFAULT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `iduserupdate` char(50) DEFAULT NULL,
  `update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13697 DEFAULT CHARSET=utf8;
INSERT INTO hc_analisis (archivo_id,a_dni,a_mue,a_nom,a_med,a_exa,a_sta,a_obs,idf,cor,lab,a_fec,estado,idusercreate,createdate,iduserupdate,`update`) VALUES
	 (NULL,'41510783','2016-02-10','BECERRA DIAZ LORENZO JUNIOR','mvelit','ESPERMACULTIVO','Positivo','',0.00,NULL,'eco','2016-02-16 14:35:46.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'C03955386','2016-02-09','CRUZ RIGOBERTO','mvelit','ESPERMACULTIVO','Negativo','',0.00,NULL,'eco','2016-02-16 14:35:09.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'09592102','2016-02-09','COLAN PEÑA JORGE ENRIQUE','mvelit','ESPERMACULTIVO','Negativo','',0.00,NULL,'eco','2016-02-16 14:34:35.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'40612210','2016-02-10','KLEINER WINTER Melanie','eescudero','CULTIVO DE SECRECION VAGINAL','Negativo','',0.00,NULL,'eco','2016-02-16 14:28:55.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'41704004','2016-02-09','CORDOVA VILCARRONERO MARIA ISABEL','mvelit','CULTIVO DE SECRECION VAGINAL','Positivo','',0.00,NULL,'eco','2016-02-16 14:25:00.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'42560903','2016-02-09','TORRES VEGA PAOLA LUZ','mvelit','CULTIVO DE SECRECION VAGINAL','Negativo','',0.00,NULL,'eco','2016-02-16 14:22:13.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'41700627','2016-02-09','RIQUEROS AREVALO MARISSA','mvelit','CULTIVO DE SECRECION VAGINAL','Positivo','',0.00,NULL,'eco','2016-02-16 14:18:49.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'42197533','2016-02-09','ALFARO SMITH XIMENA','mvelit','CULTIVO DE SECRECION VAGINAL','Negativo','',0.00,NULL,'eco','2016-02-16 14:16:59.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'41378338','2016-02-08','MARTINEZ CASTRO LUIS ALBERTO','mvelit','ESPERMACULTIVO','Negativo','EN LA MUESTRA SE OBSERVA ABUNDANTES CELULAS REDONDAS (CELULAS INMADURAS) QUE NO SON LEUCOCITOS.',0.00,NULL,'eco','2016-02-15 09:07:30.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0'),
	 (NULL,'29649447','2016-02-08','NEGRILLO DEZA JESSICA','mvelit','CULTIVO DE SECRECION ENDOMETRIAL','Negativo','',0.00,NULL,'eco','2016-02-15 08:56:41.0',1,'eco','2019-06-06 10:14:44.0','eco','2019-06-06 10:14:51.0');
CREATE TABLE `man_archivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_base` varchar(100) NOT NULL,
  `nombre_original` varchar(100) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `idusercreate` char(15) NOT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `iduserupdate` char(15) DEFAULT NULL,
  `update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3445 DEFAULT CHARSET=utf8;
-- hc_analisis_tip definition
CREATE TABLE `hc_analisis_tip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(150) NOT NULL,
  `lab` char(15) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `idusercreate` char(50) DEFAULT 'admin',
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `iduserupdate` char(50) DEFAULT 'admin',
  `update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
INSERT INTO hc_analisis_tip (nom,lab,estado,idusercreate,createdate,iduserupdate,`update`) VALUES
	 ('FIV MIXTO DE MUJER CASADA/CONVIVIENTE CON OVULO PROPIO Y ESPERMATOZOIDE DE ESPOSO/PAREJA Y DONANTE','legal',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('DONACION DE ESPERMATOZOIDES','legal',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('C/OV','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('OBSTETRICA GEMELAR','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('OBSTETRICA','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('ECO CARDIOGRAFIA','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('ECOGRAFIA OBSTETRICA DE 35 - 40 SEMANAS','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('ECOGRAFIA MORFOLOGICA DE 20 - 24 SEMANAS','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('NO EVOLUTIVO','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL),
	 ('ECO CARDIOGRAFIA GEMELAR','eco',1,'admin','2019-01-11 23:24:03.0','admin',NULL);
-- google_drive_response definition
CREATE TABLE `google_drive_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_procedimiento_id` int(11) NOT NULL,
  `procedimiento_id` int(11) NOT NULL,
  `drive_id` varchar(100) NOT NULL,
  `nombre_base` varchar(255) NOT NULL,
  `nombre_original` varchar(255) NOT NULL,
  `error` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `idusercreate` char(50) NOT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `iduserupdate` char(50) DEFAULT NULL,
  `update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4072 DEFAULT CHARSET=utf8;

/*
select * from usuario u;
select * from hc_analisis;
/*
INSERT INTO usuario (sede_id,subrole_id,`user`,pass,mail,nom,cmp,`role`,estado,idusercreate,createdate,iduserupdate,`update`) VALUES
(3,4,'eco','eco','','Ecografias',0,4,1,'sistemas','2018-10-11 18:57:42.0','sistemas','2020-03-01 14:30:39.0');
