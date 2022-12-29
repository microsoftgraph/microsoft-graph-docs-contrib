---
title: "userExperienceAnalyticsBatteryHealthDeviceAppImpact resource type"
description: "The user experience analytics battery health device app impact entity contains battery usage related information at an app level for a given device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthDeviceAppImpact resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health device app impact entity contains battery usage related information at an app level for a given device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthDeviceAppImpacts](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact-list.md)|[userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthDeviceAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact-get.md)|[userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) object.|
|[Create userExperienceAnalyticsBatteryHealthDeviceAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact-create.md)|[userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md)|Create a new [userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthDeviceAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md).|
|[Update userExperienceAnalyticsBatteryHealthDeviceAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact-update.md)|[userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthDeviceAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceappimpact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery device app impact object.|
|deviceId|String|The unique identifier of the device, Intune DeviceID or SCCM device id.|
|appName|String|App name. Eg: oltk.exe|
|appDisplayName|String|User friendly display name for the app. Eg: Outlook|
|appPublisher|String|App publisher. Eg: Microsoft Corporation|
|isForegroundApp|Boolean|true if the user had active interaction with the app.|
|batteryUsagePercentage|Double|The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthDeviceAppImpact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthDeviceAppImpact",
  "id": "String (identifier)",
  "deviceId": "String",
  "appName": "String",
  "appDisplayName": "String",
  "appPublisher": "String",
  "isForegroundApp": true,
  "batteryUsagePercentage": "4.2"
}
```
