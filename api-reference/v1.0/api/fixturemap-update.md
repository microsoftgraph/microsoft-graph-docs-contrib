---
title: "Update fixtureMap"
description: "Update the properties of an existing fixtureMap object in IMDF format on a specified floor, or create one if it doesn't exist."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Update fixtureMap

Namespace: microsoft.graph

Update the properties of an existing [fixtureMap](../resources/fixturemap.md) object in IMDF format on a specified floor, or create one if it doesn't exist.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "fixturemap_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/fixturemap-update-permissions.md)]

> [!NOTE]
> The Exchange Admin role is required to create or update a **fixtureMap**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfId}/fixtures/{fixtureImdfId}
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

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|placeId|String|ID for the [fixtureMap](../resources/fixturemap.md) object. Optional.|
|properties|String|Concatenated key-value pairs of all properties from a GeoJSON file for this **fixtureMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|

## Response
If the update is successful, this method returns a `200 OK` response code and an updated [fixtureMap](../resources/fixturemap.md) object in the response body. If the creation is successful, this method returns a `201 Created` response code and a [fixtureMap](../resources/fixturemap.md) object in the response body.

## Examples

### Example 1: Update an existing fixtureMap

The following example shows how to update an existing [fixtureMap](../resources/fixturemap.md) object.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_fixturemap"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/places/91ac6c16-cda9-4506-b55d-e1f4dac3cbe7/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures/005eb3b8-c95d-4d35-a8a0-22d3cb4d6002
Content-Type: application/json

{
  "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture update\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}"
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fixtureMap"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
  "id": "005eb3b8-c95d-4d35-a8a0-22d3cb4d6002",
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture update\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}"
}
```

### Example 2: Create a fixtureMap if it doesn't exist

The following example shows how to create a new [fixtureMap](../resources/fixturemap.md) object if it doesn't exist.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_fixturemap_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures/005eb3b8-c95d-4d35-a8a0-22d3cb4d6002
Content-Type: application/json

{
  "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
  "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6002\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 01\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]}}}"
}
```

#### Response

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
<!--
{
  "type": "#page.annotation",
  "description": "Update fixtureMap",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.microsoft.graph/places:
      /places/{var}/microsoft.graph.building/map/levels/{var}/fixtures/{var}
      Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.building' on 'place'. Possible issues:
        1) Doc bug where 'microsoft.graph.building' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.building' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'place' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
