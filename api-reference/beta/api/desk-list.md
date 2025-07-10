---
title: "List desk objects"
description: "Get a list of desk objects and their properties."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# List desk objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [desk](../resources/desk.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "desk-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/desk-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{placeType}
```
> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.
> 
## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [desk](../resources/desk.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_desk"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/microsoft.graph.desk
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
  "value": [
    {
    "@odata.type": "#microsoft.graph.desk",
    "id": "fa1e9144-b4ba-4e53-9186-2ef453f4017f",
    "placeId": "fa1e9144-b4ba-4e53-9186-2ef453f4017f",
    "displayName": "Desk 1",
    "phone": "+1 425-555-1234",
    "parentId": "f7de7265-e420-47b4-9d49-28d728716241",
    "tags": [
        "HeightAdjustable",
        "Docking System",
    ],
    "isWheelChairAccessible": false,
    "label": "Desk 1 in engineering section",
    "displayDeviceName": "Samsung Monitor",
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

  ]
}
```

