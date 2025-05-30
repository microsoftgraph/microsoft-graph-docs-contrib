---
title: "Create place"
description: "Create a place object."
ms.localizationpriority: medium
author: "vrod9429"
ms.subservice: "outlook"
doc_type: "apiPageType"
ms.date: 05/29/2025
---

# Create place

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new **place** object in Microsoft Graph. A **place** can represent a desk, workspace, room, section, floor, or building.

## Permissions

|Permission type|Permissions (from least to most privileged)|
|--|--|
|Delegated (work or school account)|Place.ReadWrite.All|
|Application|Place.ReadWrite.All|

## HTTP request

**This should be replaced**
**This should be replaced**
**This should be replaced**
**This should be replaced**
**This should be replaced**

```http
POST /places/{placeType}
```
•	{placeType} can be any supported place type.

## Request headers

|Name|Type|Description|
|--|--|--|
|Authorization|string|Bearer {token}. Required.|
|Content-Type|string|application/json|

## Request body
Supply a JSON representation of the [place](../resources/place.md) object.

## Example

### Request

```http
POST https://graph.microsoft.com/beta/places/desk

Content-Type: application/json
{
  "@odata.type": "microsoft.exchange.locationsAndTime.desk",
  "displayName": "D1",
  "parentId": "S123",
  "mailboxDetails": {
    "emailAddress": "desk1@microsoft.com"
  },
  "mode": {
    "@odata.type": "microsoft.graph.assignedPlaceMode",
    "assignedPersonId": "u123",
    "assignedPersonEmailAddress": "meganb@contoso.com"
  }
}
```

### Response

```http
HTTP/1.1 200 OK
{
  "@odata.type": "#microsoft.exchange.locationsAndTime.desk",
  "id": "D123",
  "placeId": "D123",
  "displayName": "D1",
  "parentId": "S123",
  "mailboxDetails": {
    "emailAddress": "desk1@microsoft.com"
  },
  "mode": {
    "@odata.type": "#microsoft.graph.assignedPlaceMode",
    "assignedPersonId": "u123",
    "assignedPersonEmailAddress": "meganb@contoso.com"
  }
}
```