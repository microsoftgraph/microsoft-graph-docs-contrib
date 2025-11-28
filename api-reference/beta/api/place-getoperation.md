---
title: "place: getOperation"
description: "Get a placeOperation by ID"
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# place: getOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [placeOperation](../resources/placeoperation.md) by ID.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-getoperation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-getoperation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/getOperation(id='{id}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|id|String|The ID of the place operation. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [placeOperation](../resources/placeoperation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "placethis.getoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/getOperation(id='35842361-d2dd-479f-9f4d-8889a4b0d317')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.placeOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.placeOperation",
    "id": "35842361-d2dd-479f-9f4d-8889a4b0d317",
    "status": "succeeded",
    "progress": {
      "totalPlaceCount": 2,
      "succeededPlaceCount": 2,
      "failedPlaceCount": 0
    },
    "details": [
      {
        "succeededPlace": {
            "@odata.type": "microsoft.graph.building",
            "id": "871047d0-5702-4d80-9b96-0fc2cbaf1a71",
            "displayName": "B01"
        },
        "children": [
            {
                "@odata.type": "microsoft.graph.floor",
                "id": "40c8c3f2-9351-454a-a4fc-e9b2dc89a80d",
                "displayName": "F1",
                "parentId": "871047d0-5702-4d80-9b96-0fc2cbaf1a71"
            }
        ]
      }
    ]
  }
}
```
