---
title: "Get accessReviewDecision"
description: "Read the properties and relationships of an accessReviewDecision object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get accessReviewDecision
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessReviewDecision](../resources/accessreviewdecision.md) object.

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
GET /accessReviewDecisions/{accessReviewDecisionsId}
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

If successful, this method returns a `200 OK` response code and an [accessReviewDecision](../resources/accessreviewdecision.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accessreviewdecision"
}
-->
``` http
GET https://graph.microsoft.com/beta/accessReviewDecisions/{accessReviewDecisionsId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewDecision"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessReviewDecision",
    "id": "89cdcc10-cc10-89cd-10cc-cd8910cccd89",
    "accessReviewId": "String",
    "reviewedBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "reviewedDateTime": "String (timestamp)",
    "reviewResult": "String",
    "justification": "String",
    "appliedBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "appliedDateTime": "String (timestamp)",
    "applyResult": "String",
    "accessRecommendation": "String"
  }
}
```

