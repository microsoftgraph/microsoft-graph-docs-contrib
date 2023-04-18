---
title: "Get customAppScope"
description: "Retrieve the properties of a customAppScope object."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Get customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a [customAppScope](../resources/customappscope.md) object.

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

### For an Exchange Online provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.Read.Exchange, RoleManagement.Read.All, RoleManagement.ReadWrite.Exchange   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

Get a role assignment for the Exchange Online provider:

<!-- { "blockType": "ignored" } -->

```http
GET /roleManagement/exchange/customAppScopes/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [customAppScope](../resources/customappscope.md) object in the response body.

## Examples

### Example 1 : Get details of a custom app scope object for Exchange Online Provider

#### Request

The following is an example of the request.

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes/a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAppScope"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/exchange/customAppScopes/$entity",
    "id": "a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd",
    "type": "RecipientScope",
    "displayName": "test1",
    "customAttributes": {
        "Exclusive": false,
        "RecipientFilter": "City -eq 'Seattle'"
    }
}
```