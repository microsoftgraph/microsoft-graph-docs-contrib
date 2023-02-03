---
title: "userExperienceAnalyticsBatteryHealthDevicePerformance resource type"
description: "The user experience analytics battery health device performance entity contains device level battery information."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthDevicePerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health device performance entity contains device level battery information.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthDevicePerformances](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance-list.md)|[userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthDevicePerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance-get.md)|[userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) object.|
|[Create userExperienceAnalyticsBatteryHealthDevicePerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance-create.md)|[userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md)|Create a new [userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthDevicePerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md).|
|[Update userExperienceAnalyticsBatteryHealthDevicePerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance-update.md)|[userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health device performance object.|
|deviceId|String|The unique identifier of the device, Intune DeviceID.|
|deviceName|String|Device friendly name.|
|model|String|The model name of the device.|
|manufacturer|String|The manufacturer name of the device.|
|maxCapacityPercentage|Int32|Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values -2147483648 to 2147483647|
|estimatedRuntimeInMinutes|Int32|The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647|
|batteryAgeInDays|Int32|Estimated battery age. Unit in days. Valid values -2147483648 to 2147483647|
|deviceBatteryHealthScore|Int32|A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The overall battery health status of the device. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthDevicePerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthDevicePerformance",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "model": "String",
  "manufacturer": "String",
  "maxCapacityPercentage": 1024,
  "estimatedRuntimeInMinutes": 1024,
  "batteryAgeInDays": 1024,
  "deviceBatteryHealthScore": 1024,
  "healthStatus": "String"
}
```
