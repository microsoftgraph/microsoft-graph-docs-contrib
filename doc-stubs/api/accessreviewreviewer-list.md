---
title: "List accessReviewReviewers"
description: "Get a list of the accessReviewReviewer objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List accessReviewReviewers
Namespace: microsoft.graph

Get a list of the [accessReviewReviewer](../resources/accessreviewreviewer.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
GET /accessReviews/{accessReviewsId}/reviewers
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

If successful, this method returns a `200 OK` response code and a collection of [accessReviewReviewer](../resources/accessreviewreviewer.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_accessreviewreviewer"
}
-->
``` http
GET https://graph.microsoft.com/beta/accessReviews/{accessReviewsId}/reviewers
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewReviewer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.accessReviewReviewer",
      "id": "da122df9-2df9-da12-f92d-12daf92d12da",
      "displayName": "String",
      "userPrincipalName": "String"
    }
  ]
}
```

