---
title: "auditLogQuery resource type"
description: "Represents an audit log query that is used to query and retrieve relevant audit log records."
author: "arishojaswi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# auditLogQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit log query that is used to query and retrieve relevant audit log records.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List auditLogQueries](../api/security-auditcoreroot-list-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md) collection|Get a list of the [auditLogQuery](../resources/security-auditlogquery.md) objects and their properties.|
|[Create auditLogQuery](../api/security-auditcoreroot-post-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Create a new [auditLogQuery](../resources/security-auditlogquery.md) object.|
|[Get auditLogQuery](../api/security-auditlogquery-get.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Read the properties and relationships of a [auditLogQuery](../resources/security-auditlogquery.md) object.|
|[List records](../api/security-auditlogquery-list-records.md)|[auditLogRecord](../resources/security-auditlogrecord.md) collection|Get the auditLogRecord resources from the records navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|administrativeUnitIdFilters|String collection|The administrative units tagged to an audit log record.|
|displayName|String|The display name of the saved audit log query.|
|filterEndDateTime|DateTimeOffset|The end date of the date range in the query.|
|filterStartDateTime|DateTimeOffset|The start date of the date range in the query.|
|id|String|Unique identifier for the audit log query. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddressFilters|String collection|The IP address of the device that was used when the activity was logged.|
|keywordFilter|String|Free text field to search non-indexed properties of the audit log.|
|objectIdFilters|String collection|For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet.|
|operationFilters|String collection|The name of the user or admin activity. For a description of the most common operations/activities, see [Search the audit log in the Office 365 Protection Center](https://go.microsoft.com/fwlink/p/?LinkId=708432).|
|recordTypeFilter|microsoft.graph.security.auditLogRecordType|The type of operation indicated by the record. The possible values are: `exchangeAdmin`, `exchangeItem`, `exchangeItemGroup`, `sharePoint`, `syntheticProbe`, `sharePointFileOperation`, `oneDrive`, `azureActiveDirectory`, `azureActiveDirectoryAccountLogon`, `dataCenterSecurityCmdlet`, `complianceDLPSharePoint`, `sway`, `complianceDLPExchange`, `sharePointSharingOperation`, `azureActiveDirectoryStsLogon`, `skypeForBusinessPSTNUsage`, `skypeForBusinessUsersBlocked`, `securityComplianceCenterEOPCmdlet`, `exchangeAggregatedOperation`, `powerBIAudit`, `crm`, `yammer`, `skypeForBusinessCmdlets`, `discovery`, `microsoftTeams`, `threatIntelligence`, `mailSubmission`, `microsoftFlow`, `aeD`, `microsoftStream`, `complianceDLPSharePointClassification`, `threatFinder`, `project`, `sharePointListOperation`, `sharePointCommentOperation`, `dataGovernance`, `kaizala`, `securityComplianceAlerts`, `threatIntelligenceUrl`, `securityComplianceInsights`, `mipLabel`, `workplaceAnalytics`, `powerAppsApp`, `powerAppsPlan`, `threatIntelligenceAtpContent`, `labelContentExplorer`, `teamsHealthcare`, `exchangeItemAggregated`, `hygieneEvent`, `dataInsightsRestApiAudit`, `informationBarrierPolicyApplication`, `sharePointListItemOperation`, `sharePointContentTypeOperation`, `sharePointFieldOperation`, `microsoftTeamsAdmin`, `hrSignal`, `microsoftTeamsDevice`, `microsoftTeamsAnalytics`, `informationWorkerProtection`, `campaign`, `dlpEndpoint`, `airInvestigation`, `quarantine`, `microsoftForms`, `applicationAudit`, `complianceSupervisionExchange`, `customerKeyServiceEncryption`, `officeNative`, `mipAutoLabelSharePointItem`, `mipAutoLabelSharePointPolicyLocation`, `microsoftTeamsShifts`, `secureScore`, `mipAutoLabelExchangeItem`, `cortanaBriefing`, `search`, `wdatpAlerts`, `powerPlatformAdminDlp`, `powerPlatformAdminEnvironment`, `mdatpAudit`, `sensitivityLabelPolicyMatch`, `sensitivityLabelAction`, `sensitivityLabeledFileAction`, `attackSim`, `airManualInvestigation`, `securityComplianceRBAC`, `userTraining`, `airAdminActionInvestigation`, `mstic`, `physicalBadgingSignal`, `teamsEasyApprovals`, `aipDiscover`, `aipSensitivityLabelAction`, `aipProtectionAction`, `aipFileDeleted`, `aipHeartBeat`, `mcasAlerts`, `onPremisesFileShareScannerDlp`, `onPremisesSharePointScannerDlp`, `exchangeSearch`, `sharePointSearch`, `privacyDataMinimization`, `labelAnalyticsAggregate`, `myAnalyticsSettings`, `securityComplianceUserChange`, `complianceDLPExchangeClassification`, `complianceDLPEndpoint`, `mipExactDataMatch`, `msdeResponseActions`, `msdeGeneralSettings`, `msdeIndicatorsSettings`, `ms365DCustomDetection`, `msdeRolesSettings`, `mapgAlerts`, `mapgPolicy`, `mapgRemediation`, `privacyRemediationAction`, `privacyDigestEmail`, `mipAutoLabelSimulationProgress`, `mipAutoLabelSimulationCompletion`, `mipAutoLabelProgressFeedback`, `dlpSensitiveInformationType`, `mipAutoLabelSimulationStatistics`, `largeContentMetadata`, `microsoft365Group`, `cdpMlInferencingResult`, `filteringMailMetadata`, `cdpClassificationMailItem`, `cdpClassificationDocument`, `officeScriptsRunAction`, `filteringPostMailDeliveryAction`, `cdpUnifiedFeedback`, `tenantAllowBlockList`, `consumptionResource`, `healthcareSignal`, `dlpImportResult`, `cdpCompliancePolicyExecution`, `multiStageDisposition`, `privacyDataMatch`, `filteringDocMetadata`, `filteringEmailFeatures`, `powerBIDlp`, `filteringUrlInfo`, `filteringAttachmentInfo`, `coreReportingSettings`, `complianceConnector`, `powerPlatformLockboxResourceAccessRequest`, `powerPlatformLockboxResourceCommand`, `cdpPredictiveCodingLabel`, `cdpCompliancePolicyUserFeedback`, `webpageActivityEndpoint`, `omePortal`, `cmImprovementActionChange`, `filteringUrlClick`, `mipLabelAnalyticsAuditRecord`, `filteringEntityEvent`, `filteringRuleHits`, `filteringMailSubmission`, `labelExplorer`, `microsoftManagedServicePlatform`, `powerPlatformServiceActivity`, `scorePlatformGenericAuditRecord`, `filteringTimeTravelDocMetadata`, `alert`, `alertStatus`, `alertIncident`, `incidentStatus`, `case`, `caseInvestigation`, `recordsManagement`, `privacyRemediation`, `dataShareOperation`, `cdpDlpSensitive`, `ehrConnector`, `filteringMailGradingResult`, `publicFolder`, `privacyTenantAuditHistoryRecord`, `aipScannerDiscoverEvent`, `eduDataLakeDownloadOperation`, `m365ComplianceConnector`, `microsoftGraphDataConnectOperation`, `microsoftPurview`, `filteringEmailContentFeatures`, `powerPagesSite`, `powerAppsResource`, `plannerPlan`, `plannerCopyPlan`, `plannerTask`, `plannerRoster`, `plannerPlanList`, `plannerTaskList`, `plannerTenantSettings`, `projectForTheWebProject`, `projectForTheWebTask`, `projectForTheWebRoadmap`, `projectForTheWebRoadmapItem`, `projectForTheWebProjectSettings`, `projectForTheWebRoadmapSettings`, `quarantineMetadata`, `microsoftTodoAudit`, `timeTravelFilteringDocMetadata`, `teamsQuarantineMetadata`, `sharePointAppPermissionOperation`, `microsoftTeamsSensitivityLabelAction`, `filteringTeamsMetadata`, `filteringTeamsUrlInfo`, `filteringTeamsPostDeliveryAction`, `mdcAssessments`, `mdcRegulatoryComplianceStandards`, `mdcRegulatoryComplianceControls`, `mdcRegulatoryComplianceAssessments`, `mdcSecurityConnectors`, `mdaDataSecuritySignal`, `vivaGoals`, `filteringRuntimeInfo`, `attackSimAdmin`, `microsoftGraphDataConnectConsent`, `filteringAtpDetonationInfo`, `privacyPortal`, `managedTenants`, `unifiedSimulationMatchedItem`, `unifiedSimulationSummary`, `updateQuarantineMetadata`, `ms365DSuppressionRule`, `purviewDataMapOperation`, `filteringUrlPostClickAction`, `irmUserDefinedDetectionSignal`, `teamsUpdates`, `plannerRosterSensitivityLabel`, `ms365DIncident`, `filteringDelistingMetadata`, `complianceDLPSharePointClassificationExtended`, `microsoftDefenderForIdentityAudit`, `supervisoryReviewDayXInsight`, `defenderExpertsforXDRAdmin`, `cdpEdgeBlockedMessage`, `hostedRpa`, `cdpContentExplorerAggregateRecord`, `cdpHygieneAttachmentInfo`, `cdpHygieneSummary`, `cdpPostMailDeliveryAction`, `cdpEmailFeatures`, `cdpHygieneUrlInfo`, `cdpUrlClick`, `cdpPackageManagerHygieneEvent`, `filteringDocScan`, `timeTravelFilteringDocScan`, `mapgOnboard`, `unknownFutureValue`.|
|serviceFilter|String|The Office 365 service where the activity occurred.|
|status|microsoft.graph.security.auditLogQueryStatus|Describes the current status of the query. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `cancelled`, `unknownFutureValue`.|
|userPrincipalNameFilters|String collection|The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, _my_name@my_domain_name_.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|records|[microsoft.graph.security.auditLogRecord](../resources/security-auditlogrecord.md) collection|An individual audit log record.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.auditLogQuery",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilter": "String",
  "keywordFilter": "String",
  "serviceFilter": "String",
  "operationFilters": [
    "String"
  ],
  "userPrincipalNameFilters": [
    "String"
  ],
  "ipAddressFilters": [
    "String"
  ],
  "objectIdFilters": [
    "String"
  ],
  "administrativeUnitIdFilters": [
    "String"
  ],
  "status": "String"
}
```