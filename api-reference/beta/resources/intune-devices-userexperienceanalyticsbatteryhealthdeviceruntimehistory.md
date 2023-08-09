---
title: "userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory resource type"
description: "The user experience analytics battery health runtime history entity contains the trend of runtime of a device over a period of 30 days"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health runtime history entity contains the trend of runtime of a device over a period of 30 days

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthDeviceRuntimeHistories](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory-list.md)|[userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory-get.md)|[userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) object.|
|[Create userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory-create.md)|[userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md)|Create a new [userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md).|
|[Update userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../api/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory-update.md)|[userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory](../resources/intune-devices-userexperienceanalyticsbatteryhealthdeviceruntimehistory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health runtime object.|
|deviceId|String|The unique identifier of the device, Intune DeviceID or SCCM device id.|
|runtimeDateTime|String|The datetime for the instance of runtime history.|
|estimatedRuntimeInMinutes|Int32|The estimated runtime of the device when the battery is fully charged. Unit in minutes. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory",
  "id": "String (identifier)",
  "deviceId": "String",
  "runtimeDateTime": "String",
  "estimatedRuntimeInMinutes": 1024
}
```
