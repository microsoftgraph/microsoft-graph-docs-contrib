---
title: "Add gradingCategory"
description: "Add gradingCategory to the assignments."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Add gradingCategory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds gradingCategory to an [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

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
PUT /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
```
{
    "@odata.id": ".../education/classes/{classId}/assignmentSettings/gradingCategories/{gradingCategoryId}"
}
```

## Response
If successful, this method returns a `204` successful response code with no content in the response body.

## Example

### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["9a5e4047-c1dc-4243-9628-580d3c64b80c"],
  "name": "create_educationcategory_from_educationclass"
}-->
```http
PUT https://graph.microsoft.com/beta/education/classes/9a5e4047-c1dc-4243-9628-580d3c64b80c/assignmentCategories/$ref
Content-type: application/json
```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gradingCategory"
} -->
```http
HTTP/1.1 204 No Content
```