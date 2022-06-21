---
title: "Troubleshoot a specific Cloud PC for user"
description: "Troubleshoot a specific Cloud PC device attributed to the signed-in user. Use this API to check the health status of the Cloud PC and the session host."
author: "xinliu22"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Troubleshoot cloudPc for user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Troubleshoot a specific [cloudPC](../resources/cloudpc.md) device that is attributed to the signed-in user. Use this API to check the health status of the Cloud PC and the session host.

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
POST /me/cloudPCs/{id}/troubleshoot
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
  "name": "troubleshoot_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/me/cloudPCs/ff4eb6ab-d56a-4edf-90c1-baaec8dd6032/troubleshoot
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
