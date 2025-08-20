---
title: "List fixtureMap objects"
description: "Get a list of the fixtureMap objects and their properties."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# List fixtureMap objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [fixtures](../fixturemap.md) and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "levelmap-list-fixtures-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/levelmap-list-fixtures-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelMapId}/fixtures
```
> **Note:**
> * `{buildingPlaceId}` is the **placeId** of a [building](../resources/building.md) for which you want to list [fixtureMap](../resources/fixturemap.md).
> * `{levelImdfId}` is the **id** of the level in the IMDF file for which you want to list fixture map.

## Optional query parameters

This method supports the `$select` query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fixtureMap](../resources/fixturemap.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_fixturemap"
}
-->
``` http
GET https://graph.microsoft.com/beta/building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fixtureMap)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "placeId": null,
            "id": "005eb3b8-c95d-4d35-a8a0-22d3cb4d6998",
            "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6998\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 01\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"places_category\":\"desk\"}}"
        },
        {
            "placeId": "67149ec1-4b99-42d4-88a4-d92cd23cb606",
            "id": "005eb3b8-c95d-4d35-a8a0-22d3cb4d6997",
            "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d3cb4d6997\",\"type\":\"Feature\",\"feature_type\":\"fixture\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test Fixture 02\"},\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"places_category\":\"desk\",\"directory_id\":\"67149ec1-4b99-42d4-88a4-d92cd23cb606\"}}"
        }
    ]
}

```

