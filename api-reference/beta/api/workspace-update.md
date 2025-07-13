---
title: "Update workspace"
description: "Update the properties of a workspace object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update workspace

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workspace](../resources/workspace.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "workspace-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/workspace-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{id}
PATCH /roomList/workspaces/{workspaceId}
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
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [workspace](../resources/workspace.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|building|String|The name or identifier of the building where the [workspace](../resources/workspace.md) is located. Optional.|
|capacity|Int32|The maximum number of individual [desks](../resources/desk.md) within a [workspace](../resources/workspace.md). Optional.|
|displayDeviceName|String|The name of the display device (such as a monitor or projector) that is available in the [workspace](../resources/workspace.md). Optional.|
|displayName|String|The name that is associated with the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Required.|
|emailAddress|String|The email address that is associated with the [workspace](../resources/workspace.md). This email address is used for booking. Optional.|
|floorLabel|String|A human-readable label for the [floor](../resources/floor.md), such as "Ground Floor". Optional.|
|floorNumber|Int32|The numeric floor level within the [building](../resources/building.md). For example, 1 for first floor, 2 for second floor, and so on. Optional.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [workspace](../resources/workspace.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [workspace](../resources/workspace.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|label |String|User-defined description of the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Optional.|
|mode |[placeMode](../resources/placemode.md) |The mode for a [workspace](../resources/workspace.md). We support 3 modes:<ul><li>**reservable** - Workspaces that can be booked in advance using desk pool reservation tools</li><li>**dropIn** - First come, first serve workspaces. As soon as you plug in to a peripheral on one of the desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li><li>**offline** - Workspaces that are taken down for maintenance or marked as not reservable</li></ul> Optional. |
|nickname|String|A short, friendly name for the [workspace](../resources/workspace.md), often used for easier identification or display in the UI. Required.|
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [workspace](../resources/workspace.md). Read-only. Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [workspace](../resources/workspace.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [workspace](../resources/workspace.md) object in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["3162F1E1-C4C0-604B-51D8-91DA78989EB1"],
  "name": "update_workspace"
}-->
```http
PATCH https://graph.microsoft.com/beta/places/3162F1E1-C4C0-604B-51D8-91DA78989EB1
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

### Response

The following example shows the response.

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/$entity",
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
    "latitude": 47,
    "longitude": -122
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
