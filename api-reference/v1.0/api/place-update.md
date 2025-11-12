---
title: "Update place"
description: "Update the properties of place object that can be a building, floor, section, desk, room, workspace, or roomList."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Update place

Namespace: microsoft.graph

Update the properties of [place](../resources/place.md) object that can be a [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [desk](../resources/desk.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [roomList](../resources/roomlist.md). You can identify the place by specifying the **id** property.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/place-update-permissions.md)]

>**Note**: Exchange Admin role is requied to update places.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{id}
```

>**Note:**
> `{id}` is the unique identifier of the [place](../resources/place.md) to update.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Only one instance of a [place](../resources/place.md) resource can be updated at a time. In the request body, use **@odata.type** to specify the type of place and include the properties to update.

> [!NOTE]
> You can't use this API to update the **id**, **placeId**, **emailAddress**, **displayName**, or **bookingType** of a [place](../resources/place.md) object.

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [place](../resources/place.md), including the street, city, state, country or region, and postal code. Optional.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [place](../resources/place.md) location in latitude, longitude, and (optionally) altitude coordinates. Optional.|
|isWheelChairAccessible|Boolean|Indicates whether the [place](../resources/place.md) is wheelchair accessible. Required.|
|label |String|User-defined description of the [place](../resources/place.md). Optional.|
|parentId|String|**id** of a parent [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [place](../resources/place.md). Optional.|
|tags|String collection|Custom tags that are associated with the [place](../resources/place.md) for categorization or filtering. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [place](../resources/place.md) object in the response body.

## Examples

### Example 1: Update a building

The following example shows how to update a **building** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_building"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/e18a8e21-0494-4296-a5bc-f848dba2740d
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.building",
  "tags": ["most popular building"]
}
```


#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.building"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.building",
  "id": "e18a8e21-0494-4296-a5bc-f848dba2740d",
  "placeId": "e18a8e21-0494-4296-a5bc-f848dba2740d",
  "displayName": "MRS",
  "phone": "8801733457",
  "tags": [
    "most popular building"
  ],
  "isWheelChairAccessible": true,
  "label": "this is a building not open to all",
  "hasWiFi": false,
  "geoCoordinates": {
    "latitude": 31.2513263,
    "longitude": 121.3912291,
    "accuracy": null,
    "altitude": null,
    "altitudeAccuracy": null
  },
  "resourceLinks": []
}
```

### Example 2: Update a floor

The following example shows how to update a **floor** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_floor"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/c64205d0-1a2d-4cfe-9012-3f5d668d28ea
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.floor",
  "isWheelChairAccessible": true,
  "sortOrder": 2
}
```


#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.floor"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.floor",
  "id": "c64205d0-1a2d-4cfe-9012-3f5d668d28ea",
  "placeId": "c64205d0-1a2d-4cfe-9012-3f5d668d28ea",
  "displayName": "Floor X",
  "parentId": "be7b53f1-7c63-4533-91d4-52c3ca856afb",
  "isWheelChairAccessible": true,
  "sortOrder": 2,
  "geoCoordinates": {
    "latitude": 0.0,
    "longitude": 0.0,
    "accuracy": null,
    "altitude": null,
    "altitudeAccuracy": null
  }
}
```

### Example 3: Update a section

The following example shows how to update a **section** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_section"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/3e7160bb-75da-4456-ab3c-5ee061f4611a
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.section",
  "label": "discuss area"
}
```



#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.section"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.section",
  "id": "3e7160bb-75da-4456-ab3c-5ee061f4611a",
  "placeId": "3e7160bb-75da-4456-ab3c-5ee061f4611a",
  "displayName": "section_1",
  "parentId": "e30d4c71-95bf-4576-be4f-b6b7a8d2eeb7",
  "isWheelChairAccessible": false,
  "label": "discuss area"
}
```

### Example 4: Update a desk

The following example shows how to update a **desk** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_desk"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/530f7900-8063-4daf-9cc1-168cb3ac26e9
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.desk",
  "mode": {
    "@odata.type": "microsoft.graph.dropInPlaceMode"
  }
}
```



#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.desk"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.desk",
  "id": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
  "placeId": "530f7900-8063-4daf-9cc1-168cb3ac26e9",
  "displayName": "desk 5",
  "parentId": "ca163ae1-14a3-4e2a-8a97-5f82d672186f",
  "isWheelChairAccessible": true,
  "mailboxDetails": {
    "externalDirectoryObjectId": "04c6ff74-9268-41aa-96b5-5637d9f039bf",
    "emailAddress": "desk5ca86f9b61753443541750@contoso.com"
  },
  "mode": {
    "@odata.type": "#microsoft.graph.dropInPlaceMode"
  }
}
```

### Example 5: Update a room

The following example shows how to update a **room** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["cf100@contoso.com"],
  "name": "update_room"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/cf100@contoso.com
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.room",
  "nickname": "Conf Room",
  "building": "1",
  "label": "100",
  "capacity": 50,
  "isWheelChairAccessible": false
}
```



#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places/$entity",
  "@odata.type": "#microsoft.graph.room",
  "id": "3162F1E1-C4C0-604B-51D8-91DA78989EB1",
  "emailAddress": "cf100@contoso.com",
  "displayName": "Conf Room 100",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "latitude": 47.0,
    "longitude": -122.0
  },
  "phone": "555-555-0100",
  "nickname": "Conf Room",
  "label": "100",
  "capacity": 50,
  "building": "1",
  "floorLabel": "1P",
  "floorNumber": 1,
  "isWheelChairAccessible": false,
  "bookingType": "standard",
  "tags": [
    "bean bags"
  ],
  "audioDeviceName": null,
  "videoDeviceName": null,
  "displayDeviceName": "surface hub",
  "placeId": "080ed1a0-7b54-4995-85a5-eeec751786f5"
}
```

### Example 6: Update a workspace

The following example shows how to update a **workspace** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["ws100@contoso.com"],
  "name": "update_workspace"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/ws100@contoso.com
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.workspace",
  "nickname": "Conf Room",
  "building": "1",
  "label": "100",
  "capacity": 50,
  "isWheelChairAccessible": false
}
```



#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places/$entity",
  "@odata.type": "#microsoft.graph.workspace",
  "id": "3162F1E1-C4C0-604B-51D8-91DA78989EB1",
  "emailAddress": "ws100@contoso.com",
  "displayName": "Workspace 100",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "latitude": 47.0,
    "longitude": -122.0
  },
  "phone": "555-555-0100",
  "nickname": "Workspace",
  "label": "100",
  "capacity": 50,
  "building": "1",
  "floorLabel": "1P",
  "floorNumber": 1,
  "isWheelChairAccessible": false,
  "tags": [
    "bean bags"
  ],
  "placeId": "357e8ddc-8af5-4c7c-bc38-ddb3bcfec0d9"
}
```

### Example 7: Update a room list

The following example shows how to update a **roomList** object.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["Building1RroomList@contoso.com"],
  "name": "update_roomlist"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/places/Building1RroomList@contoso.com
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.roomList",
  "displayName": "Building 1",
  "phone": "555-555-0100",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "altitude": null,
    "latitude": 47.0,
    "longitude": -122.0,
    "accuracy": null,
    "altitudeAccuracy": null
  }
}
```



#### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roomList"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#places/$entity",
  "@odata.type": "#microsoft.graph.roomList",
  "id": "DC404124-302A-92AA-F98D-7B4DEB0C1705",
  "displayName": "Building 1",
  "address": {
    "street": "4567 Main Street",
    "city": "Buffalo",
    "state": "NY",
    "postalCode": "98052",
    "countryOrRegion": "USA"
  },
  "geoCoordinates": {
    "altitude": null,
    "latitude": 47.0,
    "longitude": -122.0,
    "accuracy": null,
    "altitudeAccuracy": null
  },
  "phone": "555-555-0100",
  "emailAddress": "bldg1@contoso.com",
  "placeId": "406bd1b2-237c-4710-bda2-8b7900d61b27"
}
```

