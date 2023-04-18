---
title: "Create customAppScope"
description: "Create a new customAppScope object."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Create customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customAppScope](../resources/customappscope.md) object.

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

### For an Exchange Online provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.ReadWrite.Exchange   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

Create a custom app scope for the Exchange Online provider:

<!-- { "blockType": "ignored" } -->

```http
POST /roleManagement/exchange/customAppScopes
```


## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of a [customAppScope](../resources/customappscope.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [customAppScope](../resources/customappscope.md) object in the response body.

## Examples

### Example 1: Create a custom app scope object with recipient scope type for Exchange Online Provider

#### Request

The following is an example of the request.


```http
POST https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes
Content-type: application/json

{
    "type": "RecipientScope",
    "displayName": "Protected Exec Users",
    "customAttributes": {
        "Exclusive": false,
        "RecipientFilter": "Title -like 'VP*'"
    }
}
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAppScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/exchange/customAppScopes/$entity",
    "id": "ae242973-f38a-471f-bffd-f111451e940b",
    "type": "RecipientScope",
    "displayName": "Protected Exec Users",
    "customAttributes": {
        "Exclusive": false,
        "RecipientFilter": "Title -like 'VP*'"
    }
}
```