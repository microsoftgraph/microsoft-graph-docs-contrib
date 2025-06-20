---
title: "building: descendants"
description: "Returns a list of place objects whose parent is the specified building."
author: "MSGraphDocsvTeam"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# building: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns a list of [place](../resources/place.md) objects whose parent is the specified [building](../resources/building.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "building-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /building/descendants
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [place](../resources/place.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "buildingthis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/building/descendants
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.place)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.place",
      "id": "String (identifier)",
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
      "label": "String"
    }
  ]
}
```

