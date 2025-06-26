---
title: "Create workspace"
description: "Create a new workspace object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create workspace

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workspace](../resources/workspace.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "roomlist-post-workspaces-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/roomlist-post-workspaces-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roomList/workspaces
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [workspace](../resources/workspace.md) object.

You can specify the following properties when creating a **workspace**.

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [place](../resources/place.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|building|String|The name or identifier of the building where the [workspace](../resources/workspace.md) is located. Optional.|
|capacity|Int32|The maximum number of individual desks within a [workspace](../resources/workspace.md). Optional.|
|description|String|User-defined description of the [workspace](../resources/workspace.md). (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md). Optional.|
|displayDeviceName|String|The name of the display device (such as a monitor or projector) that is available in the [workspace](../resources/workspace.md). Optional.|
|displayName|String|The name that is associated with the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Required.|
|emailAddress|String|The email address that is associated with the [workspace](../resources/workspace.md). This email address is used for booking. Optional.|
|floorLabel|String|A human-readable label for the [floor](../resources/floor.md), such as "Ground Floor". Optional.|
|floorNumber|Int32|The numeric floor level within the building. For example, 1 for first floor, 2 for second floor, and so on. Optional.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [workspace](../resources/workspace.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [workspace](../resources/workspace.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|mode|[placeMode](../resources/placemode.md)|The mode for a [workspace](../resources/workspace.md). We support 3 modes:
<ul><li>**bookable** - Workspaces that can be booked in advance using desk pool reservation tools</li>
<li>**walkup** - First come, first serve workspaces. As soon as you plug in to a peripheral on one of the desks in the workspace, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>**offline** - Workspaces that are taken down for maintenance or marked as not bookable</li></ul> Optional.|
|nickname|String|A short, friendly name for the [workspace](../resources/workspace.md), often used for easier identification or display in the UI. Required.|
|parentId|String|**id** of a parent [section](../resources/section.md) or [floor](../resources/floor.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [workspace](../resources/workspace.md). Read-only. Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [workspace](../resources/workspace.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [workspace](../resources/workspace.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|

## Response

If successful, this method returns a `201 Created` response code and a [workspace](../resources/workspace.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_workspace_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/roomList/workspaces
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.workspace",
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
  "floorLabel": "String",
  "displayDeviceName": "String",
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.workspace",
  "id": "96f5b1a5-cb16-2d10-bbd5-0a123ef6610c",
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
  "floorLabel": "String",
  "displayDeviceName": "String",
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

