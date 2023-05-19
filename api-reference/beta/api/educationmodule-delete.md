---
title: "Delete educationModule"
description: "Delete an existing module. Only teachers within a class can delete modules."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Delete educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an existing module. Only teachers within a class can delete modules.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)             |
| :------------------------------------- | :------------------------------------------------------ |
| Delegated (work or school account)     | TBD |
| Delegated (personal Microsoft account) | Not Supported.                                          |
| Application                            | TBD |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /education/classes/{id}/modules/{id}
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_educationmodule_1"
}-->

```http
DELETE https://graph.microsoft.com/beta/education/classes/0b78e924-9623-49d8-b444-23bfabafa4fe/modules/88841717-9288-43ee-8c23-b6010ff114ba
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
