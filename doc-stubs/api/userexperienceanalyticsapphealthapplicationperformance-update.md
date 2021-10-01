---
title: "Update userExperienceAnalyticsAppHealthApplicationPerformance"
description: "Update the properties of a userExperienceAnalyticsAppHealthApplicationPerformance object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update userExperienceAnalyticsAppHealthApplicationPerformance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/userExperienceAnalyticsAppHealthApplicationPerformance/{userExperienceAnalyticsAppHealthApplicationPerformanceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object.

The following table shows the properties that are required when you update the [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
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
|meanTimeToFailureInMinutes|Int32|The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647|



## Response

If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsAppHealthApplicationPerformance](../resources/userexperienceanalyticsapphealthapplicationperformance.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_userexperienceanalyticsapphealthapplicationperformance"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAppHealthApplicationPerformance/{userExperienceAnalyticsAppHealthApplicationPerformanceId}
Content-Type: application/json
Content-length: 452

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance",
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


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthApplicationPerformance",
  "id": "5c8d722c-722c-5c8d-2c72-8d5c2c728d5c",
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

