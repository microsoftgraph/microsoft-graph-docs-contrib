---
title: "userExperienceAnalyticsBatteryHealthCapacityDetails resource type"
description: "The user experience analytics battery health capacity entity contains count of devices broken down into 3 categories - devices with capacity > 80%, devices with capacity 50-80% and devices with capacity < 50 %.This API provides the count of devices in these 3 categories.."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthCapacityDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health capacity entity contains count of devices broken down into 3 categories - devices with capacity > 80%, devices with capacity 50-80% and devices with capacity < 50 %.This API provides the count of devices in these 3 categories..

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsBatteryHealthCapacityDetails](../api/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails-get.md)|[userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md) object.|
|[Update userExperienceAnalyticsBatteryHealthCapacityDetails](../api/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails-update.md)|[userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health capacity object.|
|activeDevices|Int32|Number of active devices within the tenant. Valid values -2147483648 to 2147483647|
|batteryCapacityGood|Int32|Number of devices whose battery maximum capacity is greater than 80%. Valid values -2147483648 to 2147483647|
|batteryCapacityFair|Int32|Number of devices whose battery maximum capacity is greater than 50% but lesser than 80%. Valid values -2147483648 to 2147483647|
|batteryCapacityPoor|Int32|Number of devices whose battery maximum capacity is lesser than 50%. Valid values -2147483648 to 2147483647|
|lastRefreshedDateTime|DateTimeOffset|Recorded date time of this capacity details instance.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthCapacityDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthCapacityDetails",
  "id": "String (identifier)",
  "activeDevices": 1024,
  "batteryCapacityGood": 1024,
  "batteryCapacityFair": 1024,
  "batteryCapacityPoor": 1024,
  "lastRefreshedDateTime": "String (timestamp)"
}
```
