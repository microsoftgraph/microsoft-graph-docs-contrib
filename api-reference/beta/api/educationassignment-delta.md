---
title: "educationAssignment: delta"
description: "Get a list of newly created or updated assignments without having to perform a full ready of the collection."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# educationAssignment: delta
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of newly created or updated [assignments](../resources/educationassignment.md) without having to perform a full ready of the collection.

A teacher or an application running with application permissions can see all **assignment** objects for the class. Students can only see **assignments** that are assigned to them.

> **Note:** This method doesn't return deleted **assignments**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                            |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                         |
| Application                            | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All |

## Optional query parameters
This method does not support the `$expand`, `$orderby`, `$search`, and `$filter` OData query parameters.

This method only supports the `$top` OData query parameter.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/classes/{educationClassId}/assignments/delta
GET /education/classes/{educationClassId}/members/{educationUserId}/assignments/delta
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [educationAssignment](../resources/educationassignment.md) collection in the response body.

## Examples

### Example 1: Get assignments with delta query support

#### Request

The following is an example of the request. 

Use the `$top` parameter to specify the number of assignments to be returned. The parameter is optional but use it preferably when you have a long list of assignments; otherwise, you will get all the assignments in the class.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_delta_top2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$top=2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-delta-top2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-delta-top2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-delta-top2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-delta-top2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-delta-top2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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

### Example 2: Get next set of assignments with delta query support

#### Request

The following is an example of the request.

Use the `@odata.nextLink` value from the previous call for this request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_delta_query_support"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IdHoweKQs1czM4Ry1LVsNqwIFXftTcRHvgSCbcszvbJHEWDCO3QO7K7zwCM8DdXNepZOa1gqldecjIUM0NFRbGQoQ5yR6RmGnMgtko8TDMOyMH_yg1my82PTXA_t4Nj-DhMDZWvuNTd_lbLeTngc7mIJPMCR2gHN9CSKsW_kw850.UM9tUqwOu5Ln1pnxaP6KdMmfJHszGqY3EKPlQkOiyGs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-delta-query-support-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-delta-query-support-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-delta-query-support-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-delta-query-support-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-delta-query-support-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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

### Example 3: Get the created and modified assignments using delta token

#### Request

The following is an example of the request.

Use the `@odata.deltaLink` value from the previous call for this request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignments_delta_datalink"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxROmLjac48n-iXm5j6n5aQwlsnC-2OvL3lI0Z8M4klERNmJQjnBn7MHqwXZ6L8GlI3VPnya3E-p1bisiZX97jLvQUAopseIYhvnD6v7fiYrk.fVsHempT6X2CiBh6aN9Ex5nVJ71adKdcf-mdke8OHKs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-assignments-delta-datalink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-assignments-delta-datalink-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignments-delta-datalink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignments-delta-datalink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-assignments-delta-datalink-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** You must continue using the `@odata.deltaLink` to get the newly created or modified assignments since the initial Delta call.

>Sometimes the delta response will be very large in which case an `@odata.nextLink` will be returned to continue fetching changes until you hit an `@odata.deltaLink` again.

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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d80
2021-11-18 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List assignments: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
