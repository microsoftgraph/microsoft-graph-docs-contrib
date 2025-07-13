---
title: "List section objects"
description: "Get a list of section objects and their properties."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# List section objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [section](../resources/section.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "section-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/section-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{placeType}
```

## Optional query parameters

This method supports the `$select`, `$top`, and `$skip` query parameters to help customize the response. Use `$top` to customize the page size. The default page size is 1000. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [section](../resources/section.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_section",
  "sampleKeys": ["microsoft.graph.section"]
}
-->
``` http
GET https://graph.microsoft.com/beta/places/microsoft.graph.section
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.section)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
      "resourceLinks": []
    }
  ]
}
```
