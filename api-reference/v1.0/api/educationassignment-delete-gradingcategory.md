---
title: "Remove gradingCategory"
description: "Remove gradingCategory from the assignment."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Remove gradingCategory

Namespace: microsoft.graph

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

Don't supply a request body for this method.

## Response
If successful, this method returns a `204` successful response code.

## Example

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070", "c2eeaaf2-766c-4b90-9a17-61625bc5a47d"],
  "name": "delete_gradingCategories"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/c2eeaaf2-766c-4b90-9a17-61625bc5a47d/gradingCategory/$ref

```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
