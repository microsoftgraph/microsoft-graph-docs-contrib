---
title: "Update fixtureMap"
description: "Update the properties of a fixtureMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Update fixtureMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [fixtureMap](../resources/fixturemap.md) object in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fixturemap-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fixturemap-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/fixture/{fixtureImdfID}
```

{buildingPlaceId} – **id** of a building with which this [fixturemap](../resources/fixturemap.md) is associated

{levelImdfId} - **id** of the level in the IMDF file

{fixtureImdfID} - **id** of the fixture in the IMDF file 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **fixtureMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|Identifier for the [floor](./floor.md) to which this **fixtureMap** belongs. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fixtureMap](../resources/fixturemap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_fixturemap"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/building/map/levels/{levelMapId}/fixtures/{fixtureMapId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fixtureMap",
  "id": "87757cea-30f2-43f7-1ddb-7d669684b6e8",
  "properties": "String",
  "placeId": "String"
}
```

