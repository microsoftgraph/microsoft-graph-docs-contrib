---
title: "Security enum values"
description: "Microsoft Graph security subnamespace enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "security"
author: "BenAlfasi"
ms.date: 07/08/2024
---

# Security enum values

Namespace: microsoft.graph.security

### appCategory values 

|Member|
|:---|
|security|
|collaboration|
|hostingServices|
|onlineMeetings|
|newsAndEntertainment|
|eCommerce|
|education|
|cloudStorage|
|marketing|
|operationsManagement|
|health|
|advertising|
|productivity|
|accountingAndFinance|
|contentManagement|
|contentSharing|
|businessManagement|
|communications|
|dataAnalytics|
|businessIntelligence|
|webemail|
|codeHosting|
|webAnalytics|
|socialNetwork|
|crm|
|forums|
|humanResourceManagement|
|transportationAndTravel|
|productDesign|
|sales|
|cloudComputingPlatform|
|projectManagement|
|personalInstantMessaging|
|developmentTools|
|itServices|
|supplyChainAndLogistics|
|propertyManagement|
|customerSupport|
|internetOfThings|
|vendorManagementSystems|
|websiteMonitoring|
|generativeAi|
|unknown|
|unknownFutureValue|

### appInfoCsaStarLevel values 

|Member|
|:---|
|selfAssessment|
|certification|
|attestation|
|cStarAssessment|
|continuousMonitoring|
|unknown|
|unknownFutureValue|

### appInfoDataAtRestEncryptionMethod values 

|Member|
|:---|
|aes|
|bitLocker|
|blowfish|
|des3|
|des|
|rc4|
|rsA|
|notSupported|
|unknown|
|unknownFutureValue|

### appInfoDataRetentionPolicy values 

|Member|
|:---|
|dataRetained|
|deletedImmediately|
|deletedWithinTwoWeeks|
|deletedWithinOneMonth|
|deletedWithinThreeMonths|
|deletedWithinMoreThanThreeMonths|
|unknown|
|unknownFutureValue|

### appInfoFedRampLevel values 

|Member|
|:---|
|high|
|moderate|
|low|
|liSaaS|
|unknown|
|unknownFutureValue|
|notSupported|

### appInfoHolding values 

|Member|
|:---|
|private|
|public|
|unknown|
|unknownFutureValue|

### appInfoPciDssVersion values 

|Member|
|:---|
|v1|
|v2|
|v3|
|v3_1|
|v3_2|
|v3_2_1|
|notSupported|
|unknown|
|unknownFutureValue|
|v4|

### appInfoEncryptionProtocol values 

|Member|
|:---|
|tls1_0|
|tls1_1|
|tls1_2|
|tls1_3|
|notApplicable|
|notSupported|
|unknown|
|unknownFutureValue|
|ssl3|

### appInfoUploadedDataTypes values 

|Member|
|:---|
|documents|
|mediaFiles|
|codingFiles|
|creditCards|
|databaseFiles|
|none|
|unknown|
|unknownFutureValue|

### cloudAppInfoState values 

|Member|
|:---|
|true|
|false|
|unknown|
|unknownFutureValue|

### entityType values 

|Member|
|:---|
|userName|
|ipAddress|
|machineName|
|other|
|unknown|
|unknownFutureValue|

### logDataProvider values 

|Member|
|:---|
|barracuda|
|bluecoat|
|checkpoint|
|ciscoAsa|
|ciscoIronportProxy|
|fortigate|
|paloAlto|
|squid|
|zscaler|
|mcafeeSwg|
|ciscoScanSafe|
|juniperSrx|
|sophosSg|
|websenseV75|
|websenseSiemCef|
|machineZoneMeraki|
|squidNative|
|ciscoFwsm|
|microsoftIsaW3C|
|sonicwall|
|sophosCyberoam|
|clavister|
|customParser|
|juniperSsg|
|zscalerQradar|
|juniperSrxSd|
|juniperSrxWelf|
|microsoftConditionalAppAccess|
|ciscoAsaFirepower|
|genericCef|
|genericLeef|
|genericW3C|
|iFilter|
|checkpointXml|
|checkpointSmartViewTracker|
|barracudaNextGenFw|
|barracudaNextGenFwWeblog|
|microsoftDefenderForEndpoint|
|zscalerCef|
|sophosXg|
|iboss|
|forcepoint|
|fortios|
|ciscoIronportWsaIi|
|paloAltoLeef|
|forcepointLeef|
|stormshield|
|contentkeeper|
|ciscoIronportWsaIii|
|checkpointCef|
|corrata|
|ciscoFirepowerV6|
|menloSecurityCef|
|watchguardXtm|
|openSystemsSecureWebGateway|
|wandera|
|unknownFutureValue|

### receiverProtocol values 

|Member|
|:---|
|ftp|
|ftps|
|syslogUdp|
|syslogTcp|
|syslogTls|
|unknownFutureValue|

### trafficType values 

|Member|
|:---|
|downloadedBytes|
|uploadedBytes|
|unknown|
|unknownFutureValue|

### auditLogQueryStatus values

|Member|
|:---|
|notStarted|
|running|
|succeeded|
|failed|
|cancelled|
|unknownFutureValue|

### auditLogRecordType values

|Member|
|:---|
|exchangeAdmin|
|exchangeItem|
|exchangeItemGroup|
|sharePoint|
|syntheticProbe|
|sharePointFileOperation|
|oneDrive|
|azureActiveDirectory|
|azureActiveDirectoryAccountLogon|
|dataCenterSecurityCmdlet|
|complianceDLPSharePoint|
|sway|
|complianceDLPExchange|
|sharePointSharingOperation|
|azureActiveDirectoryStsLogon|
|skypeForBusinessPSTNUsage|
|skypeForBusinessUsersBlocked|
|securityComplianceCenterEOPCmdlet|
|exchangeAggregatedOperation|
|powerBIAudit|
|crm|
|yammer|
|skypeForBusinessCmdlets|
|discovery|
|microsoftTeams|
|threatIntelligence|
|mailSubmission|
|microsoftFlow|
|aeD|
|microsoftStream|
|complianceDLPSharePointClassification|
|threatFinder|
|project|
|sharePointListOperation|
|sharePointCommentOperation|
|dataGovernance|
|kaizala|
|securityComplianceAlerts|
|threatIntelligenceUrl|
|securityComplianceInsights|
|mipLabel|
|workplaceAnalytics|
|powerAppsApp|
|powerAppsPlan|
|threatIntelligenceAtpContent|
|labelContentExplorer|
|teamsHealthcare|
|exchangeItemAggregated|
|hygieneEvent|
|dataInsightsRestApiAudit|
|informationBarrierPolicyApplication|
|sharePointListItemOperation|
|sharePointContentTypeOperation|
|sharePointFieldOperation|
|microsoftTeamsAdmin|
|hrSignal|
|microsoftTeamsDevice|
|microsoftTeamsAnalytics|
|informationWorkerProtection|
|campaign|
|dlpEndpoint|
|airInvestigation|
|quarantine|
|microsoftForms|
|applicationAudit|
|complianceSupervisionExchange|
|customerKeyServiceEncryption|
|officeNative|
|mipAutoLabelSharePointItem|
|mipAutoLabelSharePointPolicyLocation|
|microsoftTeamsShifts|
|secureScore|
|mipAutoLabelExchangeItem|
|cortanaBriefing|
|search|
|wdatpAlerts|
|powerPlatformAdminDlp|
|powerPlatformAdminEnvironment|
|mdatpAudit|
|sensitivityLabelPolicyMatch|
|sensitivityLabelAction|
|sensitivityLabeledFileAction|
|attackSim|
|airManualInvestigation|
|securityComplianceRBAC|
|userTraining|
|airAdminActionInvestigation|
|mstic|
|physicalBadgingSignal|
|teamsEasyApprovals|
|aipDiscover|
|aipSensitivityLabelAction|
|aipProtectionAction|
|aipFileDeleted|
|aipHeartBeat|
|mcasAlerts|
|onPremisesFileShareScannerDlp|
|onPremisesSharePointScannerDlp|
|exchangeSearch|
|sharePointSearch|
|privacyDataMinimization|
|labelAnalyticsAggregate|
|myAnalyticsSettings|
|securityComplianceUserChange|
|complianceDLPExchangeClassification|
|complianceDLPEndpoint|
|mipExactDataMatch|
|msdeResponseActions|
|msdeGeneralSettings|
|msdeIndicatorsSettings|
|ms365DCustomDetection|
|msdeRolesSettings|
|mapgAlerts|
|mapgPolicy|
|mapgRemediation|
|privacyRemediationAction|
|privacyDigestEmail|
|mipAutoLabelSimulationProgress|
|mipAutoLabelSimulationCompletion|
|mipAutoLabelProgressFeedback|
|dlpSensitiveInformationType|
|mipAutoLabelSimulationStatistics|
|largeContentMetadata|
|microsoft365Group|
|cdpMlInferencingResult|
|filteringMailMetadata|
|cdpClassificationMailItem|
|cdpClassificationDocument|
|officeScriptsRunAction|
|filteringPostMailDeliveryAction|
|cdpUnifiedFeedback|
|tenantAllowBlockList|
|consumptionResource|
|healthcareSignal|
|dlpImportResult|
|cdpCompliancePolicyExecution|
|multiStageDisposition|
|privacyDataMatch|
|filteringDocMetadata|
|filteringEmailFeatures|
|powerBIDlp|
|filteringUrlInfo|
|filteringAttachmentInfo|
|coreReportingSettings|
|complianceConnector|
|powerPlatformLockboxResourceAccessRequest|
|powerPlatformLockboxResourceCommand|
|cdpPredictiveCodingLabel|
|cdpCompliancePolicyUserFeedback|
|webpageActivityEndpoint|
|omePortal|
|cmImprovementActionChange|
|filteringUrlClick|
|mipLabelAnalyticsAuditRecord|
|filteringEntityEvent|
|filteringRuleHits|
|filteringMailSubmission|
|labelExplorer|
|microsoftManagedServicePlatform|
|powerPlatformServiceActivity|
|scorePlatformGenericAuditRecord|
|filteringTimeTravelDocMetadata|
|alert|
|alertStatus|
|alertIncident|
|incidentStatus|
|case|
|caseInvestigation|
|recordsManagement|
|privacyRemediation|
|dataShareOperation|
|cdpDlpSensitive|
|ehrConnector|
|filteringMailGradingResult|
|publicFolder|
|privacyTenantAuditHistoryRecord|
|aipScannerDiscoverEvent|
|eduDataLakeDownloadOperation|
|m365ComplianceConnector|
|microsoftGraphDataConnectOperation|
|microsoftPurview|
|filteringEmailContentFeatures|
|powerPagesSite|
|powerAppsResource|
|plannerPlan|
|plannerCopyPlan|
|plannerTask|
|plannerRoster|
|plannerPlanList|
|plannerTaskList|
|plannerTenantSettings|
|projectForTheWebProject|
|projectForTheWebTask|
|projectForTheWebRoadmap|
|projectForTheWebRoadmapItem|
|projectForTheWebProjectSettings|
|projectForTheWebRoadmapSettings|
|quarantineMetadata|
|microsoftTodoAudit|
|timeTravelFilteringDocMetadata|
|teamsQuarantineMetadata|
|sharePointAppPermissionOperation|
|microsoftTeamsSensitivityLabelAction|
|filteringTeamsMetadata|
|filteringTeamsUrlInfo|
|filteringTeamsPostDeliveryAction|
|mdcAssessments|
|mdcRegulatoryComplianceStandards|
|mdcRegulatoryComplianceControls|
|mdcRegulatoryComplianceAssessments|
|mdcSecurityConnectors|
|mdaDataSecuritySignal|
|vivaGoals|
|filteringRuntimeInfo|
|attackSimAdmin|
|microsoftGraphDataConnectConsent|
|filteringAtpDetonationInfo|
|privacyPortal|
|managedTenants|
|unifiedSimulationMatchedItem|
|unifiedSimulationSummary|
|updateQuarantineMetadata|
|ms365DSuppressionRule|
|purviewDataMapOperation|
|filteringUrlPostClickAction|
|irmUserDefinedDetectionSignal|
|teamsUpdates|
|plannerRosterSensitivityLabel|
|ms365DIncident|
|filteringDelistingMetadata|
|complianceDLPSharePointClassificationExtended|
|microsoftDefenderForIdentityAudit|
|supervisoryReviewDayXInsight|
|defenderExpertsforXDRAdmin|
|cdpEdgeBlockedMessage|
|hostedRpa|
|cdpContentExplorerAggregateRecord|
|cdpHygieneAttachmentInfo|
|cdpHygieneSummary|
|cdpPostMailDeliveryAction|
|cdpEmailFeatures|
|cdpHygieneUrlInfo|
|cdpUrlClick|
|cdpPackageManagerHygieneEvent|
|filteringDocScan|
|timeTravelFilteringDocScan|
|mapgOnboard|
|unknownFutureValue|

### auditLogUserType values



|Member|
|:---|
|regular|
|reserved|
|admin|
|dcAdmin|
|system|
|application|
|servicePrincipal|
|customPolicy|
|systemPolicy|
|partnerTechnician|
|guest|
|unknownFutureValue|
### actionAfterRetentionPeriod values

| Member                 |
| :--------------------- |
| none                   |
| delete                 |
| startDispositionReview |
| unknownFutureValue     |

### behaviorDuringRetentionPeriod values

| Member                   |
| :----------------------- |
| doNotRetain              |
| retain                   |
| retainAsRecord           |
| retainAsRegulatoryRecord |
| unknownFutureValue       |

### contentFormat values

| Member             |
| :----------------- |
| text               |
| html               |
| markdown           |
| unknownFutureValue |

### defaultRecordBehavior values

| Member             |
| :----------------- |
| startLocked        |
| startUnlocked      |
| unknownFutureValue |

### detectionStatus values

| Member
|:--------------
| detected
| blocked
| prevented
| unknownFutureValue

### eventPropagationStatus values

| Member             |
| :----------------- |
| none               |
| inProcessing       |
| failed             |
| success            |
| unknownFutureValue |

### eventStatusType values

| Member             |
| :----------------- |
| pending            |
| error              |
| success            |
| notAvaliable       |
| unknownFutureValue |

### hostPortProtocol values

| Member             |
| :----------------- |
| tcp                |
| udp                |
| unknownFutureValue |

### hostPortStatus values

| Member             |
| :----------------- |
| open               |
| filtered           |
| closed             |
| unknownFutureValue |

### hostReputationClassification values

| Member             |
| :----------------- |
| unknown            |
| neutral            |
| suspicious         |
| malicious          |
| unknownFutureValue |

### hostReputationRuleSeverity values

| Member             |
| :----------------- |
| unknown            |
| low                |
| medium             |
| high               |
| unknownFutureValue |

### indicatorSource values

| Member             |
| :----------------- |
| microsoft          |
| osint              |
| public             |
| unknownFutureValue |

### intelligenceProfileKind values

| Member             |
| :----------------- |
| actor              |
| tool               |
| unknownFutureValue |

### queryType values

| Member             |
| :----------------- |
| files              |
| messages           |
| unknownFutureValue |

### retentionTrigger values

| Member             |
| :----------------- |
| dateLabeled        |
| dateCreated        |
| dateModified       |
| dateOfEvent        |
| unknownFutureValue |

### vulnerabilitySeverity values

| Member             |
| :----------------- |
| none               |
| low                |
| medium             |
| high               |
| critical           |
| unknownFutureValue |

### deviceAssetIdentifier values

| Member                |
|:----------------------|
| deviceId              |
| deviceName            |
| remoteDeviceName      |
| targetDeviceName      |
| destinationDeviceName |
| unknownFutureValue    |

### deviceIdEntityIdentifier values

| Member             |
|:-------------------|
| deviceId           |
| unknownFutureValue |

### disableUserEntityIdentifier values

| Member                      |
|:----------------------------|
| accountSid                  |
| initiatingProcessAccountSid |
| requestAccountSid           |
| onPremSid                   |
| unknownFutureValue          |

### emailEntityIdentifier values

| Member                |
|:----------------------|
| networkMessageId      |
| recipientEmailAddress |
| unknownFutureValue    |

### fileEntityIdentifier values

| Member                  |
|:------------------------|
| sha1                    |
| initiatingProcessSHA1   |
| sha256                  |
| initiatingProcessSHA256 |
| unknownFutureValue      |

### forceUserPasswordResetEntityIdentifier values

| Member                      |
|:----------------------------|
| accountSid                  |
| initiatingProcessAccountSid |
| requestAccountSid           |
| onPremSid                   |
| unknownFutureValue          |

### huntingRuleErrorCode values

| Member                   |
|:-------------------------|
| queryExecutionFailed     |
| queryExecutionThrottling |
| queryExceededResultSize  |
| queryLimitsExceeded      |
| queryTimeout             |
| alertCreationFailed      |
| alertReportNotFound      |
| partialRowsFailed        |
| unknownFutureValue       |
| noImpactedEntity         |

### huntingRuleRunStatus values

| Member             |
|:-------------------|
| running            |
| completed          |
| failed             |
| partiallyFailed    |
| unknownFutureValue |

### isolationType values

| Member             |
|:-------------------|
| full               |
| selective          |
| unknownFutureValue |

### mailboxAssetIdentifier values

| Member                      |
|:----------------------------|
| accountUpn                  |
| fileOwnerUpn                |
| initiatingProcessAccountUpn |
| lastModifyingAccountUpn     |
| targetAccountUpn            |
| senderFromAddress           |
| senderDisplayName           |
| recipientEmailAddress       |
| senderMailFromAddress       |
| unknownFutureValue          |

### markUserAsCompromisedEntityIdentifier values

| Member                           |
|:---------------------------------|
| accountObjectId                  |
| initiatingProcessAccountObjectId |
| servicePrincipalId               |
| recipientObjectId                |
| unknownFutureValue               |

### scopeType values

| Member             |
|:-------------------|
| deviceGroup        |
| unknownFutureValue |

### stopAndQuarantineFileEntityIdentifier values

| Member                |
|:----------------------|
| deviceId              |
| sha1                  |
| initiatingProcessSHA1 |
| unknownFutureValue    |

### userAssetIdentifier values

| Member                      |
|:----------------------------|
| accountObjectId             |
| accountSid                  |
| accountUpn                  |
| accountName                 |
| accountDomain               |
| accountId                   |
| requestAccountSid           |
| requestAccountName          |
| requestAccountDomain        |
| recipientObjectId           |
| processAccountObjectId      |
| initiatingAccountSid        |
| initiatingProcessAccountUpn |
| initiatingAccountName       |
| initiatingAccountDomain     |
| servicePrincipalId          |
| servicePrincipalName        |
| targetAccountUpn            |
| unknownFutureValue          |

### submissionResultCategory values

| Member             |
| :----------------- |
| notJunk            |
| spam               |
| phishing           |
| malware            |
| allowedByPolicy    |
| blockedByPolicy    |
| spoof              |
| unknown            |
| noResultAvailable  |
| unknownFutureValue |
| beingAnalyzed |
| notSubmittedToMicrosoft |
| phishingSimulation |
| allowedDueToOrganizationOverride |
| blockedDueToOrganizationOverride |
| allowedDueToUserOverride |
| blockedDueToUserOverride |
| itemNotfound |
| threatsFound |
| noThreatsFound |
| domainImpersonation |
| userImpersonation |
| brandImpersonation |
| authenticationFailure |
| spoofedBlocked |
| spoofedAllowed |
| reasonLostInTransit |
| bulk |
### antispamTeamsDirection values

| Member |
| :------|
|  unknown   |
|  inbound   |
|  outbound  |
|  intraorg  |
|  unknownFutureValue  |

### teamsDeliveryLocation values

| Member |
| :------|
|  unknown   |
|  teams     |
|  quarantine     |
|  failed    |
|  unknownFutureValue  |

### recipientType values

|Member|
|:---|
|user|
|roleGroup|
|unknownFutureValue|

### teamsMessageDeliveryAction values

| Member |
| :------|
|  unknown   |
|  deliveredAsSpam     |
|  delivered |
|  blocked   |
|  replaced  |
|  unknownFutureValue  |

### cloudAttachmentVersion values

|Member|
|:----|
|latest     |
|recent10   |
|recent100  |
|all        |
|unknownFutureValue|

### documentVersion values

|Member|
|:----|
|latest     |
|recent10   |
|recent100  |
|all        |
|unknownFutureValue|

### contentProcessingErrorType values

|Member|
|:---|
|transient|
|permanent|
|unknownFutureValue|

### dlpAction values

|Member|
|:---|
|notifyUser|
|blockAccess|
|deviceRestriction|
|browserRestriction|
|unknownFutureValue|
|restrictAccess|
|generateAlert|
|generateIncidentReportAction|
|sPBlockAnonymousAccess|
|sPRuntimeAccessControl|
|sPSharingNotifyUser|
|sPSharingGenerateIncidentReport|

### executionMode values

|Member|
|:---|
|evaluateInline|
|evaluateOffline|
|unknownFutureValue|

### policyPivotProperty values

|Member|
|:---|
|none|
|activity|
|location|
|unknownFutureValue|

### protectionScopeState values

|Member|
|:---|
|notModified|
|modified|
|unknownFutureValue|

### userActivityTypes values

|Member|
|:---|
|none|
|uploadText|
|uploadFile|
|downloadText|
|downloadFile|
|unknownFutureValue|

### userActivityType values

|Member|
|:---|
|uploadText|
|uploadFile|
|downloadText|
|downloadFile|
|unknownFutureValue|

### labelActionSource values

|Member|
|:---|
|manual|
|automatic|
|recommended|
|none|
|unknownFutureValue|

### sensitivityLabelTarget values

|Member|
|:---|
|email|
|site|
|unifiedGroup|
|teamwork|
|unknownFutureValue|

### applicationMode values

|Member|
|:---|
|manual|
|automatic|
|recommended|

### restrictionAction values

|Member|
|:---|
|warn|
|audit|
|block|

### sensorCandidateActivationMode values

|Member|
|:---|
|manual|
|automated|
|unknownFutureValue|


### action values

|Member|
|:---|
|disable|
|enable|
|forcePasswordReset|
|revokeAllSessions|
|requireUserToSignInAgain|
|markUserAsCompromised|
|unknownFutureValue|


### identityProvider values

|Member|
|:---|
|entraID|
|activeDirectory|
|okta|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
