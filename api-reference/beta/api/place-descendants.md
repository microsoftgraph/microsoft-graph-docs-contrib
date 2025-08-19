---
title: "place: descendants"
description: "Get all the descendants of a specific type under a place."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# place: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [place](../resources/place.md).

> **Note:**
> This method can't return more than 2,500 places.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.building`, `microsoft.graph.floor`, `microsoft.graph.section`, `microsoft.graph.room`, `microsoft.graph.workspace`, and `microsoft.graph.desk`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [place](../resources/place.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "placethis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/ca163ae1-14a3-4e2a-8a97-5f82d672186f/descendants/microsoft.graph.desk
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/placethisdescendants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.place)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
      "placeId": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
      "displayName": "desk 5",
      "parentId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
      "isWheelChairAccessible": false,
      "mode": {
        "@odata.type": "#microsoft.graph.offlinePlaceMode",
        "reason": "New"
      }
    },
    {
      "id": "57289959-4add-4270-872b-cc93ca099ce5",
      "placeId": "57289959-4add-4270-872b-cc93ca099ce5",
      "displayName": "desk 6",
      "parentId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
      "isWheelChairAccessible": true,
      "mailboxDetails": {
        "externalDirectoryObjectId": "6abaaee5-b796-48d0-be3d-0aa980258321",
        "emailAddress": "desk54a4fce541749088182888@contoso.com"
      },
      "mode": {
        "@odata.type": "#microsoft.graph.reservablePlaceMode"
      }
    }
  ]
}
```

