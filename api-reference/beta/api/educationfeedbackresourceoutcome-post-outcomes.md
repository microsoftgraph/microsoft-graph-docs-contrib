---
title: "Create educationFeedbackResourceOutcome"
description: "Create a new feedback resource for a submission."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationFeedbackResourceOutcome

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [feedback resource](../resources/educationfeedbackresourceoutcome.md) for a submission. Only a teacher can perform this operation.

To create a new file-based resource, upload the file to the feedback resources folder associated with the assignment. If the file doesn't exist or is not in that folder, the `POST` request will fail.

> [!IMPORTANT]
> Before you can upload an assignment feedback resource, you must [set up the feedback resources folder](../api/educationassignment-setupfeedbackresourcesfolder.md) for the [educationAssignment](../resources/educationassignment.md) to upload the files to.

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
POST /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/outcomes
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json           |

## Request body
In the request body, supply a JSON representation of an [educationFeedbackResourceOutcome](../resources/educationfeedbackresourceoutcome.md) object.

## Response
If successful, this method returns a `201 Created` response code and an [educationFeedbackResourceOutcome](../resources/educationfeedbackresourceoutcome.md) object in the response body.

This method returns a `400 Bad Request` when the submission has exceeded more than five feedback resources.

## Example
### Request
The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationFeedbackResourceOutcome"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions/2185e6d7-2924-4ed1-dde1-269f89e29184/outcomes
Content-type: application/json

{ 
    "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
    "feedbackResource": {
         "@odata.type": "#microsoft.graph.educationWordResource",
         "displayName": "Document1.docx"
     }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationfeedbackresourceoutcome-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationfeedbackresourceoutcome-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationfeedbackresourceoutcome-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationfeedbackresourceoutcome-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationfeedbackresourceoutcome-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationfeedbackresourceoutcome-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFeedbackResourceOutcome"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('a3cce0ba-2008-4c4d-bf62-079408562d96')/submissions('2185e6d7-2924-4ed1-dde1-269f89e29184')/outcomes/$entity",
    "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
    "lastModifiedDateTime": "2022-05-06T00:50:30.0772434Z",
    "id": "ba12f282-2190-4958-80b3-42b8afb9626a",
    "resourceStatus": "notPublished",
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    },
    "feedbackResource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Document1.docx",
        "createdDateTime": "2022-05-06T00:50:30.0772177Z",
        "lastModifiedDateTime": "2022-05-06T00:50:30.0772434Z",
        "fileUrl": "https://graph.microsoft.com/beta/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQZQ33I4AJBSURHZJDDQKEJ5TEMJ",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

## See also

To upload an existing file, see [Upload feedback files for education submissions](/graph/education-upload-feedback-resource-overview).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2022-05-06 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create educationFeedbackResourceOutcome",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
