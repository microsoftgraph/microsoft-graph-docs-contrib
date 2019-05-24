---
title: "Get room"
description: "Retrieve the properties and relationships of room object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Get room

Retrieve the properties and relationships of room object.

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
GET /places/microsoft.graph.rooms
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

If successful, this method returns a `200 OK` response code and the requested [room](../resources.room.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_room"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.room
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.room"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
   "emailAddress": "cf3235@contoso.com",
   "displayName": "Conf Room 32/35 (25)",
   "address": {
       "street": "One Microsoft Way",
       "city": "Redmond",
       "state": "WA",
       "postalCode": "98052",
       "countryOrRegion": "USA",
       },
  "geoCoordinates": {
     "47.640568390488625"
    "-122.1293731033802"
    },
  "phone": "000-000-0000",
  "nickname": "Conf Room",
  "label": "35",
  "capacity": 50,
  "building": 32,
  "floorNumber": 3,
  "isWheelchairAccessible": false,
  "bookingType": "standard",
  "Tags": ["bean bags", "nice view"],
  "audioDeviceName": null,
  "videoDeviceName": null,
  "displayDeviceName": "surface hub"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get room",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
