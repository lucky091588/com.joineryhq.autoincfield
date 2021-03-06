-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC. All rights reserved.                        |
-- |                                                                    |
-- | This work is published under the GNU AGPLv3 license with some      |
-- | permitted exceptions and without any warranty. For full license    |
-- | and copyright information, see https://civicrm.org/licensing       |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--


-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC. All rights reserved.                        |
-- |                                                                    |
-- | This work is published under the GNU AGPLv3 license with some      |
-- | permitted exceptions and without any warranty. For full license    |
-- | and copyright information, see https://civicrm.org/licensing       |
-- +--------------------------------------------------------------------+
--
-- Generated from drop.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the exisiting tables
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_autoincfield`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_autoincfield
-- *
-- * FIXME
-- *
-- *******************************************************/
CREATE TABLE `civicrm_autoincfield` (


     `id` int unsigned NOT NULL AUTO_INCREMENT  COMMENT 'Unique Autoincfield ID',
     `custom_field_id` int unsigned    COMMENT 'FK to Custom Field ID',
     `min_value` int unsigned    COMMENT 'Integer, the minimum value upon next usage' 
,
        PRIMARY KEY (`id`)
 
 
,          CONSTRAINT FK_civicrm_autoincfield_custom_field_id FOREIGN KEY (`custom_field_id`) REFERENCES `civicrm_custom_field`(`id`) ON DELETE CASCADE  
)    ;

 