---
title: "List items"
description: "Retrieve a list of externalitems."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "apiPageType"
---

# List items

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [externalitems](../resources/externalitem.md) or [externalFiles](../resources/externalfile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | ExternalItem.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | ExternalItem.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /external/connections/{id}/items
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalItem](../resources/externalitem.md) or [externalFile](../resources/externalfile.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_items"
}-->

```http
GET https://graph.microsoft.com/beta/connections/contosohr/items
```

<!-- markdownlint-disable MD024 -->
#### Response
<!-- markdownlint-enable MD024 -->

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalItem",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "TSP-228082938",
      "acl": [
        {
          "type": "user",
          "value": "49103559-feac-4575-8b94-254814dfca72",
          "accessType": "deny",
          "identitySource": "Azure Active Directory"
        }
      ],
      "properties": {
        "title": "Error in the payment gateway",
        "priority": 1,
        "assignee": "john@contoso.com"
      },
      "content": "Textual content of the file"
    },
    {
      "id": "TSP-228082939",
      "acl": [
        {
          "type": "user",
          "value": "49103559-feac-4575-8b94-254814dfca72",
          "accessType": "deny",
          "identitySource": "Azure Active Directory"
        }
      ],
      "properties": {
        "title": "Benefits portal error",
        "priority": 1,
        "assignee": "pradeep@contoso.com"
      },
      "content": "Textual content of the file"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List items",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
