---
title: "Add industryDataActivity"
description: "Add activity by posting to the activity collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add industryDataActivity
Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add activity by posting to the activity collection.

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
POST /external/industryData/runs/{industryDataRunId}/activities/{industryDataRunActivityId}/activity/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.

You can specify the following properties when creating an **industryDataActivity**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the process. Required.|
|readinessStatus|readinessStatus|The state of the process from creation through to ready to do work. The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `204 No Content` response code and an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_industrydataactivity_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/runs/{industryDataRunId}/activities/{industryDataRunActivityId}/activity/$ref
Content-Type: application/json
Content-length: 135

{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivity",
  "displayName": "String",
  "readinessStatus": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.industryDataActivity"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivity",
  "displayName": "String",
  "readinessStatus": "String"
}
```

