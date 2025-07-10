---
title: "floor: descendants"
description: "Get all the descendants of a specific type under a floor."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# floor: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [floor](../resources/floor.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "floor-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/floor-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [place](../resources/place.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "floorthis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/5e19bbf6-067c-4a92-9685-1f01545f02e4/descendants/microsoft.graph.section
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.place)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
         "id": "68cb3706-e145-4c54-9488-c2b6214565e5",
            "placeId": "68cb3706-e145-4c54-9488-c2b6214565e5",
            "displayName": "Tech support Section 1",
            "phone": "+1 425-555-1234",
            "parentId": "5e19bbf6-067c-4a92-9685-1f01545f02e4",
            "tags": [
                "Tech Support", 
                "North-Side"
            ],
            "isWheelChairAccessible": false,
            "label": "This section is dedicated to tech support.",
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
                "latitude": 47.639611,
                "longitude": -122.128011,
                "accuracy": 0,
                "altitude": 0,
                "altitudeAccuracy": 0
            },
            "resourceLinks": [ ]
    }, 
    {
       "id": "f7de7265-e420-47b4-9d49-28d728716241",
            "placeId": "f7de7265-e420-47b4-9d49-28d728716241",
            "displayName": "Engineering design section",
            "phone": "+1 425-555-1234",
            "parentId": "5e19bbf6-067c-4a92-9685-1f01545f02e4",
            "tags": [
                "Engineering", 
                "East-Side"
            ],
            "isWheelChairAccessible": false,
            "label": "This section is dedicated to engineering design.",
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
                "latitude": 47.639611,
                "longitude": -122.128011,
                "accuracy": 0,
                "altitude": 0,
                "altitudeAccuracy": 0
            },
            "resourceLinks": [ ]

    }
  ]
}
```

