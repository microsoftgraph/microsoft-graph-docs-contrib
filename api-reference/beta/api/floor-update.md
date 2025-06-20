---
title: "Update floor"
description: "Update the properties of a floor object."
author: "MSGraphDocsvTeam"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update floor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [floor](../resources/floor.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "floor-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/floor-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /floor
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
|SortOrder |Integer |Specifies the sort order of the floor. For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. |

## Response

If successful, this method returns a `200 OK` response code and an updated [floor](../resources/floor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_floor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/floor
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.floor",
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
  "sortOrder": "Integer"
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
  "@odata.type": "#microsoft.graph.floor",
  "id": "c8c830fe-938f-bd39-efee-c0d62f43c9cf",
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
  "sortOrder": "Integer"
}
```

