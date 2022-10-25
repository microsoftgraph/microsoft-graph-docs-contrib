---
title: "Delete educationAssignment"
description: "Delete an existing assignment. Only teachers within a class can delete assignments."
author: "sharad-sharma-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Delete educationAssignment

Namespace: microsoft.graph

Delete an existing assignment. Only teachers within a class can delete assignments.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)             |
| :------------------------------------- | :------------------------------------------------------ |
| Delegated (work or school account)     | EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported.                                          |
| Application                            | Not Supported.                                          |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /education/classes/{id}/assignments/{id}
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


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["c42f493f-42b4-4e7d-8148-af894cbc518b", "ad8afb28-c138-4ad7-b7f5-a6986c2655a8"],
  "name": "delete_educationassignment_1"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/c42f493f-42b4-4e7d-8148-af894cbc518b/assignments/ad8afb28-c138-4ad7-b7f5-a6986c2655a8
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-educationassignment-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-educationassignment-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-educationassignment-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-educationassignment-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-educationassignment-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-educationassignment-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following is an example of the response. 


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


