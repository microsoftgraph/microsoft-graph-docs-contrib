---
title: "Update floor"
description: "Update the properties of a floor object."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Update floor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [floor](../resources/floor.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "floor-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/floor-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{id}
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
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [floor](../resources/floor.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|displayName|String|The name that is associated with the [floor](../resources/floor.md). Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [floor](../resources/floor.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [floor](../resources/floor.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|label |String|User-defined description of the [floor](../resources/floor.md). Inherited from [place](../resources/place.md). Optional.|
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [floor](../resources/floor.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [floor](../resources/floor.md). Read-only. Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [floor](../resources/floor.md). Inherited from [place](../resources/place.md). Required.|
|sortOrder |Integer |Specifies the sort order of the [floor](../resources/floor.md). For example, a floor might be named "Lobby" with a sort order of 0 to show this floor first in ordered lists. Optional. |
|tags|String collection|Custom tags that are associated with the [floor](../resources/floor.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [floor](../resources/floor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_floor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/places/5e19bbf6-067c-4a92-9685-1f01545f02e4
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.floor",
  "displayName": "First Floor",
  "isWheelChairAccessible": true
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
  "@odata.type": "#microsoft.graph.floor",
    "id": "5e19bbf6-067c-4a92-9685-1f01545f02e4",
    "placeId": "5e19bbf6-067c-4a92-9685-1f01545f02e4",
    "displayName": "First Floor",
    "phone": "+1 425-555-1234",
    "parentId": "e18a8e21-0494-4296-a5bc-f848dba2740d",
    "tags": [
        "First floor",
    ],
    "isWheelChairAccessible": true,
    "label": "First floor.",
    "sortOrder": 1,
         "address": {
        "type": null,
        "postOfficeBox": null,
        "street": "1 Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "countryOrRegion": "US",
        "postalCode": "98052"
    },
    "geoCoordinates": {
        "latitude": 40.6396,
        "longitude": -120.128,
        "accuracy": 0,
        "altitude": 0,
        "altitudeAccuracy": 0
    },
    "resourceLinks": [ ]
}
```

