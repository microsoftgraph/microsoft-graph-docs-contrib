---
title: "userExperienceAnalyticsBatteryHealthRuntimeDetails resource type"
description: "The user experience analytics battery health runtime entity contains count of devices broken down into 3 categories - devices with runtime > 5 hours, devices with runtime 3-5 hours and devices with runtime < 3 hours.This API provides the count of devices in these 3 categories."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthRuntimeDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health runtime entity contains count of devices broken down into 3 categories - devices with runtime > 5 hours, devices with runtime 3-5 hours and devices with runtime < 3 hours.This API provides the count of devices in these 3 categories.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsBatteryHealthRuntimeDetails](../api/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails-get.md)|[userExperienceAnalyticsBatteryHealthRuntimeDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthRuntimeDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails.md) object.|
|[Update userExperienceAnalyticsBatteryHealthRuntimeDetails](../api/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails-update.md)|[userExperienceAnalyticsBatteryHealthRuntimeDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthRuntimeDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthruntimedetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health runtime object.|
|activeDevices|Int32|Number of active devices within the tenant. Valid values -2147483648 to 2147483647|
|batteryRuntimeGood|Int32|Number of devices  whose active runtime is greater than 5 hours. Valid values -2147483648 to 2147483647|
|batteryRuntimeFair|Int32|Number of devices whose active runtime is greater than 3 hours but lesser than 5 hours. Valid values -2147483648 to 2147483647|
|batteryRuntimePoor|Int32|Number of devices whose active runtime is lesser than 3 hours. Valid values -2147483648 to 2147483647|
|lastRefreshedDateTime|DateTimeOffset|Recorded date time of this runtime details instance.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthRuntimeDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthRuntimeDetails",
  "id": "String (identifier)",
  "activeDevices": 1024,
  "batteryRuntimeGood": 1024,
  "batteryRuntimeFair": 1024,
  "batteryRuntimePoor": 1024,
  "lastRefreshedDateTime": "String (timestamp)"
}
```
