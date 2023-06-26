---
title: "userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId resource type"
description: "The user experience analytics application performance entity contains application performance by application version device id."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics application performance entity contains application performance by application version device id.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceIds](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid-list.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) objects.|
|[Get userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid-get.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) object.|
|[Create userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid-create.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md)|Create a new [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) object.|
|[Delete userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md).|
|[Update userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid-update.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md)|Update the properties of a [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondeviceid.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics application performance by application version device id object. Supports: $select, $OrderBy. Read-only.|
|deviceId|String|The Intune device id of the device. Supports: $select, $OrderBy. Read-only.|
|deviceDisplayName|String|The name of the device. Supports: $select, $OrderBy. Read-only.|
|processedDateTime|DateTimeOffset|The date and time when the statistics were last computed. The value cannot be modified and is automatically populated when the statistics are computed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.|
|appName|String|The name of the application.|
|appDisplayName|String|The friendly name of the application.|
|appPublisher|String|The publisher of the application.|
|appVersion|String|The version of the application.|
|appCrashCount|Int32|The number of crashes for the app. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceDisplayName": "String",
  "processedDateTime": "String (timestamp)",
  "appName": "String",
  "appDisplayName": "String",
  "appPublisher": "String",
  "appVersion": "String",
  "appCrashCount": 1024
}
```
