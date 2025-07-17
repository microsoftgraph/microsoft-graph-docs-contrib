---
title: "List building objects"
description: "Get a list of building objects and their properties."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# List building objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [building](../resources/building.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "building-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/microsoft.graph.building
```


## Optional query parameters

This method supports `$select`, `$top`, and `$skip` query parameters to help customize the response. Use `$top` to customize the page size. The default page size is 1000. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [building](../resources/building.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_building"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/microsoft.graph.building
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.building"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
    "id": "3e377efd-add0-aa15-d67a-38ad2f81f08e",
    "displayName": "Building 121",
    "geoCoordinates": {
        "latitude": 47.6396,
        "longitude": -122.1281,
        "accuracy": 0,
        "altitude": 0,
        "altitudeAccuracy": 0
    },
    "phone": "+1 425-555-1234",
    "address": {
        "type": null,
        "postOfficeBox": null,
        "street": "1 Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "countryOrRegion": "US",
        "postalCode": "98052"
    },
    "placeId": "3e377efd-add0-aa15-d67a-38ad2f81f08e",
    "resourceLinks": [],
    "tags": [
        "engineering",
        "north-campus"
    ],
    "isWheelChairAccessible": true,
    "label": "Main Engineering Hub",
    "hasWiFi": true
    }
  ]
}
```

