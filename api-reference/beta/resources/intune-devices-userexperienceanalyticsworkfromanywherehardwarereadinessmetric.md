---
title: "userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric resource type"
description: "The user experience analytics hardware readiness entity contains account level information about hardware blockers for windows upgrade."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics hardware readiness entity contains account level information about hardware blockers for windows upgrade.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../api/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric-get.md)|[userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md)|Read properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md) object.|
|[Update userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../api/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric-update.md)|[userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md)|Update the properties of a [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics hardware readiness metric object.|
|totalDeviceCount|Int32|The count of total devices in an organization. Valid values -2147483648 to 2147483647|
|upgradeEligibleDeviceCount|Int32|The count of devices in an organization eligible for windows upgrade. Valid values -2147483648 to 2147483647|
|ramCheckFailedPercentage|Double|The percentage of devices for which RAM hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|storageCheckFailedPercentage|Double|The percentage of devices for which storage hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorCoreCountCheckFailedPercentage|Double|The percentage of devices for which processor hardware core count check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorSpeedCheckFailedPercentage|Double|The percentage of devices for which processor hardware speed check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|tpmCheckFailedPercentage|Double|The percentage of devices for which Trusted Platform Module (TPM) hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|secureBootCheckFailedPercentage|Double|The percentage of devices for which secure boot hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorFamilyCheckFailedPercentage|Double|The percentage of devices for which processor hardware family check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processor64BitCheckFailedPercentage|Double|The percentage of devices for which processor hardware 64-bit architecture check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|osCheckFailedPercentage|Double|The percentage of devices for which OS check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric",
  "id": "String (identifier)",
  "totalDeviceCount": 1024,
  "upgradeEligibleDeviceCount": 1024,
  "ramCheckFailedPercentage": "4.2",
  "storageCheckFailedPercentage": "4.2",
  "processorCoreCountCheckFailedPercentage": "4.2",
  "processorSpeedCheckFailedPercentage": "4.2",
  "tpmCheckFailedPercentage": "4.2",
  "secureBootCheckFailedPercentage": "4.2",
  "processorFamilyCheckFailedPercentage": "4.2",
  "processor64BitCheckFailedPercentage": "4.2",
  "osCheckFailedPercentage": "4.2"
}
```



