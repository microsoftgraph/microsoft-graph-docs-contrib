---
title: "Delete provisioningObjectSummary"
description: "Delete provisioningObjectSummary."
localization_priority: Normal
author: "arvinh@microsoft.com"
ms.prod: "ms.prod"
doc_type: "apiPageType"
---

# Delete provisioningObjectSummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete provisioningObjectSummary.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /auditLogs/directoryProvisioning/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_provisioningobjectsummary"
}-->

```http
DELETE https://graph.microsoft.com/beta/auditLogs/directoryProvisioning/{id}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete provisioningObjectSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->