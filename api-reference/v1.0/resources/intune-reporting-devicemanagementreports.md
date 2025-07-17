---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for all reports functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all reports functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-reporting-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-reporting-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md) object.|
|[getDeviceNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicenoncompliancereport.md)|Stream|Not yet documented|
|[getNoncompliantDevicesAndSettingsReport action](../api/intune-reporting-devicemanagementreports-getnoncompliantdevicesandsettingsreport.md)|Stream|Not yet documented|
|[getDeviceStatusSummaryByCompliacePolicyReport action](../api/intune-reporting-devicemanagementreports-getdevicestatussummarybycompliacepolicyreport.md)|Stream|Not yet documented|
|[getDeviceStatusByCompliacePolicyReport action](../api/intune-reporting-devicemanagementreports-getdevicestatusbycompliacepolicyreport.md)|Stream|Not yet documented|
|[getDeviceStatusSummaryByCompliancePolicySettingsReport action](../api/intune-reporting-devicemanagementreports-getdevicestatussummarybycompliancepolicysettingsreport.md)|Stream|Not yet documented|
|[getDeviceStatusByCompliancePolicySettingReport action](../api/intune-reporting-devicemanagementreports-getdevicestatusbycompliancepolicysettingreport.md)|Stream|Not yet documented|
|[getDevicesStatusByPolicyPlatformComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicesstatusbypolicyplatformcompliancereport.md)|Stream|Not yet documented|
|[getDevicesStatusBySettingReport action](../api/intune-reporting-devicemanagementreports-getdevicesstatusbysettingreport.md)|Stream|Not yet documented|
|[getDevicePoliciesComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicepoliciescompliancereport.md)|Stream|Not yet documented|
|[getDevicePolicySettingsComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicepolicysettingscompliancereport.md)|Stream|Not yet documented|
|[getDevicesWithoutCompliancePolicyReport action](../api/intune-reporting-devicemanagementreports-getdeviceswithoutcompliancepolicyreport.md)|Stream|Not yet documented|
|[getPolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancereport.md)|Stream|Not yet documented|
|[getPolicyNonComplianceMetadata action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancemetadata.md)|Stream|Not yet documented|
|[getPolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport.md)|Stream|Not yet documented|
|[getSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getsettingnoncompliancereport.md)|Stream|Not yet documented|
|[getReportFilters action](../api/intune-reporting-devicemanagementreports-getreportfilters.md)|Stream|Not yet documented|
|[getHistoricalReport action](../api/intune-reporting-devicemanagementreports-gethistoricalreport.md)|Stream|Not yet documented|
|[getAutopilotDeploymentStatus action](../api/intune-reporting-devicemanagementreports-getautopilotdeploymentstatus.md)|Stream|Not yet documented|
|[getConfigurationPolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getconfigurationpolicynoncompliancesummaryreport.md)|Stream|Not yet documented|
|[getConfigurationPolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getconfigurationpolicynoncompliancereport.md)|Stream|Not yet documented|
|[getConfigurationSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getconfigurationsettingnoncompliancereport.md)|Stream|Not yet documented|
|[getDeviceManagementIntentSettingsReport action](../api/intune-reporting-devicemanagementreports-getdevicemanagementintentsettingsreport.md)|Stream|Not yet documented|
|[getDeviceManagementIntentPerSettingContributingProfiles action](../api/intune-reporting-devicemanagementreports-getdevicemanagementintentpersettingcontributingprofiles.md)|Stream|Not yet documented|
|[getCompliancePolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getcompliancepolicynoncompliancesummaryreport.md)|Stream|Not yet documented|
|[getCompliancePolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getcompliancepolicynoncompliancereport.md)|Stream|Not yet documented|
|[getComplianceSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getcompliancesettingnoncompliancereport.md)|Stream|Not yet documented|
|[getCachedReport action](../api/intune-reporting-devicemanagementreports-getcachedreport.md)|Stream|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) collection|Entity representing a job to export a report|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementReports"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementReports",
  "id": "String (identifier)"
}
```
