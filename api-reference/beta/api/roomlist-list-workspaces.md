---
title: "List workspace objects"
description: "Get a list of the workspace objects and their properties."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# List workspace objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [workspace](../resources/workspace.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "roomlist-list-workspaces-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/roomlist-list-workspaces-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roomList/workspaces
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

If successful, this method returns a `200 OK` response code and a collection of [workspace](../resources/workspace.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_workspace"
}
-->
``` http
GET https://graph.microsoft.com/beta/roomList/workspaces
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

