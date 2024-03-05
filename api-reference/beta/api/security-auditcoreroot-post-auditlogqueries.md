---
title: "Create auditLogQuery"
description: "Create a new auditLogQuery object."
author: "arishojaswi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create auditLogQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [auditLogQuery](../resources/security-auditlogquery.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Auditing data can be accessed through Microsoft Purview Audit Search API via the following permissions, which are classified at a Microsoft 365 service level. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "ignored"
}
-->

|Microsoft 365 service|Delegated (work or school account)|Delegated (personal Microsoft account)|Application
|:---|:---|:---|:---|
|Microsoft OneDrive|AuditLogsQuery-OneDrive.Read.All|Not supported|AuditLogsQuery-OneDrive.Read.All|
|Microsoft Exchange|AuditLogsQuery-Exchange.Read.All|Not supported|AuditLogsQuery-Exchange.Read.All|
|Microsoft SharePoint|AuditLogsQuery-SharePoint.Read.All|Not supported|AuditLogsQuery-SharePoint.Read.All|
|Microsoft Intune|AuditLogsQuery-Endpoint.Read.All|Not supported|AuditLogsQuery-Endpoint.Read.All|
|Microsoft Dynamics CRM|AuditLogsQuery-CRM.Read.All|Not supported|AuditLogsQuery-CRM.Read.All|
|Microsoft Entra|AuditLogsQuery-Entra.Read.All|Not supported|AuditLogsQuery-Entra.Read.All|
|All Audit Logs|AuditLogsQuery.Read.All|Not supported|AuditLogsQuery.Read.All|


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/auditLog/queries
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [auditLogQuery](../resources/security-auditlogquery.md) object.

You can specify the following properties when creating a **auditLogQuery**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the saved audit log query. Optional.|
|filterStartDateTime|DateTimeOffset|Start date of the date range in the query. Optional.|
|filterEndDateTime|DateTimeOffset|End date of the date range in the query. Optional.|
|recordTypeFilter|microsoft.graph.security.auditLogRecordType|The type of operation indicated by the record. The possible values are: `exchangeAdmin`, `exchangeItem`, `exchangeItemGroup`, `sharePoint`, `syntheticProbe`, `sharePointFileOperation`, `oneDrive`, `azureActiveDirectory`, `azureActiveDirectoryAccountLogon`, `dataCenterSecurityCmdlet`, `complianceDLPSharePoint`, `sway`, `complianceDLPExchange`, `sharePointSharingOperation`, `azureActiveDirectoryStsLogon`, `skypeForBusinessPSTNUsage`, `skypeForBusinessUsersBlocked`, `securityComplianceCenterEOPCmdlet`, `exchangeAggregatedOperation`, `powerBIAudit`, `crm`, `yammer`, `skypeForBusinessCmdlets`, `discovery`, `microsoftTeams`, `threatIntelligence`, `mailSubmission`, `microsoftFlow`, `aeD`, `microsoftStream`, `complianceDLPSharePointClassification`, `threatFinder`, `project`, `sharePointListOperation`, `sharePointCommentOperation`, `dataGovernance`, `kaizala`, `securityComplianceAlerts`, `threatIntelligenceUrl`, `securityComplianceInsights`, `mipLabel`, `workplaceAnalytics`, `powerAppsApp`, `powerAppsPlan`, `threatIntelligenceAtpContent`, `labelContentExplorer`, `teamsHealthcare`, `exchangeItemAggregated`, `hygieneEvent`, `dataInsightsRestApiAudit`, `informationBarrierPolicyApplication`, `sharePointListItemOperation`, `sharePointContentTypeOperation`, `sharePointFieldOperation`, `microsoftTeamsAdmin`, `hrSignal`, `microsoftTeamsDevice`, `microsoftTeamsAnalytics`, `informationWorkerProtection`, `campaign`, `dlpEndpoint`, `airInvestigation`, `quarantine`, `microsoftForms`, `applicationAudit`, `complianceSupervisionExchange`, `customerKeyServiceEncryption`, `officeNative`, `mipAutoLabelSharePointItem`, `mipAutoLabelSharePointPolicyLocation`, `microsoftTeamsShifts`, `secureScore`, `mipAutoLabelExchangeItem`, `cortanaBriefing`, `search`, `wdatpAlerts`, `powerPlatformAdminDlp`, `powerPlatformAdminEnvironment`, `mdatpAudit`, `sensitivityLabelPolicyMatch`, `sensitivityLabelAction`, `sensitivityLabeledFileAction`, `attackSim`, `airManualInvestigation`, `securityComplianceRBAC`, `userTraining`, `airAdminActionInvestigation`, `mstic`, `physicalBadgingSignal`, `teamsEasyApprovals`, `aipDiscover`, `aipSensitivityLabelAction`, `aipProtectionAction`, `aipFileDeleted`, `aipHeartBeat`, `mcasAlerts`, `onPremisesFileShareScannerDlp`, `onPremisesSharePointScannerDlp`, `exchangeSearch`, `sharePointSearch`, `privacyDataMinimization`, `labelAnalyticsAggregate`, `myAnalyticsSettings`, `securityComplianceUserChange`, `complianceDLPExchangeClassification`, `complianceDLPEndpoint`, `mipExactDataMatch`, `msdeResponseActions`, `msdeGeneralSettings`, `msdeIndicatorsSettings`, `ms365DCustomDetection`, `msdeRolesSettings`, `mapgAlerts`, `mapgPolicy`, `mapgRemediation`, `privacyRemediationAction`, `privacyDigestEmail`, `mipAutoLabelSimulationProgress`, `mipAutoLabelSimulationCompletion`, `mipAutoLabelProgressFeedback`, `dlpSensitiveInformationType`, `mipAutoLabelSimulationStatistics`, `largeContentMetadata`, `microsoft365Group`, `cdpMlInferencingResult`, `filteringMailMetadata`, `cdpClassificationMailItem`, `cdpClassificationDocument`, `officeScriptsRunAction`, `filteringPostMailDeliveryAction`, `cdpUnifiedFeedback`, `tenantAllowBlockList`, `consumptionResource`, `healthcareSignal`, `dlpImportResult`, `cdpCompliancePolicyExecution`, `multiStageDisposition`, `privacyDataMatch`, `filteringDocMetadata`, `filteringEmailFeatures`, `powerBIDlp`, `filteringUrlInfo`, `filteringAttachmentInfo`, `coreReportingSettings`, `complianceConnector`, `powerPlatformLockboxResourceAccessRequest`, `powerPlatformLockboxResourceCommand`, `cdpPredictiveCodingLabel`, `cdpCompliancePolicyUserFeedback`, `webpageActivityEndpoint`, `omePortal`, `cmImprovementActionChange`, `filteringUrlClick`, `mipLabelAnalyticsAuditRecord`, `filteringEntityEvent`, `filteringRuleHits`, `filteringMailSubmission`, `labelExplorer`, `microsoftManagedServicePlatform`, `powerPlatformServiceActivity`, `scorePlatformGenericAuditRecord`, `filteringTimeTravelDocMetadata`, `alert`, `alertStatus`, `alertIncident`, `incidentStatus`, `case`, `caseInvestigation`, `recordsManagement`, `privacyRemediation`, `dataShareOperation`, `cdpDlpSensitive`, `ehrConnector`, `filteringMailGradingResult`, `publicFolder`, `privacyTenantAuditHistoryRecord`, `aipScannerDiscoverEvent`, `eduDataLakeDownloadOperation`, `m365ComplianceConnector`, `microsoftGraphDataConnectOperation`, `microsoftPurview`, `filteringEmailContentFeatures`, `powerPagesSite`, `powerAppsResource`, `plannerPlan`, `plannerCopyPlan`, `plannerTask`, `plannerRoster`, `plannerPlanList`, `plannerTaskList`, `plannerTenantSettings`, `projectForTheWebProject`, `projectForTheWebTask`, `projectForTheWebRoadmap`, `projectForTheWebRoadmapItem`, `projectForTheWebProjectSettings`, `projectForTheWebRoadmapSettings`, `quarantineMetadata`, `microsoftTodoAudit`, `timeTravelFilteringDocMetadata`, `teamsQuarantineMetadata`, `sharePointAppPermissionOperation`, `microsoftTeamsSensitivityLabelAction`, `filteringTeamsMetadata`, `filteringTeamsUrlInfo`, `filteringTeamsPostDeliveryAction`, `mdcAssessments`, `mdcRegulatoryComplianceStandards`, `mdcRegulatoryComplianceControls`, `mdcRegulatoryComplianceAssessments`, `mdcSecurityConnectors`, `mdaDataSecuritySignal`, `vivaGoals`, `filteringRuntimeInfo`, `attackSimAdmin`, `microsoftGraphDataConnectConsent`, `filteringAtpDetonationInfo`, `privacyPortal`, `managedTenants`, `unifiedSimulationMatchedItem`, `unifiedSimulationSummary`, `updateQuarantineMetadata`, `ms365DSuppressionRule`, `purviewDataMapOperation`, `filteringUrlPostClickAction`, `irmUserDefinedDetectionSignal`, `teamsUpdates`, `plannerRosterSensitivityLabel`, `ms365DIncident`, `filteringDelistingMetadata`, `complianceDLPSharePointClassificationExtended`, `microsoftDefenderForIdentityAudit`, `supervisoryReviewDayXInsight`, `defenderExpertsforXDRAdmin`, `cdpEdgeBlockedMessage`, `hostedRpa`, `cdpContentExplorerAggregateRecord`, `cdpHygieneAttachmentInfo`, `cdpHygieneSummary`, `cdpPostMailDeliveryAction`, `cdpEmailFeatures`, `cdpHygieneUrlInfo`, `cdpUrlClick`, `cdpPackageManagerHygieneEvent`, `filteringDocScan`, `timeTravelFilteringDocScan`, `mapgOnboard`, `unknownFutureValue`. Optional.|
|keywordFilter|String|Free text field to search non-indexed properties of the audit log. Optional.|
|serviceFilter|String|The Office 365 service where the activity occurred. Optional.|
|operationFilters|String collection|The name of the user or admin activity. For a description of the most common operations/activities, see [Search the audit log in the Office 365 Protection Center](https://go.microsoft.com/fwlink/p/?LinkId=708432). Optional.|
|userPrincipalNameFilters|String collection|The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, _my_name@my_domain_name_. Optional.|
|ipAddressFilters|String collection|The IP address of the device that was used when the activity was logged. Optional.|
|objectIdFilters|String collection|For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet. Optional.|
|administrativeUnitIdFilters|String collection|Administrative units tagged to an audit log record. Optional.|
|status|microsoft.graph.security.auditLogQueryStatus|Current status of the query. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `cancelled`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [auditLogQuery](../resources/security-auditlogquery.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_auditlogquery_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/auditLog/queries
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilters": [
    "String"
  ],
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-auditlogquery-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-auditlogquery-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-auditlogquery-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-auditlogquery-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-auditlogquery-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-auditlogquery-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-auditlogquery-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-auditlogquery-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.auditLogQuery"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "168ec429-084b-a489-90d8-504a87846305",
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

