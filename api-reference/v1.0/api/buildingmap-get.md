---
title: "Get buildingMap"
description: "Get the map of a building in IMDF format."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Get buildingMap

Namespace: microsoft.graph

Get the [map](../resources/buildingmap.md) of a building in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "buildingmap_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{buildingPlaceId}/microsoft.graph.building/map
```
> **Note:** `{buildingPlaceId}` is the unique **placeId** of the [building](../resources/building.md) linked to this map in Places.

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [buildingMap](../resources/buildingmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_buildingmap",
  "sampleKeys": ["30ca79af-ecb7-46c2-a14b-afe264a91543"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.buildingMap"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "placeId": "30ca79af-ecb7-46c2-a14b-afe264a91543",
  "id": "26f04b4f-9ae2-45e3-99d1-393c66d58eb4",
  "properties": "{\"id\": \"26f04b4f-9ae2-45e3-99d1-393c66d58eb4\", \"type\": \"Feature\", \"feature_type\": \"building\", \"geometry\": null, \"properties\": {\"name\": {\"en\": \"San Jose McEnery Convention Center\"}, \"address_id\": \"e105efb7-b0d1-4144-8b8e-72eadf95724f\", \"display_point\": {\"type\": \"Point\", \"coordinates\": [-121.889164, 37.32925]}}}"
}
```

