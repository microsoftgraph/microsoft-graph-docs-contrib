---
title: "Reboot a specific Cloud PC for user"    
description: "Reboot a specific Cloud PC device attributed to the signed-in user."
author: "xinliu22"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Reboot cloudPC for user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reboot a specific [cloudPC](../resources/cloudpc.md) device that is attributed to the signed-in user.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /me/cloudPCs/{id}/reboot
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reboot_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/me/cloudPCs/662009bc-7732-4f6f-8726-25883518ffff/reboot
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
