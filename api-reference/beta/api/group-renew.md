---
title: "group: renew"
description: "Renews a group's expiration. When a group is renewed, the group expiration is extended by the number of days defined in the policy."
ms.localizationpriority: medium
author: "psaffaie"
ms.prod: "groups"
doc_type: apiPageType
---

# group: renew

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Renews a group's expiration. When a group is renewed, the group expiration is extended by the number of days defined in the policy.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)    |
| :------------------------------------- | :--------------------------------------------- |
| Delegated (work or school account)     | Group.ReadWrite.All or Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported                                  |
| Application                            | Group.ReadWrite.All or Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/renew
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "group_renew"
}-->

```http
POST https://graph.microsoft.com/beta/groups/{id}/renew
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/group-renew-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/group-renew-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/group-renew-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/group-renew-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/group-renew-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/group-renew-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
