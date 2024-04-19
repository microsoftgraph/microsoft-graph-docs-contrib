---
title: "educationSubmission: excuse"
description: "Excuse an educationSubmission  object."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# educationSubmission: excuse

Namespace: microsoft.graph

Excuse a submission. Excused submissions aren't included in average grade calculations. Grading rubrics and feedback are deleted. Only teachers can perform this action. 

If the `Prefer: include-unknown-enum-members` request header is provided, the excused submission retains the **excused** status. Otherwise, the submission status changes to **returned**. For more information about how to use this header, see the [Examples](#examples) section.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduAssignments.ReadWriteBasic.All, EduAssignments.ReadWrite.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/excuse
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Prefer  | `include-unknown-enum-members`. Optional.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Examples

### Example 1: Request with optional Prefer header

#### Request
The following example shows a request that uses the `Prefer: include-unknown-enum-members` header to retain the excused status.

<!-- {
  "blockType": "request",
  "name": "educationsubmission_excuse"
}-->

```http 
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/submissions/02859156-c3c7-876d-7a5c-915bf4f61380/excuse
Prefer: include-unknown-enum-members
```

#### Response
The following example shows the response when the `Prefer: include-unknown-enum-members` header is provided in the request. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.educationSubmission",
    "status": "returned",
    "submittedDateTime": "2023-07-19T15:17:37.9961504Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2024-04-19T12:50:44.3450678Z",
    "reassignedDateTime": null,
    "excusedDateTime": "2024-04-19T12:50:44.3450678Z",
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%2228992cce-fac0-4950-a836-5a524ded8599%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%2202859156-c3c7-876d-7a5c-915bf4f61380%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "02859156-c3c7-876d-7a5c-915bf4f61380",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    },
    "returnedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "reassignedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    },
    "excusedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
}
```

### Example 2: Request without the Prefer request header

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "educationsubmission_excuse_header"
}-->

```html 
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/submissions/02859156-c3c7-876d-7a5c-915bf4f61380/excuse
```

#### Response
The following example shows the response when the `Prefer: include-unknown-enum-members` header is not included in the request, and the submission hasn't been excused before.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmission"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.educationSubmission",
    "status": "returned",
    "submittedDateTime": "2023-07-19T15:17:37.9961504Z",
    "unsubmittedDateTime": null,
    "returnedDateTime": "2024-04-19T12:52:57.4362614Z",
    "reassignedDateTime": null,
    "excusedDateTime": "2024-04-19T12:52:57.4362614Z",
    "resourcesFolderUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%2228992cce-fac0-4950-a836-5a524ded8599%5C%22%5D,%5C%22submissionId%5C%22%3A%5C%2202859156-c3c7-876d-7a5c-915bf4f61380%5C%22%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22speed-grader%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "id": "02859156-c3c7-876d-7a5c-915bf4f61380",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "61243ddb-6f39-499d-b232-9fa8cef26b3a"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    },
    "returnedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "reassignedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    },
    "excusedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
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