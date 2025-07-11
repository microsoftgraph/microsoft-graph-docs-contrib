---
title: "Create fixtureMap"
description: "Create a new fixtureMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create fixtureMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fixtureMap](../resources/fixturemap.md) object in IMDF format.

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
PATCH places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/fixture/{fixtureImdfID}
```

{buildingPlaceId} – **id** of a building with which this [levelmap](../resources/levelmap.md) is associated.

{levelImdfId}- **id** of the level in the IMDF file.

{fixtureImdfID}- **id** of the fixture in the IMDF file.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fixtureMap](../resources/fixturemap.md) object.

You can specify the following properties when creating a **fixtureMap**.

|Property|Type|Description|
|:---|:---|:---|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **levelMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|Identifier for the [floor](../resources/floor.md) to which this **levelMap** belongs. Optional.|



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
POST https://graph.microsoft.com/beta/building/map/levels/{levelMapId}/fixtures
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fixtureMap",
  "properties": "String",
  "placeId": "String"
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
  "@odata.type": "#microsoft.graph.fixtureMap",
  "id": "87757cea-30f2-43f7-1ddb-7d669684b6e8",
  "properties": "String",
  "placeId": "String"
}
```

