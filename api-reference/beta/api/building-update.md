---
title: "Update building"
description: "Update the properties of a building object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update building

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a building object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "building-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /building
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [building](../resources/building.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|description|String|User-defined description of the [building](../resources/building.md). (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md). Optional.|
|displayName|String|The name that is associated with the [building](../resources/building.md). Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [building](../resources/building.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|hasWiFi|Boolean|Whether or not the building has WiFi. Required.|
|isWheelChairAccessible|Boolean|Whether or not the [building](../resources/building.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [building](../resources/building.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [building](../resources/building.md). Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [building](../resources/building.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [building](../resources/building.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [building](../resources/building.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_building"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/building
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.building",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "hasWiFi": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.desk"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.building",
  "id": "3e377efd-add0-aa15-d67a-38ad2f81f08e",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "hasWiFi": "Boolean"
}
```

