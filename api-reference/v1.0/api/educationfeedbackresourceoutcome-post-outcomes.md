---
title: "Create educationFeedbackResourceOutcome"
description: "Create a new feedback resource for a submission."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 08/20/2024
---

# Create educationFeedbackResourceOutcome

Namespace: microsoft.graph

Create a new [feedback resource](../resources/educationfeedbackresourceoutcome.md) for a submission. Only a teacher can perform this operation.

To create a new file-based resource, upload the file to the feedback resources folder associated with the assignment. If the file doesn't exist or isn't in that folder, the `POST` request will fail.

> [!IMPORTANT]
> Before you can upload an assignment feedback resource, you must [set up the feedback resources folder](../api/educationassignment-setupfeedbackresourcesfolder.md) for the [educationAssignment](../resources/educationassignment.md) to upload the files to.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationfeedbackresourceoutcome_post_outcomes" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationfeedbackresourceoutcome-post-outcomes-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{classId}/assignments/{assignmentId}/submissions/{submissionId}/outcomes
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json           |

## Request body
In the request body, supply a JSON representation of an [educationFeedbackResourceOutcome](../resources/educationfeedbackresourceoutcome.md) object.

## Response
If successful, this method returns a `201 Created` response code and an [educationFeedbackResourceOutcome](../resources/educationfeedbackresourceoutcome.md) object in the response body.

This method returns a `400 Bad Request` when the submission has exceeded more than five feedback resources.

## Example
### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationFeedbackResourceOutcome"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/a3cce0ba-2008-4c4d-bf62-079408562d96/submissions/2185e6d7-2924-4ed1-dde1-269f89e29184/outcomes
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationfeedbackresourceoutcome-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationfeedbackresourceoutcome-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('a3cce0ba-2008-4c4d-bf62-079408562d96')/submissions('2185e6d7-2924-4ed1-dde1-269f89e29184')/outcomes/$entity",
    "@odata.type": "#microsoft.graph.educationFeedbackResourceOutcome",
    "lastModifiedDateTime": "2024-08-14T06:50:11.6979503Z",
    "id": "b7e92489-91b6-4734-ab5c-b1370862e4a2",
    "resourceStatus": "notPublished",
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "feedbackResource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Document1.docx",
        "createdDateTime": "2024-08-14T06:50:11.6979432Z",
        "lastModifiedDateTime": "2024-08-14T06:50:11.6979503Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQZ6GPYK2SPEXRDKILMSBSL5KNKM",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        }
    }
}
```

## Related content

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
