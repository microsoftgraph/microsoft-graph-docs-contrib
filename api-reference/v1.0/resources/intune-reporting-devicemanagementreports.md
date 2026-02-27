---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for all reports functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
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
|[getDeviceNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getdevicenoncompliancereport.md)|Stream||
|[getNoncompliantDevicesAndSettingsReport action](../api/intune-reporting-devicemanagementreports-getnoncompliantdevicesandsettingsreport.md)|Stream||
|[getDevicesWithoutCompliancePolicyReport action](../api/intune-reporting-devicemanagementreports-getdeviceswithoutcompliancepolicyreport.md)|Stream||
|[getPolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancereport.md)|Stream||
|[getPolicyNonComplianceMetadata action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancemetadata.md)|Stream||
|[getPolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport.md)|Stream||
|[getSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getsettingnoncompliancereport.md)|Stream||
|[getReportFilters action](../api/intune-reporting-devicemanagementreports-getreportfilters.md)|Stream||
|[getConfigurationPolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getconfigurationpolicynoncompliancesummaryreport.md)|Stream||
|[getConfigurationPolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getconfigurationpolicynoncompliancereport.md)|Stream||
|[getConfigurationSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getconfigurationsettingnoncompliancereport.md)|Stream||
|[getDeviceManagementIntentSettingsReport action](../api/intune-reporting-devicemanagementreports-getdevicemanagementintentsettingsreport.md)|Stream||
|[getDeviceManagementIntentPerSettingContributingProfiles action](../api/intune-reporting-devicemanagementreports-getdevicemanagementintentpersettingcontributingprofiles.md)|Stream||
|[getCompliancePolicyNonComplianceSummaryReport action](../api/intune-reporting-devicemanagementreports-getcompliancepolicynoncompliancesummaryreport.md)|Stream||
|[getCompliancePolicyNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getcompliancepolicynoncompliancereport.md)|Stream||
|[getComplianceSettingNonComplianceReport action](../api/intune-reporting-devicemanagementreports-getcompliancesettingnoncompliancereport.md)|Stream||
|[getCachedReport action](../api/intune-reporting-devicemanagementreports-getcachedreport.md)|Stream||
|[getHistoricalReport action](../api/intune-reporting-devicemanagementreports-gethistoricalreport.md)|Stream||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[deviceManagementExportJob](../resources/intune-reporting-devicemanagementexportjob.md) collection|Entity representing a job to export a report.|

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