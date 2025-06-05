---
title: "Update room"
description: "Update the properties of a room object."
author: mattpennathe3rd
ms.date: 06/03/2025
ms.localizationpriority: medium
ms.subservice: places
doc_type: apiPageType
---

# Update room

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a room object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "room-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/room-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /room
PATCH /roomList/rooms/{roomId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|parentId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|tags|String collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|emailAddress|String|**TODO: Add Description** Optional.|
|nickname|String|**TODO: Add Description** Required.|
|building|String|**TODO: Add Description** Optional.|
|floorNumber|Int32|**TODO: Add Description** Optional.|
|label|String|**TODO: Add Description** Optional.|
|capacity|Int32|**TODO: Add Description** Optional.|
|bookingType|bookingType|**TODO: Add Description**. The possible values are: `unknown`, `standard`, `reserved`. Optional.|
|audioDeviceName|String|**TODO: Add Description** Optional.|
|videoDeviceName|String|**TODO: Add Description** Optional.|
|displayDeviceName|String|**TODO: Add Description** Optional.|
|floorLabel|String|**TODO: Add Description** Optional.|
|isTeamsEnabled|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [room](../resources/room.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_room"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/room
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.room",
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
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

