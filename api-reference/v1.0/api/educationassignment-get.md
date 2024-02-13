---
title: "Get educationAssignment"
description: "Get the properties and relationships of an assignment."
author: "Sureshpadimi88"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationAssignment

Namespace: microsoft.graph

Get the properties and relationships of an [assignment](../resources/educationassignment.md). Only teachers, students, and applications with application permissions can perform this operation.

Students can only see assignments assigned to them; teachers and applications with application permissions can see all assignments in a class.

You can use the `Prefer` header in your request to get the `inactive` status in case the assignment is deactivated; otherwise, you will get an `unknownFutureValue` value in the response.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "educationassignment_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/assignments/{id}
```

## Optional query parameters
This method supports the  `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |
| Prefer        | include-unknown-enum-members. Optional. |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationAssignment](../resources/educationassignment.md) object in the response body.

## Example

### Example 1: Get education assignment

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys":["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","c0f133b9-615c-4119-876c-c1848fd0a99a"],
  "name": "get_educationassignment"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/c0f133b9-615c-4119-876c-c1848fd0a99a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-educationassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-educationassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 279

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_v1-inactive-canary/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments/$entity",
    "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "displayName": "Inactive assignment",
    "closeDateTime": null,
    "dueDateTime": "2024-03-30T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2024-02-13T14:41:07.9250378Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
    "createdDateTime": "2024-02-13T14:40:43.8825959Z",
    "lastModifiedDateTime": "2024-02-13T15:12:14.6154569Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "assigned",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22c0f133b9-615c-4119-876c-c1848fd0a99a%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "moduleUrl": null,
    "id": "c0f133b9-615c-4119-876c-c1848fd0a99a",
    "instructions": {
        "content": "",
        "contentType": "text"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
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

### Example 2: Get assignment in inactive state with optional Prefer header
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "get_inactiveAssignment_withheader"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a
Prefer: include-unknown-enum-members
```
#### Response
The following is an example of the response with status as inactive, when `Prefer: include-unknown-enum-members` is provided in the request header.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments/$entity",
    "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "displayName": "Inactive assignment",
    "closeDateTime": null,
    "dueDateTime": "2024-02-14T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2024-02-13T14:41:07.9250378Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
    "createdDateTime": "2024-02-13T14:40:43.8825959Z",
    "lastModifiedDateTime": "2024-02-13T14:53:47.3794641Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "inactive",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22c0f133b9-615c-4119-876c-c1848fd0a99a%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "moduleUrl": null,
    "id": "c0f133b9-615c-4119-876c-c1848fd0a99a",
    "instructions": {
        "content": "",
        "contentType": "text"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
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
            "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
            "displayName": null
        }
    }
}
```

## Example 3: Get assignment in inactive state without optional Prefer header
#### Request
The following is an example of the request, where the status is `unknownFutureValue`. `Prefer: include-unknown-enum-members` is not provided in the request header.

<!-- {
  "blockType": "request",
  "sampleKeys": ["ffac078e-1b63-42d0-bc2a-d280896e289a","2b8090d7-8de9-4fb4-af5d-2e2f68ae098a"],
  "name": "getinactiveAssignment"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ffac078e-1b63-42d0-bc2a-d280896e289a/assignments/2b8090d7-8de9-4fb4-af5d-2e2f68ae098a
```
#### Response
The following is an example of the response when `Prefer: include-unknown-enum-members` is not provided in the request header.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ffac078e-1b63-42d0-bc2a-d280896e289a')/assignments/$entity",
    "classId": "ffac078e-1b63-42d0-bc2a-d280896e289a",
    "displayName": "Check-inactive",
    "closeDateTime": null,
    "dueDateTime": "2023-03-26T18:29:00Z",
    "assignDateTime": null,
    "assignedDateTime": "2023-03-17T19:41:56.3040589Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2023-03-17T19:40:33.7277546Z",
    "lastModifiedDateTime": "2023-03-17T21:03:07.4999252Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "unknownFutureValue",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ffac078e-1b63-42d0-bc2a-d280896e289a%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%222b8090d7-8de9-4fb4-af5d-2e2f68ae098a%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "id": "2b8090d7-8de9-4fb4-af5d-2e2f68ae098a",
    "grading": null,
    "instructions": {
        "content": "Check-inactive",
        "contentType": "html"
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
