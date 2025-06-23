---
title: "Update room"
description: "Update the properties of a room object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update room

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [room](../resources/room.md) object.

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

|Property|Type|Description|
|:---|:---|:---|
|capacity |Integer |The maximum number of people in the **room** can accommodate. |
|audioDeviceName |String |The name of the audio device that is available in the room. |
|videoDeviceName |String |The name of the video device that is available in the room. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available in the room.
|isTeamsEnabled |Boolean |Whether or not the room is configured with the Microsoft Teams Room system. |
|emailAddress |String |The email address associated with the room. This email address is used for booking. |
|nickname |String |A short, friendly name for the **place**, often used for easier identification or display in UI. |
|building |String |The name or identifier of the building where the **place** (such as a room or a desk) is located. |
|floorNumber |Integer |The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. |
|floorLabel |String |A human-readable label for the floor, such as "Ground Floor". |
|label |String |A custom identifier or tag for the **place**, often used to distinguish it within a floor or section. |
|bookingType |Enum |Specifies how the place can be booked. Possible values are: <br/><br/> <ul><li>standard - Available for general booking</li>
<li>reserved – Reserved for specific users or purposes</li>
<li>unknown – Default or unspecified booking behavior</li>
</ul> |



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
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
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
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "capacity": "Integer",
  "bookingType": "String",
  "audioDeviceName": "String",
  "videoDeviceName": "String",
  "displayDeviceName": "String",
  "floorLabel": "String",
  "isTeamsEnabled": "Boolean"
}
```

