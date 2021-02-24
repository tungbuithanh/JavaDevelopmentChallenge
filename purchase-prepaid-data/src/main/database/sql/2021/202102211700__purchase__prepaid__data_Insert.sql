-- liquibase formatted sql
-- changeset hvn:201910041835__20.1.S19-10__IPENMIG-4__init__Quality_Control  logicalFilePath:iPensionMig
-- comment: Creation of tables for migration logs

/*==============================================================*/
/* Table: staging.QC_LOG_TYPE MU-8001             */
/*==============================================================*/

declare @newqcLogType int

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001001', 'ERR', 'MU-8001')
SET @newqcLogType = IDENT_CURRENT('[staging].[QC_LOG_TYPE]')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType, 'FR', 'Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType, 'DE', 'DE_Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType, 'IT', 'IT_Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType, 'EN', 'EN_Information requise: ')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001030', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 1, 'FR', 'La date de début doit être antérieure ou égale à la date de fin')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 1, 'DE', 'DE_La date de début doit être antérieure ou égale à la date de fin')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 1, 'IT', 'IT_La date de début doit être antérieure ou égale à la date de fin')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 1, 'EN', 'EN_La date de début doit être antérieure ou égale à la date de fin')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001040', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 2, 'FR', 'Le nom, le prénom, le sexe, la date de naissance, l’état civil et le numéro AVS de le personne de dont l’identifiant BPC est le {0} doivent exister')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 2, 'DE', 'DE_Le nom, le prénom, le sexe, la date de naissance, l’état civil et le numéro AVS de le personne de dont l’identifiant BPC est le {0} doivent exister')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 2, 'IT', 'IT_Le nom, le prénom, le sexe, la date de naissance, l’état civil et le numéro AVS de le personne de dont l’identifiant BPC est le {0} doivent exister')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 2, 'EN', 'EN_Le nom, le prénom, le sexe, la date de naissance, l’état civil et le numéro AVS de le personne de dont l’identifiant BPC est le {0} doivent exister')



INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001050', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 3, 'FR', 'Au moins un lien affilié assuré doit être fourni.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 3, 'DE', 'DE_Au moins un lien affilié assuré doit être fourni.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 3, 'IT', 'IT_Au moins un lien affilié assuré doit être fourni.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 3, 'EN', 'EN_Au moins un lien affilié assuré doit être fourni.')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001100', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 4, 'FR', 'Un seul assuré peut exister pour une seule et même personne')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 4, 'DE', 'DE_Un seul assuré peut exister pour une seule et même personne')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 4, 'IT', 'IT_Un seul assuré peut exister pour une seule et même personne')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 4, 'EN', 'EN_Un seul assuré peut exister pour une seule et même personne')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001110', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 5, 'FR', 'L’affilié {0} et l’assuré doivent être dans la même Société pour permettre l’exécution de cette mutation. Veuillez rectifier les données saisies.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 5, 'DE', 'DE_L’affilié {0} et l’assuré doivent être dans la même Société pour permettre l’exécution de cette mutation. Veuillez rectifier les données saisies.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 5, 'IT', 'IT_L’affilié {0} et l’assuré doivent être dans la même Société pour permettre l’exécution de cette mutation. Veuillez rectifier les données saisies.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 5, 'EN', 'EN_L’affilié {0} et l’assuré doivent être dans la même Société pour permettre l’exécution de cette mutation. Veuillez rectifier les données saisies.')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001120', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 6, 'FR', 'Une relation cotisante ne doit pas être possible entre un Affilié {0} annulé et un Assuré.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 6, 'DE', 'DE_Une relation cotisante ne doit pas être possible entre un Affilié {0} annulé et un Assuré.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 6, 'IT', 'IT_Une relation cotisante ne doit pas être possible entre un Affilié {0} annulé et un Assuré.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 6, 'EN', 'EN_Une relation cotisante ne doit pas être possible entre un Affilié {0} annulé et un Assuré.')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001130', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 7, 'FR', 'Veuillez rectifier les données de la mutation, les relations cotisantes entre l’assuré et l’affilié {0} ne doivent pas être chevauchés.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 7, 'DE', 'DE_Veuillez rectifier les données de la mutation, les relations cotisantes entre l’assuré et l’affilié {0} ne doivent pas être chevauchés.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 7, 'IT', 'IT_Veuillez rectifier les données de la mutation, les relations cotisantes entre l’assuré et l’affilié {0} ne doivent pas être chevauchés.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 7, 'EN', 'EN_Veuillez rectifier les données de la mutation, les relations cotisantes entre l’assuré et l’affilié {0} ne doivent pas être chevauchés.')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001140', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 8, 'FR', 'Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 8, 'DE', 'DE_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 8, 'IT', 'IT_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 8, 'EN', 'EN_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001150', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 9, 'FR', 'Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 9, 'DE', 'DE_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 9, 'IT', 'IT_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 9, 'EN', 'EN_Données Incohérentes, l’affilié {0} n’est pas actif pour la période indiquée')



INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001160', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 10, 'FR', 'La date de début de la relation avec l’affilié {0} ne doit pas être antérieure à la date d’affiliation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 10, 'DE', 'DE_La date de début de la relation avec l’affilié {0} ne doit pas être antérieure à la date d’affiliation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 10, 'IT', 'IT_La date de début de la relation avec l’affilié {0} ne doit pas être antérieure à la date d’affiliation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 10, 'EN', 'EN_La date de début de la relation avec l’affilié {0} ne doit pas être antérieure à la date d’affiliation.')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001170', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 11, 'FR', '{0} n''existe pas dans la base partenaire (BPC)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 11, 'DE', 'DE_{0} n''existe pas dans la base partenaire (BPC)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 11, 'IT', 'IT_{0} n''existe pas dans la base partenaire (BPC)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 11, 'EN', 'EN_{0} n''existe pas dans la base partenaire (BPC)')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001180', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 12, 'FR', '{0} ne peut être membre secondaire de cette relation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 12, 'DE', 'DE_{0} ne peut être membre secondaire de cette relation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 12, 'IT', 'IT_{0} ne peut être membre secondaire de cette relation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 12, 'EN', 'EN_{0} ne peut être membre secondaire de cette relation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001185', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 13, 'FR', '{0} ne peut être conjoint et enfant')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 13, 'DE', 'DE_{0} ne peut être conjoint et enfant')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 13, 'IT', 'IT_{0} ne peut être conjoint et enfant')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 13, 'EN', 'EN_{0} ne peut être conjoint et enfant')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001300', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 14, 'FR', 'Les parents de {0} doivent être liés mutuellement par une relation de famille')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 14, 'DE', 'DE_Les parents de {0} doivent être liés mutuellement par une relation de famille')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 14, 'IT', 'IT_Les parents de {0} doivent être liés mutuellement par une relation de famille')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 14, 'EN', 'EN_Les parents de {0} doivent être liés mutuellement par une relation de famille')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001200', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 15, 'FR', 'La date de fin de la relation doit être postérieure à la date de début')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 15, 'DE', 'DE_La date de fin de la relation doit être postérieure à la date de début')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 15, 'IT', 'IT_La date de fin de la relation doit être postérieure à la date de début')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 15, 'EN', 'EN_La date de fin de la relation doit être postérieure à la date de début')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001225', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 16, 'FR', '{0} doit avoir au minimum une relation avec un autre membre de la constellation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 16, 'DE', 'DE_{0} doit avoir au minimum une relation avec un autre membre de la constellation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 16, 'IT', 'IT_{0} doit avoir au minimum une relation avec un autre membre de la constellation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 16, 'EN', 'EN_{0} doit avoir au minimum une relation avec un autre membre de la constellation.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001240', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 17, 'FR', 'La date de début ne peut être postérieure à la date de mutation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 17, 'DE', 'DE_La date de début ne peut être postérieure à la date de mutation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 17, 'IT', 'IT_La date de début ne peut être postérieure à la date de mutation.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 17, 'EN', 'EN_La date de début ne peut être postérieure à la date de mutation.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001290', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 18, 'FR', '{0} ne peut pas avoir 2 relations avec le même parent.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 18, 'DE', 'DE_{0} ne peut pas avoir 2 relations avec le même parent.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 18, 'IT', 'IT_{0} ne peut pas avoir 2 relations avec le même parent.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 18, 'EN', 'EN_{0} ne peut pas avoir 2 relations avec le même parent.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001220', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 19, 'FR', '{0} ne peut pas avoir une relation avec lui-même.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 19, 'DE', 'DE_{0} ne peut pas avoir une relation avec lui-même.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 19, 'IT', 'IT_{0} ne peut pas avoir une relation avec lui-même.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 19, 'EN', 'EN_{0} ne peut pas avoir une relation avec lui-même.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001205', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 20, 'FR', 'Pour une relation de mariage, les personnes ne doivent pas être du même sexe : ({0}; {1})')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 20, 'DE', 'DE_Pour une relation de mariage, les personnes ne doivent pas être du même sexe : ({0}; {1})')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 20, 'IT', 'IT_Pour une relation de mariage, les personnes ne doivent pas être du même sexe : ({0}; {1})')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 20, 'EN', 'EN_Pour une relation de mariage, les personnes ne doivent pas être du même sexe : ({0}; {1})')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001280', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 21, 'FR', '{0} ne peut avoir au maximum que 2 parents.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 21, 'DE', 'DE_{0} ne peut avoir au maximum que 2 parents.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 21, 'IT', 'IT_{0} ne peut avoir au maximum que 2 parents.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 21, 'EN', 'EN_{0} ne peut avoir au maximum que 2 parents.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001250', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 22, 'FR', 'Les relations de [{0}] ne peuvent pas avoir des périodes se chevauchant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 22, 'DE', 'DE_Les relations de [{0}] ne peuvent pas avoir des périodes se chevauchant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 22, 'IT', 'IT_Les relations de [{0}] ne peuvent pas avoir des périodes se chevauchant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 22, 'EN', 'EN_Les relations de [{0}] ne peuvent pas avoir des périodes se chevauchant.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001210', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 23, 'FR', 'Pour une relation de partenariat enregistré, les personnes doivent avoir le même sexe : ({0}; {1}).')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 23, 'DE', 'DE_Pour une relation de partenariat enregistré, les personnes doivent avoir le même sexe : ({0}; {1}).')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 23, 'IT', 'IT_Pour une relation de partenariat enregistré, les personnes doivent avoir le même sexe : ({0}; {1}).')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 23, 'EN', 'EN_Pour une relation de partenariat enregistré, les personnes doivent avoir le même sexe : ({0}; {1}).')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001235', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 24, 'FR', '{0} a déjà une relation inversée avec {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 24, 'DE', 'DE_{0} a déjà une relation inversée avec {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 24, 'IT', 'IT_{0} a déjà une relation inversée avec {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 24, 'EN', 'EN_{0} a déjà une relation inversée avec {1}')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001400', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 25, 'FR', 'La relation mère-enfant n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 25, 'DE', 'DE_La relation mère-enfant n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 25, 'IT', 'IT_La relation mère-enfant n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 25, 'EN', 'EN_La relation mère-enfant n’a pas été trouvée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001401', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 26, 'FR', 'Une seule demande initiale de la prestation est valable')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 26, 'DE', 'DE_Une seule demande initiale de la prestation est valable')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 26, 'IT', 'IT_Une seule demande initiale de la prestation est valable')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 26, 'EN', 'EN_Une seule demande initiale de la prestation est valable')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M8001402', 'ERR', 'MU-8001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 27, 'FR', 'La demande initiale faisant l’objet de la correction n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 27, 'DE', 'DE_La demande initiale faisant l’objet de la correction n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 27, 'IT', 'IT_La demande initiale faisant l’objet de la correction n’a pas été trouvée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 27, 'EN', 'EN_La demande initiale faisant l’objet de la correction n’a pas été trouvée')


/*==============================================================*/
/* Table: staging.QC_LOG_TYPE MU-7001             */
/*==============================================================*/

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001001', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 28, 'FR', 'Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 28, 'DE', 'DE_Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 28, 'IT', 'IT_Information requise: ')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 28, 'EN', 'EN_Information requise: ')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001124', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 29, 'FR', 'La société ne couvrit pas du canton {0} pour le type d’assurance {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 29, 'DE', 'DE_La société ne couvrit pas du canton {0} pour le type d’assurance {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 29, 'IT', 'IT_La société ne couvrit pas du canton {0} pour le type d’assurance {1}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 29, 'EN', 'EN_La société ne couvrit pas du canton {0} pour le type d’assurance {1}')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001111', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 30, 'FR', 'L’assurance est invalide: {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 30, 'DE', 'DE_L’assurance est invalide: {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 30, 'IT', 'IT_L’assurance est invalide: {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 30, 'EN', 'EN_L’assurance est invalide: {0}')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001040', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 31, 'FR', 'La catégorie d’affilié doit être valide pour le type d’affilié selectionné')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 31, 'DE', 'DE_La catégorie d’affilié doit être valide pour le type d’affilié selectionné')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 31, 'IT', 'IT_La catégorie d’affilié doit être valide pour le type d’affilié selectionné')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 31, 'EN', 'EN_La catégorie d’affilié doit être valide pour le type d’affilié selectionné')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001070', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 32, 'FR', 'Date Inscription must be null when Inscription is not true')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 32, 'DE', 'DE_Date Inscription must be null when Inscription is not true')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 32, 'IT', 'IT_Date Inscription must be null when Inscription is not true')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 32, 'EN', 'EN_Date Inscription must be null when Inscription is not true')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001132', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 33, 'FR', 'Si une caisse est liée alors le rôle doit être compris dans la liste de valeurs suivantes : Caisse AVS, Caisse AF, Ancienne caisse AVS, Ancienne caisse AF')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 33, 'DE', 'DE_Si une caisse est liée alors le rôle doit être compris dans la liste de valeurs suivantes : Caisse AVS, Caisse AF, Ancienne caisse AVS, Ancienne caisse AF')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 33, 'IT', 'IT_Si une caisse est liée alors le rôle doit être compris dans la liste de valeurs suivantes : Caisse AVS, Caisse AF, Ancienne caisse AVS, Ancienne caisse AF')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 33, 'EN', 'EN_Si une caisse est liée alors le rôle doit être compris dans la liste de valeurs suivantes : Caisse AVS, Caisse AF, Ancienne caisse AVS, Ancienne caisse AF')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001133', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 34, 'FR', 'La date de début d''une caisse AVS/AF doit être antérieure ou égale à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 34, 'DE', 'DE_La date de début d''une caisse AVS/AF doit être antérieure ou égale à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 34, 'IT', 'IT_La date de début d''une caisse AVS/AF doit être antérieure ou égale à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 34, 'EN', 'EN_La date de début d''une caisse AVS/AF doit être antérieure ou égale à la date d''affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001134', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 35, 'FR', 'La date de fin d''une caisse AVS/AF doit être postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 35, 'DE', 'DE_La date de fin d''une caisse AVS/AF doit être postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 35, 'IT', 'IT_La date de fin d''une caisse AVS/AF doit être postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 35, 'EN', 'EN_La date de fin d''une caisse AVS/AF doit être postérieure à la date d''affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001137', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 36, 'FR', 'La date de début d’une ancienne caisse AVS/AF doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 36, 'DE', 'DE_La date de début d’une ancienne caisse AVS/AF doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 36, 'IT', 'IT_La date de début d’une ancienne caisse AVS/AF doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 36, 'EN', 'EN_La date de début d’une ancienne caisse AVS/AF doit être antérieure ou égale à la date d’affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001138', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 37, 'FR', 'La date de fin d’une ancienne caisse AVS/AF doit être antérieure à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 37, 'DE', 'DE_La date de fin d’une ancienne caisse AVS/AF doit être antérieure à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 37, 'IT', 'IT_La date de fin d’une ancienne caisse AVS/AF doit être antérieure à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 37, 'EN', 'EN_La date de fin d’une ancienne caisse AVS/AF doit être antérieure à la date d’affiliation')


INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001136', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 38, 'FR', 'Si l''affilié n''a pas souscrit à l''assurance AVS alors il doit y avoir une caisse AVS valide à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 38, 'DE', 'DE_Si l''affilié n''a pas souscrit à l''assurance AVS alors il doit y avoir une caisse AVS valide à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 38, 'IT', 'IT_Si l''affilié n''a pas souscrit à l''assurance AVS alors il doit y avoir une caisse AVS valide à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 38, 'EN', 'EN_Si l''affilié n''a pas souscrit à l''assurance AVS alors il doit y avoir une caisse AVS valide à la date d''affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001172', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 39, 'FR', 'Si l’affilié est soumis LAA alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 39, 'DE', 'DE_Si l’affilié est soumis LAA alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 39, 'IT', 'IT_Si l’affilié est soumis LAA alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 39, 'EN', 'EN_Si l’affilié est soumis LAA alors il doit y avoir au moins un partenaire affilié')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001170', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 40, 'FR', 'Si l’affilié n’est pas soumis LAA alors le motif non soumis LAA doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 40, 'DE', 'DE_Si l’affilié n’est pas soumis LAA alors le motif non soumis LAA doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 40, 'IT', 'IT_Si l’affilié n’est pas soumis LAA alors le motif non soumis LAA doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 40, 'EN', 'EN_Si l’affilié n’est pas soumis LAA alors le motif non soumis LAA doit être non vide')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001183', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 41, 'FR', 'Les périodes des partenaires LAA affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 41, 'DE', 'DE_Les périodes des partenaires LAA affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 41, 'IT', 'IT_Les périodes des partenaires LAA affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 41, 'EN', 'EN_Les périodes des partenaires LAA affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001188', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 42, 'FR', 'Les périodes des partenaires LPP affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 42, 'DE', 'DE_Les périodes des partenaires LPP affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 42, 'IT', 'IT_Les périodes des partenaires LPP affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 42, 'EN', 'EN_Les périodes des partenaires LPP affiliés ne peuvent pas se chevaucher pour le même catégorie d''employé')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001173', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 43, 'FR', 'Si l’affilié est soumis LPP alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 43, 'DE', 'DE_Si l’affilié est soumis LPP alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 43, 'IT', 'IT_Si l’affilié est soumis LPP alors il doit y avoir au moins un partenaire affilié')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 43, 'EN', 'EN_Si l’affilié est soumis LPP alors il doit y avoir au moins un partenaire affilié')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001171', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (44, 'FR', 'Si l’affilié n’est pas soumis LPP alors le motif non soumis LPP doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (44, 'DE', 'DE_Si l’affilié n’est pas soumis LPP alors le motif non soumis LPP doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (44, 'IT', 'IT_Si l’affilié n’est pas soumis LPP alors le motif non soumis LPP doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (44, 'EN', 'EN_Si l’affilié n’est pas soumis LPP alors le motif non soumis LPP doit être non vide')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001130', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 45, 'FR', 'Le type de déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 45, 'DE', 'DE_Le type de déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 45, 'IT', 'IT_Le type de déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 45, 'EN', 'EN_Le type de déclaration de salaire doit être non vide')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001190', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 46, 'FR', 'Le préremplissage de la déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 46, 'DE', 'DE_Le préremplissage de la déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 46, 'IT', 'IT_Le préremplissage de la déclaration de salaire doit être non vide')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 46, 'EN', 'EN_Le préremplissage de la déclaration de salaire doit être non vide')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001189', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 47, 'FR', 'La date de fin de validité doit être strictement postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 47, 'DE', 'DE_La date de fin de validité doit être strictement postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 47, 'IT', 'IT_La date de fin de validité doit être strictement postérieure à la date d''affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 47, 'EN', 'EN_La date de fin de validité doit être strictement postérieure à la date d''affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001161', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 48, 'FR', 'La date de début d’activité doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 48, 'DE', 'DE_La date de début d’activité doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 48, 'IT', 'IT_La date de début d’activité doit être antérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 48, 'EN', 'EN_La date de début d’activité doit être antérieure ou égale à la date d’affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001162', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 49, 'FR', 'La date de fin d’activité doit être postérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 49, 'DE', 'DE_La date de fin d’activité doit être postérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 49, 'IT', 'IT_La date de fin d’activité doit être postérieure ou égale à la date d’affiliation')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 49, 'EN', 'EN_La date de fin d’activité doit être postérieure ou égale à la date d’affiliation')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001141', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 50, 'FR', 'Le mode de facturation possible est « Par acomptes » pour les affiliés de type PSAL ou Indépendant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 50, 'DE', 'DE_Le mode de facturation possible est « Par acomptes » pour les affiliés de type PSAL ou Indépendant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 50, 'IT', 'IT_Le mode de facturation possible est « Par acomptes » pour les affiliés de type PSAL ou Indépendant.')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 50, 'EN', 'EN_Le mode de facturation possible est « Par acomptes » pour les affiliés de type PSAL ou Indépendant.')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001151', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 51, 'FR', 'La périodicité de facturation doit être compris dans la liste de valeurs suivantes : annuel, trimestriel')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 51, 'DE', 'DE_La périodicité de facturation doit être compris dans la liste de valeurs suivantes : annuel, trimestriel')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 51, 'IT', 'IT_La périodicité de facturation doit être compris dans la liste de valeurs suivantes : annuel, trimestriel')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 51, 'EN', 'EN_La périodicité de facturation doit être compris dans la liste de valeurs suivantes : annuel, trimestriel')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001002', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 52, 'FR', 'Formats non valides requises')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 52, 'DE', 'DE_Formats non valides requises')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 52, 'IT', 'IT_Formats non valides requises')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 52, 'EN', 'EN_Formats non valides requises')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001110', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 53, 'FR', 'L''affilié ne peut pas souscrire plusieurs fois à la même assurance sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 53, 'DE', 'DE_L''affilié ne peut pas souscrire plusieurs fois à la même assurance sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 53, 'IT', 'IT_L''affilié ne peut pas souscrire plusieurs fois à la même assurance sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 53, 'EN', 'EN_L''affilié ne peut pas souscrire plusieurs fois à la même assurance sur une période donnée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001121', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 54, 'FR', 'Les cantons définis pour le type d''assurances sociales doivent être tous inclus dans le type d''assurance allocations familiales pour autant que l''affilié choisit les AF comme assurance')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 54, 'DE', 'DE_Les cantons définis pour le type d''assurances sociales doivent être tous inclus dans le type d''assurance allocations familiales pour autant que l''affilié choisit les AF comme assurance')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 54, 'IT', 'IT_Les cantons définis pour le type d''assurances sociales doivent être tous inclus dans le type d''assurance allocations familiales pour autant que l''affilié choisit les AF comme assurance')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 54, 'EN', 'EN_Les cantons définis pour le type d''assurances sociales doivent être tous inclus dans le type d''assurance allocations familiales pour autant que l''affilié choisit les AF comme assurance')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001122', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 55, 'FR', 'Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance sociale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 55, 'DE', 'DE_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance sociale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 55, 'IT', 'IT_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance sociale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 55, 'EN', 'EN_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance sociale sur une période donnée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001123', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 56, 'FR', 'Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance allocations familiales sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 56, 'DE', 'DE_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance allocations familiales sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 56, 'IT', 'IT_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance allocations familiales sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 56, 'EN', 'EN_Il ne peut y avoir au plus qu''un canton d''affiliation défini pour le type d''assurance allocations familiales sur une période donnée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001125', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 57, 'FR', 'Il ne peut pas y avoir le même canton d''affiliation défini pour le type d''assurance familiale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 57, 'DE', 'DE_Il ne peut pas y avoir le même canton d''affiliation défini pour le type d''assurance familiale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 57, 'IT', 'IT_Il ne peut pas y avoir le même canton d''affiliation défini pour le type d''assurance familiale sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 57, 'EN', 'EN_Il ne peut pas y avoir le même canton d''affiliation défini pour le type d''assurance familiale sur une période donnée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001007', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 58, 'FR', 'Aucun partenaire n''a été trouvé avec le numéro BPC fourni {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 58, 'DE', 'DE_Aucun partenaire n''a été trouvé avec le numéro BPC fourni {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 58, 'IT', 'IT_Aucun partenaire n''a été trouvé avec le numéro BPC fourni {0}')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 58, 'EN', 'EN_Aucun partenaire n''a été trouvé avec le numéro BPC fourni {0}')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001008', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 59, 'FR', 'Le type de partenaire fourni n’existe pas pour le numéro BPC fourni')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 59, 'DE', 'DE_Le type de partenaire fourni n’existe pas pour le numéro BPC fourni')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 59, 'IT', 'IT_Le type de partenaire fourni n’existe pas pour le numéro BPC fourni')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 59, 'EN', 'EN_Le type de partenaire fourni n’existe pas pour le numéro BPC fourni')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001005', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 60, 'FR', 'Si le partenaire est une personne physique alors son numéro AVS, son sexe, sa date de naissance et son état civil doivent être définis dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 60, 'DE', 'DE_Si le partenaire est une personne physique alors son numéro AVS, son sexe, sa date de naissance et son état civil doivent être définis dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 60, 'IT', 'IT_Si le partenaire est une personne physique alors son numéro AVS, son sexe, sa date de naissance et son état civil doivent être définis dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 60, 'EN', 'EN_Si le partenaire est une personne physique alors son numéro AVS, son sexe, sa date de naissance et son état civil doivent être définis dans la BPC')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001006', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 61, 'FR', 'Il n''est pas possible d''affilié un partenaire qui a une autre affiliation PSAL active dans iPension1st')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 61, 'DE', 'DE_Il n''est pas possible d''affilié un partenaire qui a une autre affiliation PSAL active dans iPension1st')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 61, 'IT', 'IT_Il n''est pas possible d''affilié un partenaire qui a une autre affiliation PSAL active dans iPension1st')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 61, 'EN', 'EN_Il n''est pas possible d''affilié un partenaire qui a une autre affiliation PSAL active dans iPension1st')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001013', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 62, 'FR', 'La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 20e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 62, 'DE', 'DE_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 20e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 62, 'IT', 'IT_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 20e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 62, 'EN', 'EN_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 20e anniversaire')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001012', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 63, 'FR', 'La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 17e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 63, 'DE', 'DE_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 17e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 63, 'IT', 'IT_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 17e anniversaire')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 63, 'EN', 'EN_La date d''affiliation ne peut démarrer avant le 1er janvier qui suit son 17e anniversaire')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001031', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 64, 'FR', 'La date d''affiliation ne peut démarrer après l''âge ordinaire de la retraite (65 ans pour les hommes et 64 ans pour les femmes)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 64, 'DE', 'DE_La date d''affiliation ne peut démarrer après l''âge ordinaire de la retraite (65 ans pour les hommes et 64 ans pour les femmes)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 64, 'IT', 'IT_La date d''affiliation ne peut démarrer après l''âge ordinaire de la retraite (65 ans pour les hommes et 64 ans pour les femmes)')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 64, 'EN', 'EN_La date d''affiliation ne peut démarrer après l''âge ordinaire de la retraite (65 ans pour les hommes et 64 ans pour les femmes)')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001032', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 65, 'FR', 'La date d''affiliation ne peut pas être à plus d''un an dans le futur par rapport à la date du jour')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 65, 'DE', 'DE_La date d''affiliation ne peut pas être à plus d''un an dans le futur par rapport à la date du jour')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 65, 'IT', 'IT_La date d''affiliation ne peut pas être à plus d''un an dans le futur par rapport à la date du jour')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 65, 'EN', 'EN_La date d''affiliation ne peut pas être à plus d''un an dans le futur par rapport à la date du jour')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001033', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 66, 'FR', 'La date d''affiliation est toujours équivalente au premier jour d''un mois')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 66, 'DE', 'DE_La date d''affiliation est toujours équivalente au premier jour d''un mois')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 66, 'IT', 'IT_La date d''affiliation est toujours équivalente au premier jour d''un mois')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 66, 'EN', 'EN_La date d''affiliation est toujours équivalente au premier jour d''un mois')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001131', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 67, 'FR', 'Il ne peut y avoir plusieurs fois le même rôle sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 67, 'DE', 'DE_Il ne peut y avoir plusieurs fois le même rôle sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 67, 'IT', 'IT_Il ne peut y avoir plusieurs fois le même rôle sur une période donnée')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 67, 'EN', 'EN_Il ne peut y avoir plusieurs fois le même rôle sur une période donnée')

INSERT staging.QC_LOG_TYPE ([CODE], [ERROR_LEVEL], [DFLT_DOMAIN]) VALUES ('M7001004', 'ERR', 'MU-7001')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 68, 'FR', 'Le partenaire lié doit avoir au moins une adresse de base validée dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 68, 'DE', 'DE_Le partenaire lié doit avoir au moins une adresse de base validée dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 68, 'IT', 'IT_Le partenaire lié doit avoir au moins une adresse de base validée dans la BPC')
INSERT staging.QC_LOG_TYPE_DESCRIPTION ([QC_LOG_TYPE_ID], [LANG], [DESCRIPTION]) VALUES (@newqcLogType + 68, 'EN', 'EN_Le partenaire lié doit avoir au moins une adresse de base validée dans la BPC')
