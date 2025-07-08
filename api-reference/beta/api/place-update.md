---
title: "Update place"
description: "Update the properties of a place object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [place](../resources/place.md) object.

You can also use this method to update the following child object types: [building](../resources/building.md), [floor](../resources/floor.md), [section](../resources/section.md), [room](../resources/room.md), [workspace](../resources/workspace.md), or [desk](../resources/desk.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place-update-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /places/{id | placeId | emailAddress}
```

>**Note:**
> * **id** is the unique identifier of the [place](../resources/place.md) to update.
> * **placeId** is a unique alternate identifier of the [place](../resources/place.md) to update.
> * **emailAddress** is the String email address of the mailbox associated with this [place](../resources/place.md).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Only one instance of a [place](../resources/place.md) resource can be updated at a time. In the request body, use `@odata.type` to specify the type of place and include the properties to update.

> [!Note]
> You can't use this API to update the **id**, **placeId**, **emailAddress**, or **bookingType** of a [place](../resources/place.md) object.

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [place](../resources/place.md), including the street, city, state, country or region, and postal code. Optional.|
|description |String|User-defined description of the [place](../resources/place.md). (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Optional.|
|displayName|String|The name that is associated with the [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [place](../resources/place.md) location in latitude, longitude, and (optionally) altitude coordinates. Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [place](../resources/place.md) is wheelchair accessible. Required.|
|parentId|String|**id** of a parent [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [place](../resources/place.md). Read-only. Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [place](../resources/place.md) for categorization or filtering. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [place](../resources/place.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_place"
}
-->

```http
PATCH https://graph.microsoft.com/beta/places/D123
Content-Type: application/json

{
  "@odata.type": "#microsoft.exchange.locationsAndTime.desk",
  "displayName": "Updated Desk 1",
  "displayDeviceName": "Surface monitor",
  "tags": ["AdjustableHeight"]
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
  "@odata.type": "#microsoft.graph.desk",
  "id": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
  "placeId": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
  "displayName": "Updated Desk 1",
  "displayDeviceName": "Surface monitor",
  "tags": [
    "AdjustableHeight"
  ],
  "parentId": "a6b276f3-1215-4614-b4ad-983f7f410416",
  "mode": {
    "@odata.type": "microsoft.graph.assignedPlaceMode",
    "assignedUserId": "79058544-bce5-4224-a754-726b15b8600b"
  }
}
```
