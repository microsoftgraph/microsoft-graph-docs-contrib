---
title: "Create room"
description: "Create a new room object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Create room

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [room](../resources/room.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "roomlist-post-rooms-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/roomlist-post-rooms-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roomList/rooms
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [room](../resources/room.md) object.

You can specify the following properties when you create a **room**.

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the **room**, including the street, city, state, country or region, and postal code. Optional.|
|audioDeviceName|String|The name of the audio device that is available in the [room](../resources/room.md). Optional.|
|bookingType|[bookingType](../resources/room.md#bookingtype-values) |Specifies how the [room](../resources/room.md) can be booked. Possible values are:
<ul><li>**standard** - Available for general booking</li>
<li>**reserved** – Reserved for specific users or purposes</li>
<li>**unknown** – Default or unspecified booking behavior</li></ul>Optional. |
|building|String|The name or identifier of the [building](../resources/building.md) where the [room](../resources/room.md) is located. Optional.|
|capacity|Int32|The maximum number of people in the [room](../resources/room.md) can accommodate. Optional.|
|description|String|User-defined description of the [room](../resources/room.md). (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md). Optional.|
|displayDeviceName|String|The name of the display device (such as a monitor or projector) that is available in the **room**. Optional.|
|displayName|String|The name that is associated with the [room](../resources/room.md). Required.|
|emailAddress|String|The email address associated with the [room](../resources/room.md). This email address is used for booking. Optional.|
|floorLabel|String|A human-readable label for the [floor](../resources/floor.md), such as "Ground Floor". Optional.|
|floorNumber|Int32|The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. Optional.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [room](../resources/room.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isTeamsEnabled|Boolean|Whether or not the [room](../resources/room.md) is configured with the Microsoft Teams Room system. Required.|
|isWheelChairAccessible|Boolean|Whether or not the [room](../resources/room.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|nickname|String|A short, friendly name for the [room](../resources/room.md), often used for easier identification or display in UI. Required.|
|parentId|String|**id** of a parent [floor](../resources/floor.md) or [section](../resources/section.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [room](../resources/room.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [room](../resources/room.md). Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [room](../resources/room.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [room](../resources/room.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|
|videoDeviceName|String|The name of the video device that is available in the [room](../resources/room.md). Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [room](../resources/room.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_room_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/roomList/rooms
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
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
}
-->
``` http
HTTP/1.1 201 Created
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

