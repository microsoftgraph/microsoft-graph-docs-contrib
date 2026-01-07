---
title: "educationAssignment: setUpResourcesFolder"
description: "Create a SharePoint folder to upload files for a given educationAssignment."
ms.localizationpriority: medium
author: "sharmas"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/05/2024
---

# educationAssignment: setUpResourcesFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a SharePoint folder to upload files for a given [educationAssignment](../resources/educationassignment.md). Only teachers can perform this operation.

The teacher determines the resources to upload in the assignment's folder.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_setupresourcesfolder" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-setupresourcesfolder-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignments/{id}/setUpResourcesFolder
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |

## Request body
In the request body, supply an empty JSON object `{}` for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) object in the request body.

If the specified **assignment** already has a folder, this method returns a `400 Bad request` and an error response.

## Example
The following example shows how to call this API.

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["ce2cd7da-e41b-4e66-8390-c9251e4c3a40","f5e60dc1-d084-4ca4-a3b4-025f11023059"],  
  "name": "educationassignment_setupresourcesfolder"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments/f5e60dc1-d084-4ca4-a3b4-025f11023059/setUpResourcesFolder
Content-type: application/json

{
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationassignment-setupresourcesfolder-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationassignment-setupresourcesfolder-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationassignment-setupresourcesfolder-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationassignment-setupresourcesfolder-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationassignment-setupresourcesfolder-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationassignment-setupresourcesfolder-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/educationassignment-setupresourcesfolder-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.educationAssignment",
    "classId": "ce2cd7da-e41b-4e66-8390-c9251e4c3a40",
    "displayName": "New assignment",
    "closeDateTime": null,
    "dueDateTime": "2025-05-09T00:00:00Z",
    "assignDateTime": null,
    "assignedDateTime": null,
    "allowLateSubmissions": true,
    "resourcesFolderUrl": "https://graph.microsoft.com/beta/drives/b!uf0jSRLkbEOG04PymQ5PtqVEDwHjP_xMlkkpCG-1CkKVvLn9JeueT63KQGyKclfr/items/01VPGD5VK63GWH3UQMJVFKZHZUA545JCBB",
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2025-05-07T18:17:06.2831309Z",
    "lastModifiedDateTime": "2025-05-16T18:21:18.9640425Z",
    "allowStudentsToAddResourcesToSubmission": false,
    "status": "draft",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ce2cd7da-e41b-4e66-8390-c9251e4c3a40%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22f5e60dc1-d084-4ca4-a3b4-025f11023059%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "languageTag": "es",
    "moduleUrl": null,
    "id": "f5e60dc1-d084-4ca4-a3b4-025f11023059",
    "grading": null,
    "instructions": {
        "content": null,
        "contentType": "text"
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
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
            "id": "00000003-0000-0000-c000-000000000000",
            "displayName": null
        }
    }
}
```

If the specified **assignment** already has a folder, this method returns a `400 Bad request` and an error response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "odata.error"
} -->
```http
HTTP/1.1 400 Bad request
Content-type: application/json

{
    "error": {
        "code": "badRequest",
        "message": "Bad request.",
        "innerError": {
            "code": "folderAlreadyExists",
            "message": "Resource folder already exists and has previously been set up.",
            "date": "2021-09-14T19:05:24",
            "request-id": "f88be238-1339-49c8-b03d-37f45d54761f",
            "client-request-id": "30d8081a-f3e8-73e0-2da4-3480fb56ccdb"
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignment: publish",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

