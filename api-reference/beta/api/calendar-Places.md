---
title: "calendar: Places"
description: "Get details about rooms."
localization_priority: Priority
author: "vrod9429"
ms.prod: "outlook"
---

# calendar: Places

Get details about rooms.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Places.Read, Places.ReadWrite    |
|Delegated (personal Microsoft account) | Places.Read, Places.ReadWrite |
|Application | Places.Read, Places.ReadWrite |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET  /places/microsoft.graph.room
GET /places/Microsoft.graph.roomList/{id}/rooms
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a places object in the response body.
##### Request
The following example gets a list of all the rooms in a company.

<!-- {
  "blockType": "ignored",
  "name": "calendar_Places"
}-->
```http
Get https://graph.microsoft.com/v1.0/places/microsoft.graph.room 
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.room",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/places/microsoft.graph.room ",
  "value": [
    {
      "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
      "displayName": "32/Conf Room 35",
      "address": {
        "street": "One Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "postalCode": "98052",
        "countryOrRegion": "USA"
      },
      "geocoordinates": [
         47.640568390488625,
         -122.1293731033802
      ],
      "phone": "425-705-1974",
      "room": {
        "emailAddress": "cf3235@microsoft.com",
        "nickname": "Conf Room",
        "label": "35",
        "capacity": 15,
        "building": 32,
        "floor": 3,
        "isManaged": true,
        "isWheelchairAccessible": false,
        "bookingType": "standard",
        "tags": [
          "bean bags",
          "nice view"
        ],
        "audioDevice": "Teams Enabled",
        "videoDevice": null,
        "displayDevice": "Surface Hub"
      }
    }
  ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "calendar: Places",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

##### Request
The following example gets a list of all the roomlist in a company.

<!-- {
  "blockType": "ignored",
  "name": "calendar_Places"
}-->
```http
Get https://graph.microsoft.com/v1.0/places/microsoft.graph.room 
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.roomlist",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/places/Microsoft.graph.roomList ",
    "value": [
          {
          "id": "3162F1E1-C4C0-604B-51D8-91DA78970B97",
          "displayName": "Puget Sound – Building 32"
          "address": {
            "street": "One Microsoft Way",
            "city": "Redmond",
            "state": "WA",
            "postalCode": "98052",
            "countryOrRegion": "USA"
          },
          "geocoordinates": [
          47.640568390488625,
          -122.1293731033802
          ],
          "phone": "425-705-1974",
          "roomlist": {
          "emailAddress": "rmlistbldg32@microsoft.com",
          }
          "rooms" {
          "nickname": "Conf Room",
          "label": "35",
          "capacity": 15,
          "building": 32,
          "floor": 3,
          "isManaged": true,
          "isWheelchairAccessible": false,
          "bookingType": "standard",
          "tags": ["bean bags", "nice view"],
          "audioDevice": "Teams Enabled",
          "videoDevice": null,
          "displayDevice": "Surface Hub"
      }
    }
  ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "calendar: Places",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
