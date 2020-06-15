---
title: "List review sets"
description: "List review sets."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# List eDiscovery review sets

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List review sets in an eDiscovery case.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /compliance/ediscovery/cases({id})/reviewSets
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [reviewSet](../resources/ediscovery-reviewset.md) collection in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_reviewset"
}-->

```http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases('6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d')/reviewSets
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases('6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d')/reviewSets

HTTP/1.1 200 OK
[
  "@odata.context": "https://graph.microsoft.com/beta/compliance/ediscovery/$metadata#cases('6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d')/reviewSets",
  "@odata.nextLink": https://graph.microsoft.com/beta/compliance/ediscovery/cases('6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d')/reviewSets?$skipToken=<encodedPageToken>,
  {
      "id": "f6a91542-4ce7-4712-b275-c29545dd8507",
      "displayName": "My Reviewset 1",
      "createdBy": {
          "user": {
              "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
              "displayName": "eDiscovery admin"
          }
      },
      "createdDateTime": "2020-01-16T11:58:27.1408174Z"
  },
  {
      "id": "0d78ec4a-aa91-41ea-8da8-d68b030c168f",
      "displayName": "My Reviewset 2",
      "createdBy": {
          "user": {
              "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
              "displayName": "eDiscovery admin"
          }
      },
      "createdDateTime": "2020-01-16T12:03:32.2038960Z"
  }
]
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete reviewSet",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->