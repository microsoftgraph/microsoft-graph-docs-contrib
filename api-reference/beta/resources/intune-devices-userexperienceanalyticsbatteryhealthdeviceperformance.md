---
title: "userExperienceAnalyticsBatteryHealthDevicePerformance resource type"
description: "The user experience analytics battery health device performance entity contains device level battery information."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsBatteryHealthDevicePerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
|model|String|The model name of the device. Deprecated in favor of DeviceModelName.|
|manufacturer|String|The manufacturer name of the device. Deprecated in favor of DeviceManufacturerName.|
|deviceModelName|String|The model name of the device.|
|deviceManufacturerName|String|The manufacturer name of the device.|
|maxCapacityPercentage|Int32|Ratio of current capacity and design capacity of the battery with the lowest capacity. Unit in percentage and values range from 0-100. Valid values 0 to 2147483647|
|estimatedRuntimeInMinutes|Int32|The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values 0 to 2147483647|
|batteryAgeInDays|Int32|Estimated battery age. Unit in days. Valid values 0 to 2147483647|
|fullBatteryDrainCount|Int32|Number of times the battery has been discharged an amount that equals 100% of its capacity, but not necessarily by discharging it from 100% to 0%. Valid values 0 to 2147483647|
|deviceBatteryCount|Int32|Number of batteries in a user device. Valid values 0 to 2147483647|
|deviceBatteriesDetails|[userExperienceAnalyticsDeviceBatteryDetail](../resources/intune-devices-userexperienceanalyticsdevicebatterydetail.md) collection|Properties (maxCapacity and cycleCount) related to all batteries of the device.|
|deviceBatteryTags|String collection|Tags for computed information on how battery on the device is behaving. E.g. newbattery, batterycapacityred, designcapacityzero, etc.|
|deviceBatteryHealthScore|Int32|A weighted average of a device’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values 0 to 2147483647|
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
  "deviceModelName": "String",
  "deviceManufacturerName": "String",
  "maxCapacityPercentage": 1024,
  "estimatedRuntimeInMinutes": 1024,
  "batteryAgeInDays": 1024,
  "fullBatteryDrainCount": 1024,
  "deviceBatteryCount": 1024,
  "deviceBatteriesDetails": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceBatteryDetail",
      "batteryId": "String",
      "maxCapacityPercentage": 1024,
      "fullBatteryDrainCount": 1024
    }
  ],
  "deviceBatteryTags": [
    "String"
  ],
  "deviceBatteryHealthScore": 1024,
  "healthStatus": "String"
}
```