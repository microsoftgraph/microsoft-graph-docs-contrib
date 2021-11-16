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

Retrieve a list of assignment objects. 

A teacher or an application executing with application permissions can see all assignment objects for the class. Students can only see assignments that are assigned to them.

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

> `$expand` options are NOT supported in Delta query

## Delta query support

Delta query supports **Assignments** to effectively query newly created or modified entities without performing a full read of the Assignments every request.

> Deleted operations are not supported.

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
  "name": "get_assignments"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-assignments-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-go-snippets.md)]
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-resources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-assignments-resources-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-resources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-resources-go-snippets.md)]
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
            "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('efcdf80b-a5de-42ac-8579-e40b0223d48b')/resources",
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
            "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments('c057de5a-850e-4a35-b233-daf89cd55c8b')/resources",
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

### Example 3: Get assignments with Delta query support

#### Request

The following is an example of the request. 

Use the `$top` parameter to specify the number of assignments to be returned. The parameter is optional but use it preferably when you have a long list of assignments, otherwise you will get all the assignments in the class.

<!-- {
  "blockType": "request",
  "name": "get_assignments_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$top=2
```
---


#### Response

The following is an example of the response. 

>**Note:** Take the `@odata.nextLink` from the response to make another call and get the next set of assignments.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationAssignment)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IdHoweKQs1czM4Ry1LVsNqwIFXftTcRHvgSCbcszvbJHEWDCO3QO7K7zwCM8DdXNepZOa1gqldecjIUM0NFRbGQoQ5yR6RmGnMgtko8TDMOyMH_yg1my82PTXA_t4Nj-DhMDZWvuNTd_lbLeTngc7mIJPMCR2gHN9CSKsW_kw850.UM9tUqwOu5Ln1pnxaP6KdMmfJHszGqY3EKPlQkOiyGs",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Expand options 3.1",
            "closeDateTime": "2021-11-14T07:59:00Z",
            "dueDateTime": "2021-11-14T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2021-11-10T23:57:16.1897643Z",
            "allowLateSubmissions": false,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T23:56:03.7992389Z",
            "lastModifiedDateTime": "2021-11-11T00:42:20.8999693Z",
            "allowStudentsToAddResourcesToSubmission": false,
            "status": "published",
            "notificationChannelUrl": "https://graph.microsoft.com/beta/teams/72a7baec-c3e9-4213-a850-f62de0adad5f/channels/19:e375b98b9d4f4738857fb70f23d329b7@thread.skype",
            "webUrl": null,
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "grading": null,
            "id": "3b870c07-21fe-47fb-8562-cdd6f2c281d6",
            "instructions": {
                "content": "follow up",
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
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Expand options 4",
            "closeDateTime": null,
            "dueDateTime": "2021-11-12T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": null,
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T23:58:29.2670914Z",
            "lastModifiedDateTime": "2021-11-10T23:58:39.6191021Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "draft",
            "notificationChannelUrl": null,
            "webUrl": null,
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "grading": null,
            "id": "34ab8c17-eaae-4996-9c04-53696934e6ff",
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

### Example 4: Get next set of assignments with Delta query support

#### Request

The following is an example of the request.

Use the `@odata.nextLink` value from the previous call for this request.

<!-- {
  "blockType": "request",
  "name": "get_assignments_delta"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IdHoweKQs1czM4Ry1LVsNqwIFXftTcRHvgSCbcszvbJHEWDCO3QO7K7zwCM8DdXNepZOa1gqldecjIUM0NFRbGQoQ5yR6RmGnMgtko8TDMOyMH_yg1my82PTXA_t4Nj-DhMDZWvuNTd_lbLeTngc7mIJPMCR2gHN9CSKsW_kw850.UM9tUqwOu5Ln1pnxaP6KdMmfJHszGqY3EKPlQkOiyGs
```
---


#### Response

The following is an example of the response.

>**Note:** You must continue using the `@odata.nextLink` value for the consequent calls until you get the `@odata.deltaLink` property in the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationAssignment)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxROmLjac48n-iXm5j6n5aQwlsnC-2OvL3lI0Z8M4klERNmJQjnBn7MHqwXZ6L8GlI3VPnya3E-p1bisiZX97jLvQUAopseIYhvnD6v7fiYrk.fVsHempT6X2CiBh6aN9Ex5nVJ71adKdcf-mdke8OHKs",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Expand options 2",
            "closeDateTime": null,
            "dueDateTime": "2021-11-12T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2021-11-10T23:54:15.9533379Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T23:51:08.8548584Z",
            "lastModifiedDateTime": "2021-11-10T23:54:17.4687411Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": null,
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "grading": null,
            "id": "efa3b9a8-b41f-4263-adc5-738c01912153",
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
                    "id": "AAAAAAAA-0123-4567-89AB-1B4BB48C3119",
                    "displayName": null
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "Expand options in publish",
            "closeDateTime": null,
            "dueDateTime": "2021-11-12T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2021-11-10T23:48:03.9134549Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T23:42:37.2869391Z",
            "lastModifiedDateTime": "2021-11-10T23:48:06.490359Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": null,
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "grading": null,
            "id": "5cf13354-0156-4483-8c19-3185c6252188",
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
                    "id": "AAAAAAAA-0123-4567-89AB-1B4BB48C3119",
                    "displayName": null
                }
            }
        }
    ]
}
```

### Example 5: Get the created and modified assignments using Delta token

#### Request

The following is an example of the request.

Use the `@odata.deltaLink` value from the previous call for this request.

<!-- {
  "blockType": "request",
  "name": "get_assignments_delta"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxROmLjac48n-iXm5j6n5aQwlsnC-2OvL3lI0Z8M4klERNmJQjnBn7MHqwXZ6L8GlI3VPnya3E-p1bisiZX97jLvQUAopseIYhvnD6v7fiYrk.fVsHempT6X2CiBh6aN9Ex5nVJ71adKdcf-mdke8OHKs
```
---

#### Response

The following is an example of the response.

>**Note:** You must continue using the `@odata.deltaLink` to get the newly created or modified assignments since the initial Delta call.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationAssignment)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxROmLjac48n-iXm5j6n5aQwlsnC-2OvL3lI0Z8M4klER9TeVMFnEEWX3TRYFAJe1nNUp5s0cjvqM59nMNhcFoIhmt6RUUcXe6vlP9yy00ADA.gT8PrGKC3hZnt4oDxMAmjyX50EASWG4KNcc1E9yTRRo",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "displayName": "expand options 2 updated for delta",
            "closeDateTime": null,
            "dueDateTime": "2021-11-12T07:59:00Z",
            "assignDateTime": null,
            "assignedDateTime": "2021-11-10T23:54:15.9533379Z",
            "allowLateSubmissions": true,
            "resourcesFolderUrl": null,
            "createdDateTime": "2021-11-10T23:51:08.8548584Z",
            "lastModifiedDateTime": "2021-11-16T15:17:07.518655Z",
            "allowStudentsToAddResourcesToSubmission": true,
            "status": "assigned",
            "notificationChannelUrl": null,
            "webUrl": null,
            "addToCalendarAction": "none",
            "addedStudentAction": "none",
            "grading": null,
            "id": "efa3b9a8-b41f-4263-adc5-738c01912153",
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
