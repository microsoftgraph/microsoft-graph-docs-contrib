---
title: "Update sectionMap"
description: "Update the properties of a sectionMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Update sectionMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sectionMap](../resources/sectionmap.md) object in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sectionmap-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sectionmap-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/section/{sectionImdfID}
```

{buildingPlaceId} – **id** of a building with which this [sectionmap](../resources/sectionmap.md) is associated

{levelImdfId} - **id** of the level in the IMDF file

{sectionImdfID} - **id** of the section in the IMDF file 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|properties|String|Concatenated key-value pair of all properties of a geojson file for this **sectionMap**. Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|Identifier for the [section](./section.md) to which this **sectionMap** belongs. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [sectionMap](../resources/sectionmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_sectionmap"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/building/map/levels/{levelMapId}/sections/{sectionMapId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sectionMap",
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
  "@odata.type": "#microsoft.graph.sectionMap",
  "id": "739ae398-9151-aa9a-fd26-88de707b452c",
  "properties": "String",
  "placeId": "String"
}
```

