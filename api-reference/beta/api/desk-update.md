---
title: "Update desk"
description: "Update the properties of a desk object."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update desk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [desk](../resources/desk.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "desk-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/desk-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /desk
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
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [desk](../resources/desk.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|description |String |User-defined description of the [desk](../resources/desk.md). (This property is referred to as **label** in the Places PowerShell cmdlet and on Places version 1 objects.) Inherited from [place](../resources/place.md). Optional.|
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the desk. Optional. |
|displayName|String|The name that is associated with the [desk](../resources/desk.md). Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [desk](../resources/desk.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [desk](../resources/desk.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|mailboxDetails |mailboxDetails |The mailbox object-ids and email address that are associated with the desk. Optional.|
|mode |[placeMode](../resources/placemode.md) |The mode of the desk. We support 4 modes:
<ul><li>**assigned** - Desks that are assigned to a user</li>
<li>**bookable** - Desks that can be booked in advance using desk reservation tools</li>
<li>**walkup** - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>**offline** - Desk that are taken down for maintenance or marked as not bookable.</li></ul> Optional. |
|parentId|String|**id** of a parent [place](../resources/place.md). Inherited from [place](../resources/place.md). Optional.|
|phone|String|The phone number of the [desk](../resources/desk.md). Inherited from [place](../resources/place.md). Optional.|
|placeId|String|An alternate immutable unique identifier of the [desk](../resources/desk.md). Read-only. Inherited from [place](../resources/place.md). Optional. |
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|A set of links to external resources that are associated with the [desk](../resources/desk.md). Inherited from [place](../resources/place.md). Required.|
|tags|String collection|Custom tags that are associated with the [desk](../resources/desk.md) for categorization or filtering. Inherited from [place](../resources/place.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [desk](../resources/desk.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_desk"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/desk
Content-Type: application/json

{
"@odata.type": "#microsoft.exchange.locationsAndTime.desk",
  "displayName": "Updated Desk 1",
  "displayDeviceName": "Samsung monitor",
  "tags": ["AdjustableHeight"]
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
  "@odata.type": "#microsoft.exchange.locationsAndTime.desk",
  "@odata.type": "#microsoft.graph.desk",
      "id": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
      "placeId": "69b2309c-4ded-40b2-9e15-dd9841fcfd71",
    "displayName": "Updated Desk 1",
    "displayDeviceName": "Samsung monitor",
    "tags": ["AdjustableHeight"],
      "parentId": "a6b276f3-1215-4614-b4ad-983f7f410416",
      "mode": {
        "@odata.type": "microsoft.graph.assignedPlaceMode",
        "assignedUserId": "79058544-bce5-4224-a754-726b15b8600b"
  }
}
```

