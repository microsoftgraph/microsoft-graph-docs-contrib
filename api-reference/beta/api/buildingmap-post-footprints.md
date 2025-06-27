---
title: "Create footprintMap"
description: "Create a new footprintMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create footprintMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [footprintMap](../resources/footprintmap.md) object in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "buildingmap-post-footprints-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-post-footprints-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /building/map/footprints
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [footprintMap](../resources/footprintmap.md) object.

You can specify the following properties when creating a **footprintMap**.

|Property|Type|Description|
|:---|:---|:---|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **footprintMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [footprintMap](../resources/footprintmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_footprintmap_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/building/map/footprints
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.footprintMap",
  "properties": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.footprintMap"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.footprintMap",
  "id": "717fdba4-a635-8fd0-c1e8-f435bc14a878",
  "properties": "String"
}
```

