---
title: "Update room"
description: "Update the properties of room object."
localization_priority: Normal
author: "vrod9429"
ms.prod: "Outlook"
doc_type: "apiPageType"
---

# Update room

Update the properties of room object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Place.ReadWrite.All. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /places/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|audioDeviceName|String||
|bookingType|outlookbookingType||
|building|String||
|capacity|String||
|displayDeviceName|String||
|emailAddress|String||
|floorNumber|Int32||
|isWheelchairAccessible|Boolean||
|label|String||
|nickname|String||
|tags|String||
|videoDeviceName|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [room](../resources/room.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_room"
}-->

```http
JSON2MD ERROR: COULD NOT DETERMINE API PATH
Content-type: application/json

{
  "nickname": "nickname-value",
  "building": "building-value",
  "label": "label-value",
  "bookingType": {
  },
  "capacity": "capacity-value",
  "isWheelchairAccessible": true
}
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
  "nickname": "nickname-value",
  "building": "building-value",
  "label": "label-value",
  "bookingType": {
  },
  "capacity": "capacity-value",
  "isWheelchairAccessible": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update room",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
