---
title: "List rooms"
description: "Retrieve a list of places objects."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# List rooms

Retrieve a list of places objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Places.Read.Shared,Places.ReadWrite.Shared |
| Delegated (personal Microsoft account) | Places.Read.Shared,Places.ReadWrite.Shared |
| Application                            | Places.Read.All,Places.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
JSON2MD ERROR: COULD NOT DETERMINE API PATH
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [places](../resources/places.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_rooms"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist('id')?$expand=Rooms
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.places",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
       "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
       "emailAddress": "rmlistbldg32@microsoft.com",
       "displayName": "Conf Room 32/35 (25)",
       "type": "Room",
       "address": null,
       "geoCoordinates": null,
       "phone": null,
     "rooms": [
         {
         "id": "82be4d29-6e2f-4805-86c7-1dd3fe4db2ba",
         "emailAddress": "room1@contoso.com",
         "address": {
            "street": "123 Contoso Way",
            "city": "Redmond",
            "state": "WA",
            "postalCode": "98052",
            "countryOrRegion": "USA",
          },
        "geocoordinates": {
          "47.640568390488625"
          "-122.1293731033802"
          },
        "phone": "000-000-000",
        "name": "Conf Room",
        "label": "35",
        "capacity": "5",
        "building": "32",
        "floorNumber": "3",
        "isWheelchairAccessible": false,
        "bookingType": "standard",
        "tags": ["bean bags", "nice view"],
        "audioDevice": "Phone",
        "videoDevice": null,
        "displayDevice": null

    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List rooms",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
