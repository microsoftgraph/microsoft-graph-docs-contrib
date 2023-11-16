---
title: "Add gradingCategory"
description: "Add a gradingCategory to an assignment."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Add gradingCategory

Namespace: microsoft.graph

Adds a [gradingCategory](../resources/educationgradingcategory.md) to an [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

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
In the request body, supply the odata.id of the existing [gradingCategory](../resources/educationgradingcategory.md) object to add to this assignment.

## Response
If successful, this method returns a `204` successful response code with no content in the response body.

## Example

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","452184ea-a358-4a07-92b4-dce44601a612"],
  "name": "create_educationcategory_from_educationclass"
}-->
```http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
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

<!-- uuid: 8fcb5dbd-d5aa-4681-8e31-b001d5168d79
2023-04-19 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add a gradingCategory to an assignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
