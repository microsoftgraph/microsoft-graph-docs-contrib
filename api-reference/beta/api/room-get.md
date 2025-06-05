---
title: "Get room"
description: "Read the properties and relationships of a room object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Get room

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a room object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "room-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/room-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /room
GET /roomList/rooms/{roomId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [room](../resources/room.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_room"
}
-->
``` http
GET https://graph.microsoft.com/beta/room
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.room",
    "id": "e3087de3-2ba1-cfb4-3a47-e63ff49f52e8",
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
    "description": "String",
    "resourceLinks": [
      {
        "@odata.type": "microsoft.graph.resourceLink"
      }
    ],
    "tags": [
      "String"
    ],
    "isWheelChairAccessible": "Boolean",
    "emailAddress": "String",
    "nickname": "String",
    "building": "String",
    "floorNumber": "Integer",
    "label": "String",
    "capacity": "Integer",
    "bookingType": "String",
    "audioDeviceName": "String",
    "videoDeviceName": "String",
    "displayDeviceName": "String",
    "floorLabel": "String",
    "isTeamsEnabled": "Boolean"
  }
}
```

