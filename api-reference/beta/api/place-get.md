---
title: "Get place"
description: "Read the properties and relationships of a place object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Get place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [place](../resources/place.md) object.

You can also use this method to read the properties of the following child object types: [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [desk](../resources/desk.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}
```

## Optional query parameters

This method supports $select query parameter to help get specific properties. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [place](../resources/place.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_place"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/0ab8619b-2d82-4a4e-9a87-d1e2a836a120
```

### Response

The following example shows the response that includes a [place](../resources/place.md) object or the list of [place](../resources/place.md) objects.
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
  "value": {
        "@odata.type": "#microsoft.graph.building",
    "id": "0ab8619b-2d82-4a4e-9a87-d1e2a836a120",
    "placeId": "0ab8619b-2d82-4a4e-9a87-d1e2a836a120",
    "displayName": "Building 121",
    "phone": "+1 425-555-1234",
    "parentId": null,
    "tags": [
        "engineering",
        "north-campus"
    ],
    "isWheelChairAccessible": true,
    "label": "Main Engineering Hub",
    "hasWiFi": true,
    "address": {
        "type": null,
        "postOfficeBox": null,
        "street": "1 Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "countryOrRegion": "US",
        "postalCode": "98052"
    },
    "geoCoordinates": {
        "latitude": 47.6396,
        "longitude": -122.1281,
        "accuracy": 0,
        "altitude": 0,
        "altitudeAccuracy": 0
    },
    "resourceLinks": []
  }
}
```

