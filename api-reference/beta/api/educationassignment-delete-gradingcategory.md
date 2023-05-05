---
title: "Remove gradingCategory"
description: "Remove gradingCategory from the assignment."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Remove gradingCategory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [gradingCategory](../resources/educationgradingcategory.md) from an [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response
If successful, this method returns a `204` successful response code.

## Example

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070", "8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01"],
  "name": "delete_gradingCategories"
}-->
```http
DELETE https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0bcb37af-3676-47ef-ae93-8de22ce5ff1d/gradingCategory/$ref
Content-type: application/json
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
