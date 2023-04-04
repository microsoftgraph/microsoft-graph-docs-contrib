---
title: "userExperienceAnalyticsBatteryHealthOsPerformance resource type"
description: "The user experience analytics battery health os performance entity contains battery related information for all operating system versions in their organization."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthOsPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health os performance entity contains battery related information for all operating system versions in their organization.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthOsPerformances](../api/intune-devices-userexperienceanalyticsbatteryhealthosperformance-list.md)|[userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthOsPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthosperformance-get.md)|[userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object.|
|[Create userExperienceAnalyticsBatteryHealthOsPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthosperformance-create.md)|[userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md)|Create a new [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthOsPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthosperformance-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md).|
|[Update userExperienceAnalyticsBatteryHealthOsPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthosperformance-update.md)|[userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health os performance object.|
|activeDevices|Int32|Number of active devices for that os version. Valid values -2147483648 to 2147483647|
|osVersion|String|Version of the operating system.|
|osBuildNumber|String|Build number of the operating system.|
|averageMaxCapacityPercentage|Int32|The mean of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647|
|averageEstimatedRuntimeInMinutes|Int32|The mean of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values -2147483648 to 2147483647|
|averageBatteryAgeInDays|Int32|The mean of the battery age for all devices running a particular operating system version in a tenant. Unit in days. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthOsPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthOsPerformance",
  "id": "String (identifier)",
  "activeDevices": 1024,
  "osVersion": "String",
  "osBuildNumber": "String",
  "averageMaxCapacityPercentage": 1024,
  "averageEstimatedRuntimeInMinutes": 1024,
  "averageBatteryAgeInDays": 1024
}
```
