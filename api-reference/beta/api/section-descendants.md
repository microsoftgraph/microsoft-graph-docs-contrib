---
title: "section: descendants"
description: "Get all the descendants of a specific type under a section."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# section: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [section](../resources/section.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "section-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/section-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

> **Note:** `{placeType}` can be any supported place type such as `microsoft.graph.desk`. A section supports the following descendant types: `microsoft.graph.room`, `microsoft.graph.workspace`, `microsoft.graph.desk`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sectionthis.descendants",
  "sampleKeys": ["3e7160bb-75da-4456-ab3c-5ee061f4611a", "microsoft.graph.desk"]
}
-->
``` http
GET https://graph.microsoft.com/beta/places/3e7160bb-75da-4456-ab3c-5ee061f4611a/descendants/microsoft.graph.desk
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
      "label": "Desk 2",
      "tags": [],
      "mailboxDetails": {
        "emailAddress": "desk2@contoso.com",
        "externalDirectoryObjectId": "d3b84b23-71db-4adc-a916-f0e255a54e5a"
      },
      "resourceLinks": []
    },
    {
      "id": "2dd2s2gg-b444-84rf-c4d1-f9a8342222s3",
      "placeId": "9d7ed313-993f-430b-ae92-03259e24b509",
      "displayName": "D4",
      "parentId": "56d4f8cd-90e6-4b77-bbe4-ebd34e413fd3",
      "label": "Desk 4",
      "tags": [],
      "mailboxDetails": {
        "emailAddress": "desk4@contoso.com",
        "externalDirectoryObjectId": "56f84c36-b541-4add-bcdd-f68d5d15e134"
      },
      "resourceLinks": []
    }
  ]
}
```

