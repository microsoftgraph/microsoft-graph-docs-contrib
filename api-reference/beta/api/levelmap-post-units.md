---
title: "Create unitMap"
description: "Create a new unitMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create unitMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [unitMap](../resources/unitmap.md) object in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "levelmap-post-units-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/levelmap-post-units-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/units/{unitImdfID}
```

{buildingPlaceId} – **id** of a building with which this [levelmap](../resources/levelmap.md) is associated.

{levelImdfId}- **id** of the level in the IMDF file.

{unitImdfID}- **id** of the unit in the IMDF file. 


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [unitMap](../resources/unitmap.md) object.

You can specify the following properties when creating a **unitMap**.

|Property|Type|Description|
|:---|:---|:---|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **levelMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|Identifier of the [place](./place.md) (such as a [room](./room.md)) to which this **unitMap** belongs. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [unitMap](../resources/unitmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_unitmap_from_"
}
-->
``` http
PATCH places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/81e9fd76-b34a-45f6-a6dc-1f172f01e849/units/005eb3b8-c95d-4d35-a8a0-22d3cb4d6996
Content-Type: application/json

{
  "placeId": null,
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6996\",\"type\":\"Feature\",\"feature_type\":\"unit\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Create room111111111111\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"category\":\"room\"}}"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unitMap"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "placeId": null,
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6996\",\"type\":\"Feature\",\"feature_type\":\"unit\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Create room111111111111\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"category\":\"room\"}}"
}
```

