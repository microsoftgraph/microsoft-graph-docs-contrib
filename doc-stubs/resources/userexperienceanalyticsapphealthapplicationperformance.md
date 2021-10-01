---
title: "userExperienceAnalyticsAppHealthApplicationPerformance resource type"
description: "The user experience analytics application performance entity contains app performance details."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthApplicationPerformance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user experience analytics application performance entity contains app performance details.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthApplicationPerformances](../api/userexperienceanalyticsapphealthapplicationperformance-list.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) collection|Get a list of the [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) objects and their properties.|
|[Create userExperienceAnalyticsAppHealthApplicationPerformance](../api/userexperienceanalyticsapphealthapplicationperformance-create.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md)|Create a new [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.|
|[Get userExperienceAnalyticsAppHealthApplicationPerformance](../api/userexperienceanalyticsapphealthapplicationperformance-get.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md)|Read the properties and relationships of a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.|
|[Update userExperienceAnalyticsAppHealthApplicationPerformance](../api/userexperienceanalyticsapphealthapplicationperformance-update.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md)|Update the properties of a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.|
|[Delete userExperienceAnalyticsAppHealthApplicationPerformance](../api/userexperienceanalyticsapphealthapplicationperformance-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeDeviceCount|Int32|The number of devices where the app has been active. Valid values -2147483648 to 2147483647|
|allOrgsHealthScore|Double|The median health score of the application across all organizations. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|appCrashCount|Int32|The number of crashes for the app. Valid values -2147483648 to 2147483647|
|appDisplayName|String|The friendly name of the application.|
|appHangCount|Int32|The number of hangs for the app. Valid values -2147483648 to 2147483647|
|appHealthScore|Double|The health score of the app. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|appHealthStatus|String|The overall health status of the app.|
|appName|String|The name of the application.|
|appPublisher|String|The publisher of the application.|
|appUsageDuration|Int32|The total usage time of the application in minutes. Valid values -2147483648 to 2147483647|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|meanTimeToFailureInMinutes|Int32|The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance",
  "id": "String (identifier)",
  "activeDeviceCount": "Integer",
  "allOrgsHealthScore": "Double",
  "appCrashCount": "Integer",
  "appDisplayName": "String",
  "appHangCount": "Integer",
  "appHealthScore": "Double",
  "appHealthStatus": "String",
  "appName": "String",
  "appPublisher": "String",
  "appUsageDuration": "Integer",
  "meanTimeToFailureInMinutes": "Integer"
}
```

