

UPDATE `sys_objects_actions` SET `Caption` = '{TitleShare}' WHERE `Caption` = '_bx_poll_share' AND `Type` = 'bx_poll';

-- delete unused language keys

DELETE `sys_localization_strings` FROM `sys_localization_strings`, `sys_localization_keys` WHERE `sys_localization_keys`.`ID` = `sys_localization_strings`.`IDKey` AND `sys_localization_keys`.`Key` IN('_bx_poll_share');
DELETE FROM `sys_localization_keys` WHERE `Key` IN('_bx_poll_share');


-- update module version

UPDATE `sys_modules` SET `version` = '1.1.2' WHERE `uri` = 'poll' AND `version` = '1.1.1';

