
CREATE TABLE IF NOT EXISTS `PREFIX_shophistory`(
  `id_shophistory` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `active` TINYINT(1) NOT NULL DEFAULT '0',
  `date_history` datetime NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_shophistory`)
  ) ENGINE=ENGINE_TYPE DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `PREFIX_shophistory_lang`(
  `id_shophistory` INT(10) UNSIGNED NOT NULL,
  `id_lang` INT(10) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL,
  `history` TEXT,
  PRIMARY KEY (`id_shophistory`,`id_lang`)
  ) ENGINE=ENGINE_TYPE DEFAULT CHARSET=utf8;
