---
title: "educationSubmission: reassign"
description: "Reassign the submission to the student with feedback for review."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# educationSubmission: reassign

Namespace: microsoft.graph

Reassign the [submission](../resources/educationsubmission.md) to the student with feedback for review.

Only teachers can perform this action. 

Include the `Prefer: include-unknown-enum-members` header when you call this method; otherwise, a reassigned submission will be treated as a returned submission. This means that the `reassigned` status will be mapped to the `returned` status, and **reassignedDateTime** and **reassignedBy** properties will be mapped to **returnedDateTime** and **returnedBy** respectively.

If the header `Prefer: include-unknown-enum-members` is provided, a reassigned submission retains the `reassigned` status. For details, see the examples section.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Notes.ReadWrite.All, EduAssignments.ReadWrite.All | 

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
If successful, this method returns `200 OK` response code and an [educationSubmission](../resources/educationsubmission.md) object in the response body.

## Examples
### Example 1: Request without optional Prefer header

#### Request
The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationsubmission_reassign"
}-->

```http
POST /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/7192332b-e904-4891-81e2-356242ab1858/submissions/02bb5de1-7205-2a25-fe33-f99cf53de1c4/reassign
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationsubmission-reassign-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationsubmission-reassign-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationsubmission-reassign-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationsubmission-reassign-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationsubmission-reassign-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationsubmission-reassign-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is NOT provided in the request header and the submission hasn't been returned before.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#educationSubmission",
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

### Example 2: Request with Prefer header
The following example shows how to call this method.

#### Request
The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "educationsubmission_prefer_reassign"
}-->

```http
POST /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/7192332b-e904-4891-81e2-356242ab1858/submissions/02bb5de1-7205-2a25-fe33-f99cf53de1c4/reassign
Prefer: include-unknown-enum-members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationsubmission-prefer-reassign-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationsubmission-prefer-reassign-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationsubmission-prefer-reassign-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationsubmission-prefer-reassign-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationsubmission-prefer-reassign-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationsubmission-prefer-reassign-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is provided in the request header and the submission hasn't been returned before.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.educationSubmission"
} -->
```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#educationSubmission",
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

* [States, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-states-transition)

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


