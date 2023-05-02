---
title: "List customAppScopes"
description: "Get a list of customAppScope objects for an RBAC provider."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# List customAppScopes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [customAppScope](../resources/customappscope.md) objects for an RBAC provider.

Currently only the Exchange Online RBAC provider is supported.

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

<!--### For an Exchange Online provider-->

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.Read.Exchange, RoleManagement.Read.All, RoleManagement.ReadWrite.Exchange   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

For an Exchange Online provider:

<!-- { "blockType": "ignored" } -->

```http
GET /roleManagement/exchange/customAppScopes
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAppScope](../resources/customappscope.md) objects in the response body.

## Examples

<!--### Example 1: Request all custom app scope objects for Exchange Online Provider-->

### Request

The following example shows how to request all **customAppScope** objects of an Exchange Online provider.

<!-- {
  "blockType": "request",
  "name": "list_customAppScope_ExchangeOnlineProvider"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customAppScope)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/exchange/customAppScopes",
    "value": [
        {
            "id": "a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd",
            "type": "RecipientScope",
            "displayName": "scope 1",
            "customAttributes": {
                "Exclusive": false,
                "RecipientFilter": "City -eq 'Seattle'"
            }
        },
        {
            "id": "0b708633-b2ea-4673-b630-18922c345560",
            "type": "RecipientScope",
            "displayName": "scope 2",
            "customAttributes": {
                "Exclusive": false,
                "RecipientFilter": "ExternalDirectoryObjectId -eq '45ad6645-57a8-4fef-ad2f-ac5bd3de7d7c'"
            }
        }
    ]
}
```
