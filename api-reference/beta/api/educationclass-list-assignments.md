---
title: "List class assignments"
description: "Retrieve a list of assignment objects."
author: "mmast-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List class assignments

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of assignment objects. Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application executing with application permissions can see all assignment objects for the class. Students can only see assignments that are assigned to them.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                            |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                         |
| Application                            | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/assignments
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

The available `$expand` options for this method are: `categories`, `resources`, `rubric`, `submissions` and `*` which includes all the previous options.

All [properties](/graph/api/resources/educationassignment#properties) are supported for the query parameters `$filter` and `$orderby`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationAssignment](../resources/educationassignment.md) objects in the response body.

## Examples

### Example 1: Get assignments

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_for_classID"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-for-classid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-for-classid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-for-classid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-for-classid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-for-classid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments",    
    "value": [
        {
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Looper app task",
            "closeDateTime": null,
            "dueDateTime": "2021-11-12T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T20:37:59.6432527Z",
            "lastModifiedDateTime": "2021-11-10T20:38:10.395034Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2272a7baec-c3e9-4213-a850-f62de0adad5f%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22be973b06-0cdf-42d5-b8c2-fece599f50c0%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addedStudentAction": "none",
            "id": "be973b06-0cdf-42d5-b8c2-fece599f50c0",
            "grading": null,
            "instructions": {
                "content": "",
                "contentType": "text"
            },
            "assignTo": {
                "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
            },
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            }
        }
  ]
}
```

### Example 2: Get assignments using $expand options

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_resources"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments?$expand=resources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-resources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-resources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-resources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-resources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-resources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response. The response includes the list of resources for each assignment. 

>**Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments(resources())",
    "value": [
        {
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Scheduled homework",
            "closeDateTime": null,
            "dueDateTime": "2021-10-30T06:59:00Z",
            "assignDateTime": "2021-10-13T14:00:00Z",
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-10-12T19:38:34.0470442Z",
            "lastModifiedDateTime": "2021-10-12T23:12:02.2249311Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "scheduled",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2272a7baec-c3e9-4213-a850-f62de0adad5f%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22efcdf80b-a5de-42ac-8579-e40b0223d48b%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "efcdf80b-a5de-42ac-8579-e40b0223d48b",
            "grading": null,
            "instructions": {
                "content": "",
                "contentType": "text"
            },
            "assignTo": {
                "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
            },
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            },
            "resources": []
        },
        {
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Test 09.29",
            "closeDateTime": null,
            "dueDateTime": "2021-10-01T06:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RM7P2UVIJIO3RAZYBLTBXOJRRXS",
            "createdDateTime": "2021-09-29T22:19:36.2072672Z",
            "lastModifiedDateTime": "2021-09-29T22:26:02.8551774Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2272a7baec-c3e9-4213-a850-f62de0adad5f%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22c057de5a-850e-4a35-b233-daf89cd55c8b%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "c057de5a-850e-4a35-b233-daf89cd55c8b",
            "grading": null,
            "instructions": {
                "content": "",
                "contentType": "text"
            },
            "assignTo": {
                "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
            },
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                    "displayName": null
                }
            },
            "resources": [
                {
                    "distributeForStudentWork": false,
                    "id": "546c265e-6135-4244-83be-8ca7cdeae25e",
                    "resource": {
                        "@odata.type": "#microsoft.graph.educationWordResource",
                        "displayName": "Weekly Goals.docx",
                        "createdDateTime": "2021-09-29T22:26:02.2189853Z",
                        "lastModifiedDateTime": "2021-09-29T22:26:02.2189853Z",
                        "fileUrl": "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RPVL7ENX7J6RBAK5D37NEP6QO56",
                        "createdBy": {
                            "application": null,
                            "device": null,
                            "user": {
                                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                                "displayName": null
                            }
                        },
                        "lastModifiedBy": {
                            "application": null,
                            "device": null,
                            "user": {
                                "id": "f3a5344e-dbde-48b0-be24-b5b62a243836",
                                "displayName": null
                            }
                        }
                    }
                }
            ]
        }
    ]
}
```

### Example 3: Using `$filter` to get assignments

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKey": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070"],
  "name": "get_assignments_filter"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments?$filter=status eq 'assigned'
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments",
    "value": [
        {
            "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "displayName": "Reading test#1",
            "closeDateTime": null,
            "dueDateTime": "2022-09-01T00:00:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2022-05-16T16:12:53.9584196Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
            "createdDateTime": "2022-05-13T23:50:12.7506402Z",
            "lastModifiedDateTime": "2022-05-16T16:12:57.1762926Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22846d04c6-6e23-4b69-a4a7-bb0189f06488%5C%22%5D,%5C%22submissionId%5C%22%3Anull%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "846d04c6-6e23-4b69-a4a7-bb0189f06488",
            "instructions": {
                "content": "Read chapter 1",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 50
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
                    "id": "AAAAAAAA-0123-4567-89AB-1B4BB48C3119",
                    "displayName": null
                }
            }
        },
        {
            "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "displayName": "Suresh first assignment",
            "closeDateTime": null,
            "dueDateTime": "2022-07-24T06:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2022-07-22T16:17:20.2980349Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ16K0nzyRhYQbo_fE-lpr-L/items/01VANVJQYNMWSMU5D42NHKW2CWEO5HJXHY",
            "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
            "createdDateTime": "2022-07-22T16:14:22.8297418Z",
            "lastModifiedDateTime": "2022-08-05T15:41:30.196893Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%220bcb37af-3676-47ef-ae93-8de22ce5ff1d%5C%22%5D,%5C%22submissionId%5C%22%3Anull%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "0bcb37af-3676-47ef-ae93-8de22ce5ff1d",
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
                    "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                    "displayName": null
                }
            }
        }
    ]
    }   
```

### Example 4: Using `$orderby` to get assignments

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKey": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
  "name": "get_assignments_orderby"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments?$ordeby= id
```

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

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
    {
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments",
    "value": [
        {
            "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "displayName": "Search progress resource #1",
            "closeDateTime": null,
            "dueDateTime": "2022-10-12T06:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": null,
            "createdDateTime": "2022-10-10T17:07:41.9772556Z",
            "lastModifiedDateTime": "2022-10-10T17:08:02.7357199Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22ba0ff1ed-79c6-4611-9638-356754b05555%5C%22%5D,%5C%22submissionId%5C%22%3Anull%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "ba0ff1ed-79c6-4611-9638-356754b05555",
            "grading": null,
            "instructions": {
                "content": "",
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
        },
        {
            "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
            "displayName": "Reading test#1",
            "closeDateTime": null,
            "dueDateTime": "2022-09-01T00:00:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2022-05-16T16:12:53.9584196Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "feedbackResourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F8CNZWU38SarWxPyWM7jx/items/01VANVJQ7ONF5UOYTXZVEKCZE43FTQRH2S",
            "createdDateTime": "2022-05-13T23:50:12.7506402Z",
            "lastModifiedDateTime": "2022-05-16T16:12:57.1762926Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%22846d04c6-6e23-4b69-a4a7-bb0189f06488%5C%22%5D,%5C%22submissionId%5C%22%3Anull%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "id": "846d04c6-6e23-4b69-a4a7-bb0189f06488",
            "instructions": {
                "content": "Read chapter 1",
                "contentType": "text"
            },
            "grading": {
                "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
                "maxPoints": 50
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
                    "id": "AAAAAAAA-0123-4567-89AB-1B4BB48C3119",
                    "displayName": null
                }
            }
        }
    ]
    }
}       
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List assignments",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->