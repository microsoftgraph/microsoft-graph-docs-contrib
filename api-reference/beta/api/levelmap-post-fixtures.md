---
title: "Create fixtureMap"
description: "Create a new fixtureMap object in IMDF format within a specified floor."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Create fixtureMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fixtureMap](../resources/fixturemap.md) object in IMDF format within a specified floor.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "levelmap-post-fixtures-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/levelmap-post-fixtures-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/fixtures/{fixtureImdfID}
```
> **Note:**
> * `{buildingPlaceId}` is the **placeId** of a [building](../resources/building.md) with which this [fixtureMap](../resources/fixturemap.md) is associated.
> * `{levelImdfId}` is the **id** of the level in the IMDF file.
> * `{fixtureImdfId}` is the **id** of the fixture in the IMDF file.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fixtureMap](../resources/fixturemap.md) object.

You can specify the following properties when you create a **fixtureMap**.

|Property|Type|Description|
|:---|:---|:---|
|placeId|String|Identifier for the [floor](../resources/floor.md) to which this **fixtureMap** belongs. Optional.|
|properties|String|Concatenated key-value pair of all properties of a GeoJSON file for this **fixtureMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Required.|

## Response

If successful, this method returns a `201 Created` response code and a [fixtureMap](../resources/fixturemap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_fixturemap_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures/005eb3b8-c95d-4d35-a8a0-22d3cb4d6002
Content-Type: application/json

{
  "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 01\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fixtureMap"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
  "id": "005eb3b8-c95d-4d35-a8a0-22d3cb4d6002",
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 01\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}"
}
```

