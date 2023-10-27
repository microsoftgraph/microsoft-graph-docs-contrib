---
title: "userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails resource type"
description: "The user experience analytics application performance entity contains application performance by application version details."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics application performance entity contains application performance by application version details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetailses](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails-list.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) objects.|
|[Get userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails-get.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) object.|
|[Create userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails-create.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md)|Create a new [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) object.|
|[Delete userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md).|
|[Update userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails-update.md)|[userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md)|Update the properties of a [userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyappversiondetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics application performance by application version details object. Supports: $select, $OrderBy. Read-only.|
|deviceCountWithCrashes|Int32|The total number of devices that have reported one or more application crashes for this application and version. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|isMostUsedVersion|Boolean|When TRUE, indicates the version of application is the most used version for that application. When FALSE, indicates the version is not the most used version. FALSE by default. Supports: $select, $OrderBy. Read-only.|
|isLatestUsedVersion|Boolean|When TRUE, indicates the version of application is the latest version for that application that is in use. When FALSE, indicates the version is not the latest version. FALSE by default. Supports: $select, $OrderBy.|
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
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails",
  "id": "String (identifier)",
  "deviceCountWithCrashes": 1024,
  "isMostUsedVersion": true,
  "isLatestUsedVersion": true,
  "appName": "String",
  "appDisplayName": "String",
  "appPublisher": "String",
  "appVersion": "String",
  "appCrashCount": 1024
}
```
