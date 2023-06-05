---
title: "Add gradingCategory"
description: "Add a gradingCategory to an assignment."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Add gradingCategory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","452184ea-a358-4a07-92b4-dce44601a612"],
  "name": "create_educationcategory_from_educationclass"
}-->
```http
PUT https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/452184ea-a358-4a07-92b4-dce44601a612/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/fb4a4009-3cc4-4dea-9991-e0a0763659e3"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationcategory-from-educationclass-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationcategory-from-educationclass-javascript-snippets.md)]
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
