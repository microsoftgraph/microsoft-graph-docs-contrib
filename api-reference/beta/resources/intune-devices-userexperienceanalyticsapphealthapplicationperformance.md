---
title: "userExperienceAnalyticsAppHealthApplicationPerformance resource type"
description: "The user experience analytics applicaiton performance entity contains app performance details."
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthApplicationPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics applicaiton performance entity contains app performance details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthApplicationPerformances](../api/intune-devices-userexperienceanalyticsapphealthapplicationperformance-list.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) objects.|
|[Get userExperienceAnalyticsAppHealthApplicationPerformance](../api/intune-devices-userexperienceanalyticsapphealthapplicationperformance-get.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) object.|
|[Create userExperienceAnalyticsAppHealthApplicationPerformance](../api/intune-devices-userexperienceanalyticsapphealthapplicationperformance-create.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md)|Create a new [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) object.|
|[Delete userExperienceAnalyticsAppHealthApplicationPerformance](../api/intune-devices-userexperienceanalyticsapphealthapplicationperformance-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md).|
|[Update userExperienceAnalyticsAppHealthApplicationPerformance](../api/intune-devices-userexperienceanalyticsapphealthapplicationperformance-update.md)|[userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md)|Update the properties of a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/intune-devices-userexperienceanalyticsapphealthapplicationperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics app performance object.|
|appName|String|The name of the application.|
|appFriendlyName|String|The friendly name of the application.|
|appPublisher|String|The publisher of the application.|
|activeDevices|Int32|The number of devices where the app has been active. Valid values -2147483648 to 2147483647|
|totalAppUsageDuration|Int32|The total usage time of the application in minutes. Valid values -2147483648 to 2147483647|
|totalAppCrashes|Int32|The number of crashes for the app. Valid values -2147483648 to 2147483647|
|totalAppHangs|Int32|The number of hangs for the app. Valid values -2147483648 to 2147483647|
|meanTimeToFailure|Int32|The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647|
|appHealthScore|Double|The health score of the app. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|appHealthStatus|String|The overall health status of the app.|
|allOrgsHealthScore|Double|The median health score of the application across all organizations. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|allOrgsMeanTimeToFailure|Int32|The median mean time to failure across all orgs for the app in minutes. Valid values -2147483648 to 2147483647|
|tenantId|String|The id of the tenant associated with this app object.|
|memaTimeGenerated|String|The time when aggregation was performed in MEMA.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance",
  "id": "String (identifier)",
  "appName": "String",
  "appFriendlyName": "String",
  "appPublisher": "String",
  "activeDevices": 1024,
  "totalAppUsageDuration": 1024,
  "totalAppCrashes": 1024,
  "totalAppHangs": 1024,
  "meanTimeToFailure": 1024,
  "appHealthScore": "4.2",
  "appHealthStatus": "String",
  "allOrgsHealthScore": "4.2",
  "allOrgsMeanTimeToFailure": 1024,
  "tenantId": "String",
  "memaTimeGenerated": "String"
}
```



