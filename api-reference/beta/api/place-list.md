---
title: "List place objects"
description: "Get a list of place objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List place objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of the specified type of **place** objects defined in the tenant, which can be a [desk](../resources/desk.md), [workspace](../resources/workspace.md), [room](../resources/room.md), [section](../resources/section.md), [floor](../resources/floor.md), or [building](../resources/building.md).

For example, you can get all the places within a building or get all the places on a floor.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places
```

Or:

```http
GET /places/{placeType}
```

{placeType} can be any supported place type, such as `microsoft.graph.desk`.

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [place](../resources/place.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_place"
}
-->
``` http
GET https://graph.microsoft.com/beta/places
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.place"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.place",
      "id": "7d752e23-0fb5-7333-be1b-a1ae3d19ac4b",
      "displayName": "String",
      "geoCoordinates": {
        "@odata.type": "microsoft.graph.outlookGeoCoordinates"
      },
      "phone": "String",
      "address": {
        "@odata.type": "microsoft.graph.physicalAddress"
      },
      "placeId": "String",
      "parentId": "String",
      "resourceLinks": [
        {
          "@odata.type": "microsoft.graph.resourceLink"
        }
      ],
      "tags": [
        "String"
      ],
      "isWheelChairAccessible": "Boolean",
      "label": "String"
    }
  ]
}
```

