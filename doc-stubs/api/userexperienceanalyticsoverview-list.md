---
title: "List userExperienceAnalyticsOverviews"
description: "Get a list of the userExperienceAnalyticsOverview objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List userExperienceAnalyticsOverviews
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.userExperienceAnalyticsOverview not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsOverview](../resources/userexperienceanalyticsoverview.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_userexperienceanalyticsoverview"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.userExperienceAnalyticsOverview not found
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userExperienceAnalyticsOverview)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

