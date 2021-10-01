---
title: "Create userExperienceAnalyticsOverview"
description: "Create a new userExperienceAnalyticsOverview object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userExperienceAnalyticsOverview
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object.

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
POST ** Collection URI for microsoft.graph.userExperienceAnalyticsOverview not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|appHealthOverallScore|Int32|The user experience analytics app health overall score.|
|appHealthState|userExperienceAnalyticsHealthState|The current health state of the user experience analytics 'BestPractices' category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|bestPracticesHealthState|userExperienceAnalyticsHealthState|The current health state of the user experience analytics 'BestPractices' category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|bestPracticesOverallScore|Int32|The user experience analytics best practices overall score.|
|deviceBootPerformanceHealthState|userExperienceAnalyticsHealthState|The current health state of the user experience analytics 'BootPerformance' category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|deviceBootPerformanceOverallScore|Int32|The user experience analytics device boot performance overall score.|
|insights|[userExperienceAnalyticsInsight](../resources/userexperienceanalyticsinsight.md) collection|The user experience analytics insights.|
|overallScore|Int32|The user experience analytics overall score.|
|resourcePerformanceHealthState|userExperienceAnalyticsHealthState|The current health state of the user experience analytics 'ResourcePerformance' category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|resourcePerformanceOverallScore|Int32|The user experience analytics resource performance overall score.|
|state|userExperienceAnalyticsHealthState|The current health state of the user experience analytics overview. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|workFromAnywhereHealthState|userExperienceAnalyticsHealthState|The current health state of the user experience analytics 'WorkFromAnywhere' category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|workFromAnywhereOverallScore|Int32|The user experience analytics Work From Anywhere overall score.|



## Response

If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_userexperienceanalyticsoverview_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.userExperienceAnalyticsOverview not found
Content-Type: application/json
Content-length: 673

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsOverview",
  "appHealthOverallScore": "Integer",
  "appHealthState": "String",
  "bestPracticesHealthState": "String",
  "bestPracticesOverallScore": "Integer",
  "deviceBootPerformanceHealthState": "String",
  "deviceBootPerformanceOverallScore": "Integer",
  "insights": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight"
    }
  ],
  "overallScore": "Integer",
  "resourcePerformanceHealthState": "String",
  "resourcePerformanceOverallScore": "Integer",
  "state": "String",
  "workFromAnywhereHealthState": "String",
  "workFromAnywhereOverallScore": "Integer"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userExperienceAnalyticsOverview"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsOverview",
  "id": "5ad30259-0259-5ad3-5902-d35a5902d35a",
  "appHealthOverallScore": "Integer",
  "appHealthState": "String",
  "bestPracticesHealthState": "String",
  "bestPracticesOverallScore": "Integer",
  "deviceBootPerformanceHealthState": "String",
  "deviceBootPerformanceOverallScore": "Integer",
  "insights": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight"
    }
  ],
  "overallScore": "Integer",
  "resourcePerformanceHealthState": "String",
  "resourcePerformanceOverallScore": "Integer",
  "state": "String",
  "workFromAnywhereHealthState": "String",
  "workFromAnywhereOverallScore": "Integer"
}
```

