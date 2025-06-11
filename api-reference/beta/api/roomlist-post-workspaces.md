---
title: "Create workspace"
description: "Create a new workspace object."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Create workspace

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new workspace object.

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

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|parentId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|tags|String collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|label|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|emailAddress|String|**TODO: Add Description** Optional.|
|nickname|String|**TODO: Add Description** Required.|
|building|String|**TODO: Add Description** Optional.|
|floorNumber|Int32|**TODO: Add Description** Optional.|
|capacity|Int32|**TODO: Add Description** Optional.|
|floorLabel|String|**TODO: Add Description** Optional.|
|displayDeviceName|String|**TODO: Add Description** Optional.|
|mode|[placeMode](../resources/placemode.md)|**TODO: Add Description** Optional.|



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

