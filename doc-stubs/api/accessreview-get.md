---
title: "Get accessReview"
description: "Read the properties and relationships of an accessReview object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get accessReview
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessReview](../resources/accessreview.md) object.

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
GET /accessReviews/{accessReviewsId}
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

If successful, this method returns a `200 OK` response code and an [accessReview](../resources/accessreview.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accessreview"
}
-->
``` http
GET https://graph.microsoft.com/beta/accessReviews/{accessReviewsId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReview"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessReview",
    "id": "82947f69-7f69-8294-697f-9482697f9482",
    "displayName": "String",
    "startDateTime": "String (timestamp)",
    "endDateTime": "String (timestamp)",
    "status": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "businessFlowTemplateId": "String",
    "reviewerType": "String",
    "description": "String",
    "settings": {
      "@odata.type": "microsoft.graph.accessReviewSettings"
    },
    "reviewedEntity": {
      "@odata.type": "microsoft.graph.identity"
    }
  }
}
```

