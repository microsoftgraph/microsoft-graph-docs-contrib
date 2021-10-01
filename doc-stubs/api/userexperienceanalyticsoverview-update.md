---
title: "Update userExperienceAnalyticsOverview"
description: "Update the properties of a userExperienceAnalyticsOverview object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update userExperienceAnalyticsOverview
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsOverview
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object.

The following table shows the properties that are required when you update the [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md).

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

If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_userexperienceanalyticsoverview"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsOverview
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

