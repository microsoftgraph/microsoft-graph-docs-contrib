---
title: "Get accessReviewInstance"
description: "Read the properties and relationships of an accessReviewInstance object."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Get accessReviewInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.Read.All, AccessReview.ReadWrite.All |

 The signed-in user must also be in a directory role that permits them to read an access review.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/pendingAccessReviewInstances/{accessReviewInstanceId}
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

If successful, this method returns a `200 OK` response code and an [accessReviewInstance](../resources/accessreviewinstance.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accessreviewinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/{accessReviewInstanceId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessReviewInstance",
    "id": "1742e119-e119-1742-19e1-421719e14217",
    "startDateTime": "String (timestamp)",
    "endDateTime": "String (timestamp)",
    "status": "String",
    "scope": {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  }
}
```
