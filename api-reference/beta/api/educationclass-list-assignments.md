---
title: "List class assignments"
description: "Retrieve a list of educationAssignment objects."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List class assignments

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [educationAssignment](../resources/educationassignment.md) objects. Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application executing with application permissions can see all assignment objects for the class. Students can only see assignments that are assigned to them.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_list_assignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-list-assignments-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{id}/assignments
```

## Optional query parameters

This method supports the `$expand` [OData query parameter](/graph/query-parameters) to help customize the response.

The folloing `$expand` options are available for this method: `categories`, `resources`, `rubric`, `submissions`, and `*`, which includes all the previous options.

All [properties](/graph/api/resources/educationassignment#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationAssignment](../resources/educationassignment.md) objects in the response body.

## Examples

### Example 1: Get assignments

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_for_classID"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-for-classid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-for-classid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-for-classid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-for-classid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-for-classid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-for-classid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-for-classid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$skiptoken=MyZRVkZCUVVGQlFVRlNRVUZCUVVGQlFVRkJRWGxCUVVGQlNDczVLMmRqVWpsWWEyVlhWV3BwVkVrd09EUk1aejA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments?$select=addedStudentAction,addToCalendarAction",
    "value": [
        {
            "classId": "ce2cd7da-e41b-4e66-8390-c9251e4c3a40",
            "displayName": "New assignment",
            "closeDateTime": null,
            "dueDateTime": "2025-05-09T00:00:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": null,
            "createdDateTime": "2025-05-07T18:17:06.2831309Z",
            "lastModifiedDateTime": "2025-05-07T18:17:06.4526679Z",
            "allowStudentsToAddResourcesToSubmission": false,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ce2cd7da-e41b-4e66-8390-c9251e4c3a40%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22f5e60dc1-d084-4ca4-a3b4-025f11023059%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "languageTag": "en-US",
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 2: Get assignments using $expand options

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_resources"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$expand=resources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-resources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-resources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-resources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-resources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-resources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-resources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-resources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The response includes the list of resources for each assignment. 

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 344

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments(resources())",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$expand=resources&$skiptoken=MyZRVkZCUVVGQlFVRlNRVUZCUVVGQlFVRkJRWGxCUVVGQmRFY3lhVXgwV20xWVZYbDZOMHhqY1ZKckswMXBkejA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments?$select=addedStudentAction,addToCalendarAction",
    "value": [
        {
            "classId": "ce2cd7da-e41b-4e66-8390-c9251e4c3a40",
            "displayName": "New assignment",
            "closeDateTime": null,
            "dueDateTime": "2025-05-09T00:00:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": null,
            "createdDateTime": "2025-05-07T18:17:06.2831309Z",
            "lastModifiedDateTime": "2025-05-07T18:17:06.4526679Z",
            "allowStudentsToAddResourcesToSubmission": false,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ce2cd7da-e41b-4e66-8390-c9251e4c3a40%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22f5e60dc1-d084-4ca4-a3b4-025f11023059%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "languageTag": "en-US",
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments('f5e60dc1-d084-4ca4-a3b4-025f11023059')/resources",
            "resources": []
        }
    ]
}
```

### Example 3: Using `$filter` to get assignments

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_filter"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$filter=status eq 'assigned'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments(resources())",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$expand=resources&$skiptoken=MyZRVkZCUVVGQlFVRlNRVUZCUVVGQlFVRkJRWGxCUVVGQlozTk9VVEZCWmpCS01IRm5ZMHBzTVhGT0szY3JkejA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments?$select=addedStudentAction,addToCalendarAction",
    "value": [
        {
            "classId": "ce2cd7da-e41b-4e66-8390-c9251e4c3a40",
            "displayName": "New assignment",
            "closeDateTime": null,
            "dueDateTime": "2025-05-09T00:00:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": null,
            "createdDateTime": "2025-05-07T18:17:06.2831309Z",
            "lastModifiedDateTime": "2025-05-07T18:17:06.4526679Z",
            "allowStudentsToAddResourcesToSubmission": false,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ce2cd7da-e41b-4e66-8390-c9251e4c3a40%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22f5e60dc1-d084-4ca4-a3b4-025f11023059%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "languageTag": "en-US",
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments('f5e60dc1-d084-4ca4-a3b4-025f11023059')/resources",
            "resources": []
        }
    ]
}
```

### Example 4: Using `$orderby` to get assignments

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_orderby"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$ordeby= id
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-orderby-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-orderby-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-orderby-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-orderby-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-orderby-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-orderby-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-orderby-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('ce2cd7da-e41b-4e66-8390-c9251e4c3a40')/assignments",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$filter=status+eq+%27assigned%27&$skiptoken=MyZRVkZCUVVGQlFVRlJkMEZCUVVGQlFVRkJRWGxCUVVGQllWbFdhVlF5UVdWcVZYbEZNRXB0TUhWVFRYUXpkejA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments?$select=addedStudentAction,addToCalendarAction",
    "value": [
        {
            "classId": "ce2cd7da-e41b-4e66-8390-c9251e4c3a40",
            "displayName": "Physics",
            "closeDateTime": null,
            "dueDateTime": "2024-07-05T18:29:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2024-07-04T10:13:55.7459728Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!uf0jSRLkbEOG04PymQ5PtqVEDwHjP_xMlkkpCG-1CkLPLpFkTfqZR5sy80gMS-VY/items/01VPGD5VLEUC5G56NOFVDKD6POMN4LGKVD",
            "createdDateTime": "2024-07-04T08:46:19.8896923Z",
            "lastModifiedDateTime": "2024-07-04T10:13:59.8878321Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%22ce2cd7da-e41b-4e66-8390-c9251e4c3a40%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22cb190e9f-650d-4798-b8d0-6d00079a4c4b%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "studentsAndPublisher",
            "addedStudentAction": "none",
            "languageTag": "en-US",
            "moduleUrl": null,
            "id": "cb190e9f-650d-4798-b8d0-6d00079a4c4b",
            "instructions": {
                "content": "<div>Screw guage</div>",
                "contentType": "html"
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
                    "id": "0dcb98c3-8c7c-4f7a-a10d-7ed76e03e38f",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 5: Use `$expand` to get the gradingScheme for an assignment

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_top_expand"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments?&expand=gradingScheme
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-top-expand-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-top-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments(gradingScheme())",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments?expand=gradingScheme&$skiptoken=MyZRVkZCUVVGQlFVRmtRVVZCUVVGQlFVRkJRWGxCUVVGQmNubDJiblZOYzBnNVJWTndkbEJHVTNKVlVuVmlRVDA5",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments?$select=addedStudentAction,addToCalendarAction",
    "value": [
        {
            "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "displayName": "new submission",
            "closeDateTime": null,
            "dueDateTime": "2025-04-29T18:29:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2025-04-29T14:53:05.2974529Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
            "createdDateTime": "2025-04-29T14:52:15.4472281Z",
            "lastModifiedDateTime": "2025-05-07T21:28:57.6756103Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22ed33a213-f67f-4eb8-bfea-f45e6cba041f%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "studentsAndTeamOwners",
            "addedStudentAction": "assignIfOpen",
            "languageTag": "en-US",
            "moduleUrl": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/1b9a03b6-dcc5-4ff1-8226-b92e25072f43/",
            "id": "ed33a213-f67f-4eb8-bfea-f45e6cba041f",
            "instructions": {
                "content": "new submission",
                "contentType": "html"
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            },
            "gradingScheme": {
                "id": "696290ba-1925-490e-a5d2-026bad0dbdc1",
                "displayName": "New name for Pass/Fail Scheme",
                "hidePointsDuringGrading": false,
                "grades": [
                    {
                        "displayName": "Pass",
                        "minPercentage": 60,
                        "defaultPercentage": 100
                    },
                    {
                        "displayName": "Fail",
                        "minPercentage": 0,
                        "defaultPercentage": 0
                    }
                ]
            }
        }
    ]
}
```
