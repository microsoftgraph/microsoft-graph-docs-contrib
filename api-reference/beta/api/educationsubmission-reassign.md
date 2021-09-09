---
title: "educationSubmission: reassign"
description: "Reassign is designed for teachers to inform students to revisit/redo their work, and in the mean time it has the ability to return feedback and code."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# educationSubmission: reassign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reassigned is a new submission status added, so it will be treated as an unknown enum member. If the header Prefer: include-unknown-enum-members is not provided, a reassigned submission will be mapped as a returned submission. This means, `reassigned` status will be mapped to `returned` status, and `reassignedDateTime` and `reassignedBy` properties will be mapped to `returnedDateTime` and `returnedBy`.
If the header `Prefer: include-unknown-enum-members` is provided, reassigned submission remains in `reassigned` status. You can refer response examples for further details.
This action can only be done by the teacher.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignments/{id}/submissions/{id}/reassign
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Prefer  | `include-unknown-enum-members`. Optional.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns `200 Ok` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Example
The following example shows how to call this API.

### Request
The following is an example of the request.

## [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationsubmission_reassign"
}-->

```http
POST /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/7192332b-e904-4891-81e2-356242ab1858/submissions/02bb5de1-7205-2a25-fe33-f99cf53de1c4/reassign
```


### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is NOT provided in the request header and the submission has never been returned before.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationSubmission",
    "@odata.type": "#microsoft.graph.educationSubmission",
    "status": "returned",
    "submittedDateTime": "2021-09-07T14:54:46.1606962Z",
    "unsubmittedDateTime": "2021-09-07T14:41:18.9512645Z",
    "returnedDateTime": "2021-09-07T21:38:40.5254847Z",
    "reassignedDateTime": "2021-09-07T21:38:40.5254847Z",
    "resourcesFolderUrl": null,
    "id": "02bb5de1-7205-2a25-fe33-f99cf53de1c4",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "80cefd93-8d88-40e2-b5d3-67898383e226"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
            "displayName": null
        }
    },
    "returnedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
            "displayName": null
        }
    },
    "reassignedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
            "displayName": null
        }
    }
}
```

### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is provided in the request header and the submission has never been returned before.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationSubmission",
    "@odata.type": "#microsoft.graph.educationSubmission",
    "status": "reassigned",
    "submittedDateTime": "2021-09-07T21:44:41.8377109Z",
    "unsubmittedDateTime": "2021-09-07T14:41:18.9512645Z",
    "returnedDateTime": null,
    "reassignedDateTime": "2021-09-07T21:45:42.9027726Z",
    "resourcesFolderUrl": null,
    "id": "02bb5de1-7205-2a25-fe33-f99cf53de1c4",
    "recipient": {
        "@odata.type": "#microsoft.graph.educationSubmissionIndividualRecipient",
        "userId": "80cefd93-8d88-40e2-b5d3-67898383e226"
    },
    "submittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
            "displayName": null
        }
    },
    "unsubmittedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
            "displayName": null
        }
    },
    "returnedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": null,
            "displayName": null
        }
    },
    "reassignedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
            "displayName": null
        }
    }
}
```

## See also

* [Assignments and Submissions state transition](/graph/assignments-submissions-states-transition)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationSubmission: reassign",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


