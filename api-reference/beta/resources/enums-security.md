---
title: "Security enum values"
description: "Microsoft Graph security subnamespace enumeration values."
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "security"
author: "BenAlfasi"
ms.date: 01/08/2026
---

# Security enum values

Namespace: microsoft.graph.security

### antispamDirectionality values

|Member|
|:---|
|unknown|
|inbound|
|outbound|
|intraOrg|
|unknownFutureValue|

### threatType values

|Member|
|:---|
|unknown|
|spam|
|malware|
|phish|
|none|
|unknownFutureValue|

### remediationSeverity values

|Member|
|:---|
|low|
|medium|
|high|
|unknownFutureValue|

### remediationAction values

|Member|
|:---|
|moveToJunk|
|moveToInbox|
|hardDelete|
|softDelete|
|moveToDeletedItems|
|unknownFutureValue|
|moveToQuarantine|

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

### mailboxConfigurationType values

|Member|
|:---|
|mailForwardingRule|
|owaSettings|
|ewsSettings|
|mailDelegation|
|userInboxRule|
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
|ExchangeAdmin|
|ExchangeItem|
|ExchangeItemGroup|
|SharePoint|
|SyntheticProbe|
|SharePointFileOperation|
|OneDrive|
|AzureActiveDirectory|
|AzureActiveDirectoryAccountLogon|
|DataCenterSecurityCmdlet|
|ComplianceDLPSharePoint|
|Sway|
|ComplianceDLPExchange|
|SharePointSharingOperation|
|AzureActiveDirectoryStsLogon|
|SkypeForBusinessPSTNUsage|
|SkypeForBusinessUsersBlocked|
|SecurityComplianceCenterEOPCmdlet|
|ExchangeAggregatedOperation|
|PowerBIAudit|
|CRM|
|Yammer|
|SkypeForBusinessCmdlets|
|Discovery|
|MicrosoftTeams|
|ThreatIntelligence|
|MailSubmission|
|MicrosoftFlow|
|AeD|
|MicrosoftStream|
|ComplianceDLPSharePointClassification|
|ThreatFinder|
|Project|
|SharePointListOperation|
|SharePointCommentOperation|
|DataGovernance|
|Kaizala|
|SecurityComplianceAlerts|
|ThreatIntelligenceUrl|
|SecurityComplianceInsights|
|MIPLabel|
|WorkplaceAnalytics|
|PowerAppsApp|
|PowerAppsPlan|
|ThreatIntelligenceAtpContent|
|LabelContentExplorer|
|TeamsHealthcare|
|ExchangeItemAggregated|
|HygieneEvent|
|DataInsightsRestApiAudit|
|InformationBarrierPolicyApplication|
|SharePointListItemOperation|
|SharePointContentTypeOperation|
|SharePointFieldOperation|
|MicrosoftTeamsAdmin|
|HRSignal|
|MicrosoftTeamsDevice|
|MicrosoftTeamsAnalytics|
|InformationWorkerProtection|
|Campaign|
|DLPEndpoint|
|AirInvestigation|
|Quarantine|
|MicrosoftForms|
|ApplicationAudit|
|ComplianceSupervisionExchange|
|CustomerKeyServiceEncryption|
|OfficeNative|
|MipAutoLabelSharePointItem|
|MipAutoLabelSharePointPolicyLocation|
|MicrosoftTeamsShifts|
|SecureScore|
|MipAutoLabelExchangeItem|
|CortanaBriefing|
|Search|
|WDATPAlerts|
|PowerPlatformAdminDlp|
|PowerPlatformAdminEnvironment|
|MDATPAudit|
|SensitivityLabelPolicyMatch|
|SensitivityLabelAction|
|SensitivityLabeledFileAction|
|AttackSim|
|AirManualInvestigation|
|SecurityComplianceRBAC|
|UserTraining|
|AirAdminActionInvestigation|
|MSTIC|
|PhysicalBadgingSignal|
|TeamsEasyApprovals|
|AipDiscover|
|AipSensitivityLabelAction|
|AipProtectionAction|
|AipFileDeleted|
|AipHeartBeat|
|MCASAlerts|
|OnPremisesFileShareScannerDlp|
|OnPremisesSharePointScannerDlp|
|ExchangeSearch|
|SharePointSearch|
|PrivacyDataMinimization|
|LabelAnalyticsAggregate|
|MyAnalyticsSettings|
|SecurityComplianceUserChange|
|ComplianceDLPExchangeClassification|
|ComplianceDLPEndpoint|
|MipExactDataMatch|
|MSDEResponseActions|
|MSDEGeneralSettings|
|MSDEIndicatorsSettings|
|MS365DCustomDetection|
|MSDERolesSettings|
|MAPGAlerts|
|MAPGPolicy|
|MAPGRemediation|
|PrivacyRemediationAction|
|PrivacyDigestEmail|
|MipAutoLabelSimulationProgress|
|MipAutoLabelSimulationCompletion|
|MipAutoLabelProgressFeedback|
|DlpSensitiveInformationType|
|MipAutoLabelSimulationStatistics|
|LargeContentMetadata|
|Microsoft365Group|
|CDPMlInferencingResult|
|FilteringMailMetadata|
|CDPClassificationMailItem|
|CDPClassificationDocument|
|OfficeScriptsRunAction|
|FilteringPostMailDeliveryAction|
|CDPUnifiedFeedback|
|TenantAllowBlockList|
|ConsumptionResource|
|HealthcareSignal|
|DlpImportResult|
|CDPCompliancePolicyExecution|
|MultiStageDisposition|
|PrivacyDataMatch|
|FilteringDocMetadata|
|FilteringEmailFeatures|
|PowerBIDlp|
|FilteringUrlInfo|
|FilteringAttachmentInfo|
|CoreReportingSettings|
|ComplianceConnector|
|PowerPlatformLockboxResourceAccessRequest|
|PowerPlatformLockboxResourceCommand|
|CDPPredictiveCodingLabel|
|CDPCompliancePolicyUserFeedback|
|WebpageActivityEndpoint|
|OMEPortal|
|CMImprovementActionChange|
|FilteringUrlClick|
|MipLabelAnalyticsAuditRecord|
|FilteringEntityEvent|
|FilteringRuleHits|
|FilteringMailSubmission|
|LabelExplorer|
|MicrosoftManagedServicePlatform|
|PowerPlatformServiceActivity|
|ScorePlatformGenericAuditRecord|
|FilteringTimeTravelDocMetadata|
|Alert|
|AlertStatus|
|AlertIncident|
|IncidentStatus|
|Case|
|CaseInvestigation|
|RecordsManagement|
|PrivacyRemediation|
|DataShareOperation|
|CdpDlpSensitive|
|EHRConnector|
|FilteringMailGradingResult|
|PublicFolder|
|PrivacyTenantAuditHistoryRecord|
|AipScannerDiscoverEvent|
|EduDataLakeDownloadOperation|
|M365ComplianceConnector|
|MicrosoftGraphDataConnectOperation|
|MicrosoftPurview|
|FilteringEmailContentFeatures|
|PowerPagesSite|
|PowerAppsResource|
|PlannerPlan|
|PlannerCopyPlan|
|PlannerTask|
|PlannerRoster|
|PlannerPlanList|
|PlannerTaskList|
|PlannerTenantSettings|
|ProjectForTheWebProject|
|ProjectForTheWebTask|
|ProjectForTheWebRoadmap|
|ProjectForTheWebRoadmapItem|
|ProjectForTheWebProjectSettings|
|ProjectForTheWebRoadmapSettings|
|QuarantineMetadata|
|MicrosoftTodoAudit|
|TimeTravelFilteringDocMetadata|
|TeamsQuarantineMetadata|
|SharePointAppPermissionOperation|
|MicrosoftTeamsSensitivityLabelAction|
|FilteringTeamsMetadata|
|FilteringTeamsUrlInfo|
|FilteringTeamsPostDeliveryAction|
|MDCAssessments|
|MDCRegulatoryComplianceStandards|
|MDCRegulatoryComplianceControls|
|MDCRegulatoryComplianceAssessments|
|MDCSecurityConnectors|
|MDADataSecuritySignal|
|VivaGoals|
|FilteringRuntimeInfo|
|AttackSimAdmin|
|MicrosoftGraphDataConnectConsent|
|FilteringAtpDetonationInfo|
|PrivacyPortal|
|ManagedTenants|
|UnifiedSimulationMatchedItem|
|UnifiedSimulationSummary|
|UpdateQuarantineMetadata|
|MS365DSuppressionRule|
|PurviewDataMapOperation|
|FilteringUrlPostClickAction|
|IrmUserDefinedDetectionSignal|
|TeamsUpdates|
|PlannerRosterSensitivityLabel|
|MS365DIncident|
|FilteringDelistingMetadata|
|ComplianceDLPSharePointClassificationExtended|
|MicrosoftDefenderForIdentityAudit|
|SupervisoryReviewDayXInsight|
|DefenderExpertsforXDRAdmin|
|CDPEdgeBlockedMessage|
|HostedRpa|
|CdpContentExplorerAggregateRecord|
|CDPHygieneAttachmentInfo|
|CDPHygieneSummary|
|CDPPostMailDeliveryAction|
|CDPEmailFeatures|
|CDPHygieneUrlInfo|
|CDPUrlClick|
|CDPPackageManagerHygieneEvent|
|FilteringDocScan|
|TimeTravelFilteringDocScan|
|MAPGOnboard|
|VfamCreatePolicy|
|VfamUpdatePolicy|
|VfamDeletePolicy|
|M365DAAD|
|CdpColdCrawlStatus|
|PowerPlatformAdministratorActivity|
|Windows365CustomerLockbox|
|CdpResourceScopeChangeEvent|
|ComplianceCCExchangeExecutionResult|
|CdpOcrCostEstimatorRecord|
|CopilotInteraction|
|CdpOcrBillingRecord|
|ComplianceDLPApplications|
|UAMOperation|
|VivaLearning|
|VivaLearningAdmin|
|PurviewPolicyOperation|
|PurviewMetadataPolicyOperation|
|PeopleAdminSettings|
|CdpComplianceDLPExchangeClassification|
|CdpComplianceDLPSharePointClassification|
|FilteringBulkSenderInsightData|
|FilteringBulkThresholdInsightData|
|PrivacyOpenAccess|
|OWAAuth|
|ComplianceDLPApplicationsClassification|
|SharePointESignature|
|Dynamics365BusinessCentral|
|MeshWorlds|
|VivaPulseResponse|
|VivaPulseOrganizer|
|VivaPulseAdmin|
|VivaPulseReport|
|AIAppInteraction|
|ComplianceDLMExchange|
|ComplianceDLMSharePoint|
|ProjectForTheWebAssignedToMeSettings|
|CPSOperation|
|ComplianceDLPExchangeDiscovery|
|PurviewMCRecommendation|
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

## contentFormat values

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

### recipientType values

|Member|
|:---|
|user|
|roleGroup|
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
|restrictWebGrounding|

### executionMode values

|Member|
|:---|
|evaluateInline|
|evaluateOffline|
|unknownFutureValue|

### overrideOption values

|Member|
|:---|
|notAllowed|
|allowFalsePositiveOverride|
|allowWithJustification|
|allowWithoutJustification|
|unknownFutureValue|
|allowWithAcknowledgement|

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

### alertStatus values

|Member|
|:---|
|unknown|
|new|
|inProgress|
|resolved|
|unknownFutureValue|

### identityProvider values

|Member|
|:---|
|entraID|
|activeDirectory|
|okta|
|unknownFutureValue|

### sensorCandidateActivationMode values

|Member|
|:---|
|manual|
|automated|
|unknownFutureValue|

### serviceStatus values

|Member|
|:---|
|stopped|
|starting|
|running|
|disabled|
|onboarding|
|unknown|
|unknownFutureValue|

### serviceSource values

|Member|
|:---|
|unknown|
|microsoftDefenderForEndpoint|
|microsoftDefenderForIdentity|
|microsoftDefenderForCloudApps|
|microsoftDefenderForOffice365|
|microsoft365Defender|
|azureAdIdentityProtection|
|microsoftAppGovernance|
|dataLossPrevention|
|unknownFutureValue|
|microsoftDefenderForCloud|
|microsoftSentinel|
|microsoftThreatIntelligence|

### environmentKind values 

|Member|
|:---|
|azureSubscription|
|awsOrganization|
|awsAccount|
|gcpOrganization|
|gcpProject|
|dockersHubOrganization|
|devOpsConnection|
|azureDevOpsOrganization|
|gitHubOrganization|
|gitLabGroup|
|jFrogArtifactory|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->