---
title: "floor: descendants"
description: "Get all the descendants of a specific type under a floor."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# floor: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [floor](../resources/floor.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "floor-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/floor-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.

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
<!-- {
  "blockType": "request",
  "name": "floorthis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/floor/descendants
```


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
      "id": "3ee1d2fd-a744-49ed-a5b3-c0a9647339a6",
      "placeId": "3ee1d2fd-a744-49ed-a5b3-c0a9647339a6",
      "displayName": "D2",
      "parentId": "56d4f8cd-90e6-4b77-bbe4-ebd34e413fd3",
      "description": null,
      "tags": [],
      "mailboxDetails": {
        "emailAddress": "desk2@contoso.com",
        "externalDirectoryObjectId": "xx"
      },
      "resourceLinks": []
    }, 
    {
      "id": "2dd2s2gg-b444-84rf-c4d1-f9a8342222s3",
      "placeId": "3ee1d2fd-a744-49ed-a5b3-c0a9647339a6",
      "displayName": "D4",
      "parentId": "56d4f8cd-90e6-4b77-bbe4-ebd34e413fd3",
      "description": null,
      "tags": [],
      "mailboxDetails": {
        "emailAddress": "desk4@contoso.com",
        "externalDirectoryObjectId": "yy"
      },
      "resourceLinks": []
    }
  ]
}
```

