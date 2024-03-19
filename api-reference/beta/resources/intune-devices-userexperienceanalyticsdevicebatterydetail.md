---
title: "userExperienceAnalyticsDeviceBatteryDetail resource type"
description: "Collection of properties describing the current status of the battery."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceBatteryDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Collection of properties describing the current status of the battery.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|batteryId|String|Uniquely identifies the batteries in a single device.|
|maxCapacityPercentage|Int32|Ratio of current capacity and design capacity of the battery. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647|
|fullBatteryDrainCount|Int32|Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceBatteryDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceBatteryDetail",
  "batteryId": "String",
  "maxCapacityPercentage": 1024,
  "fullBatteryDrainCount": 1024
}
```
