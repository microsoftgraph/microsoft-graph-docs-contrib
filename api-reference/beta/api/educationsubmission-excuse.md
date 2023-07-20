---
title: "educationSubmission: Excuse"
description: "Excuse an educationAssigment object."
author: "raghuchekuri"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# educationSubmission: Excuse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Only teachers can perform this action. A teacher wants to mark a submission as excused to indicate that the submission has no further action for the student and will NOT be included in average grade calculations. Rubric selections and points feedback will be wiped.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | ReadWrite.All, EduAssignments.ReadWrite.All | 

## HTTP request -Mark a submission as excused
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/excuse
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 Ok` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Example
The following example shows how to call this API.
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationsubmission_submit"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/submissions/02859156-c3c7-876d-7a5c-915bf4f61380/excuse
```

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->

```http
HTTP/1.1 200 Ok

{
    Update response***********
}
```

## See also

* [States, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-states-transition)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationSubmission: excuse",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


