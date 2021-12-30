---
title: "List accessReviewInstances"
description: "Get a list of the accessReviewInstance objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List accessReviewInstances
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.

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
GET /user/pendingAccessReviewInstances
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

If successful, this method returns a `200 OK` response code and a collection of [accessReviewInstance](../resources/accessreviewinstance.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_accessreviewinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/pendingAccessReviewInstances
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.accessReviewInstance",
      "id": "1cf21beb-1beb-1cf2-eb1b-f21ceb1bf21c",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "errors": [
        {
          "@odata.type": "microsoft.graph.accessReviewError"
        }
      ],
      "status": "String",
      "scope": {
        "@odata.type": "microsoft.graph.accessReviewScope"
      },
      "reviewers": [
        {
          "@odata.type": "microsoft.graph.accessReviewReviewerScope"
        }
      ],
      "fallbackReviewers": [
        {
          "@odata.type": "microsoft.graph.accessReviewReviewerScope"
        }
      ],
      "customData": {
        "@odata.type": "microsoft.graph.accessReviewCustomData"
      },
      "isDraft": "Boolean"
    }
  ]
}
```

