---
title: "Create buildingMap"
description: "Create a new buildingMap object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create buildingMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [buildingMap](../resources/buildingmap.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "building-post-map-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-post-map-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.buildingMap not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [buildingMap](../resources/buildingmap.md) object.

You can specify the following properties when creating a [buildingMap](../resources/buildingmap.md).

|Property|Type|Description|
|:---|:---|:---|
|properties|String|Contains the concatenated key value pair of all properties of a geojson file for a specific [place](../resources/place.md) type. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|A unique identifier for the [place](../resources/place.md) with which this map is associated. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [buildingMap](../resources/buildingmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_buildingmap_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.buildingMap not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.buildingMap",
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
  "@odata.type": "microsoft.graph.buildingMap"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.buildingMap",
  "id": "fdd0957f-e940-0039-ab5c-e2cfbabf08ba",
  "properties": "String",
  "placeId": "String"
}
```

