---
title: "Delete educationFeedbackResourceOutcome"
description: "Delete a feedback resource from a submission."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Delete educationFeedbackResourceOutcome

Namespace: microsoft.graph

Delete a [feedback resource](../resources/educationfeedbackresourceoutcome.md) from a submission. This can only be done by a teacher.

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
DELETE /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/outcomes/{outcomeId}
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example
### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "delete_educationfeedbackresourceoutcome"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions/2185e6d7-2924-4ed1-dde1-269f89e29184/outcomes/8fb409c5-570b-4fe5-8473-d3666e61f3a0
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2022-05-06 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete educationFeedbackResourceOutcome",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
