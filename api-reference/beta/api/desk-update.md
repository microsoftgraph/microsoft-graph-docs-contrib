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
|address|[physicalAddress](../resources/physicaladdress.md)|The physical address of the [desk](../resources/desk.md), including the street, city, state, country or region, and postal code. Inherited from [place](../resources/place.md). Optional.|
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the desk. Optional. |
|displayName|String|The name that is associated with the [desk](../resources/desk.md). Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|Specifies the [desk](../resources/desk.md) location in latitude, longitude, and (optionally) altitude coordinates. Inherited from [place](../resources/place.md). Optional.|
|isWheelChairAccessible|Boolean|Whether or not the [desk](../resources/desk.md) is wheelchair accessible. Inherited from [place](../resources/place.md). Required.|
|label|String|User-defined description of the [desk](../resources/desk.md). Inherited from [place](../resources/place.md). Optional.|
|mailboxDetails |mailboxDetails |The mailbox object-ids and email address that are associated with the desk. Optional.|
|mode |[placeMode](../resources/placemode.md) |The mode of the desk. We support 4 modes: <ul><li>**assigned** - Desks that are assigned to a user</li><li>**bookable** - Desks that can be booked in advance using desk reservation tools</li><li>**dropIn** - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li><li>**offline** - Desk that are taken down for maintenance or marked as not bookable.</li></ul> Optional. |
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
PATCH https://graph.microsoft.com/beta/places/fa1e9144-b4ba-4e53-9186-2ef453f4017f
Content-Type: application/json

{
  "@odata.type": "#microsoft.exchange.locationsAndTime.desk",
  "displayName": "Updated Desk 1",
  "displayDeviceName": "Surface monitor",
  "tags": [
    "AdjustableHeight"
  ]
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
    "id": "fa1e9144-b4ba-4e53-9186-2ef453f4017f",
    "placeId": "fa1e9144-b4ba-4e53-9186-2ef453f4017f",
    "displayName": "Updated Desk 1",
    "phone": "+1 425-555-1234",
    "parentId": "f7de7265-e420-47b4-9d49-28d728716241",
    "tags": [
        " AdjustableHeight",
    ],
    "isWheelChairAccessible": false,
    "label": "Desk 1 in engineering section",
    "displayDeviceName": "Surface monitor",
     "address": {
        "type": null,
        "postOfficeBox": null,
        "street": "1 Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "countryOrRegion": "US",
        "postalCode": "98052"
    },
    "mailboxDetails": {
                "externalDirectoryObjectId": "dfc480de-8f40-44f8-bc8d-6306cea4ab27",
                "emailAddress": "Desk1fa1e9144b4ba4e @M365x42405544.onmicrosoft.com"
            },
    "geoCoordinates": {
        "latitude": 47.6396,
        "longitude": -122.128,
        "accuracy": 0,
        "altitude": 0,
        "altitudeAccuracy": 0
    },
    "resourceLinks": [],
    "mode": {
        "@odata.type": "#microsoft.graph.dropInPlaceMode",
    }
}

```

