---
title: "Update customAppScope"
description: "Update an existing customAppScope object of an RBAC provider."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Update customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [customAppScope](../resources/customappscope.md) object of an RBAC provider.

Currently only the Exchange Online RBAC provider is supported.

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

<!--### For an Exchange Online provider-->

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.ReadWrite.Exchange   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

For an Exchange Online provider:

<!-- { "blockType": "ignored" } -->
```http
PATCH /roleManagement/exchange/customAppScopes/{id}
```

## Request headers

| Name | Description |
|:---- |:----------- |
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

<!--### Example 1: Update an existing custom app scope object for Exchange Online Provider-->

### Request

The following example shows how to update an existing **customAppScope** of an Exchange Online provider.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_customAppScope_ExchangeOnlineProvider",
  "sampleKeys": ["d101e64d-4684-4970-ba7b-735b6b27628f"]
}
-->
```http
PATCH https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes/d101e64d-4684-4970-ba7b-735b6b27628f
Content-type: application/json

{
    "customAttributes": {
        "RecipientFilter": "City -eq 'Seattle'"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-customappscope-exchangeonlineprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-customappscope-exchangeonlineprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-customappscope-exchangeonlineprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-customappscope-exchangeonlineprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-customappscope-exchangeonlineprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
