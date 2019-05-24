---
title: "Get roomList"
description: "Retrieve the properties and relationships of roomlist object."
localization_priority: Normal
author: "vrod9429"
ms.prod: "Outlook"
doc_type: "apiPageType"
---

# Get roomList

Retrieve the properties and relationships of roomlist object.

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
places/microsoft.graph.roomlist
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

If successful, this method returns a `200 OK` response code and the requested [roomList](../resources/roomlist.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_roomlist"
}-->

```http
GET https://graph.microsoft.com/beta/places/microsoft.graph.roomlist
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roomList"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "DC404124-302A-92AA-F98D-7B4DEB0C1705",
  "displayName": "Building 12",
  "address": {
       "street": "123 Contoso Way",
       "city": "Redmond",
       "state": "WA",
       "postalCode": "98052",
       "countryOrRegion": "USA",
       },
  "geocoordinates": null,
  "phone": null,
  "emailAddress": "bldg12@contoso.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get roomList",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
