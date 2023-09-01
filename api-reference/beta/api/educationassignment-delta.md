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

All [properties](/graph/api/resources/educationassignmentdelta#properties) are supported for the query parameters `$filter` and `$orderby`.

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

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-delta-top2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-delta-top2-python-snippets.md)]
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

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-delta-query-support-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-delta-query-support-python-snippets.md)]
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

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-assignments-delta-datalink-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-assignments-delta-datalink-python-snippets.md)]
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
### Example 4: Using `$select` to get selected data

#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","c3307ea8-1343-4109-aeb9-92b9a74bf131"],  
  "name": "get_assignment_delta_with_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/delta?$select=displayName,id
```
### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationAssignment)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FBcWCIKOSenQFv_rF12_tcPmr6GwzMmFb15rLKFgPCB9AMyomQQBsp8rpPB7REHVRY72dH9ygXt_v5J1THi6kEL_8e3gkl9GNBOgD75V4zUe2HWxrbhLZJFQSSRKQZ0t17wpjUSGULoPPeRrR5w4jWj3547BmlwhJydTPtrNqhNhgpWiDkoyMdfMlb4-T0uqrk.kp0pIEG4F09nMMbrh4ww0iChxBI7LqWNS6y2zQK3w7E",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "09/28/2023 15:16:00",
            "id": "e78063b9-73fc-4fbf-a33f-d0d800b53919"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Reading test 09.14 Beta",
            "id": "c2eeaaf2-766c-4b90-9a17-61625bc5a47d"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Monica Demo page",
            "id": "933b7a41-8993-4ee3-ab48-9fe5398d4ec7"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Geography Handout",
            "id": "41448a5b-4fc6-4623-b676-1a244ed21f76"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-26T19:04:55.525Z6684",
            "id": "2cb9ce0c-a4a1-40b8-b386-b43e0f05e7ed"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-26T17:50:37.465Z8959",
            "id": "e7a7c99f-4f0a-44cb-a8b2-52ec35eeeedd"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-26T17:32:09.731Z5741",
            "id": "d836f094-fca5-4112-8f45-47f838810140"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-25T21:22:30.326Z692",
            "id": "b563da70-710e-4a9b-ba86-94a4d73e5d21"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-25T19:16:38.719Z9672",
            "id": "dfa5ea11-bced-4e0f-8efa-68816161053f"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-25T18:51:45.092Z7001",
            "id": "99ce02e7-9bb1-4748-bdfd-1ae57c8468d1"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-21T18:28:53.609Z1831",
            "id": "26bbb6d7-9be4-40ef-be5c-7276f23f66bc"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Assignment 2 Module 3",
            "id": "45f317cb-c68b-49b8-a866-6041fad8f8a7"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2021-03-04T21_28_06_105Z",
            "id": "94ee9118-0eb2-4938-b74f-d3276d5f7756"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-27T17_51_51_801Z",
            "id": "99a74e26-72ff-48c3-b3f3-5a785f56ba7b"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-27T19_05_47_189Z",
            "id": "4d2e305a-8b71-434e-8907-a29a567367ea"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-27T17_33_04_992Z",
            "id": "02b19c54-d4fc-44da-a405-272ca79e4136"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-26T21_23_36_333Z",
            "id": "308ace04-0d16-4f98-b02d-cb72bb943112"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-26T19_17_32_401Z",
            "id": "34f27268-601c-4105-9adf-b3ae5ea1cc00"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-22T18_29_48_026Z",
            "id": "008391ec-1b3c-4915-94c7-c74f6a31d4ae"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-07-29T21_40_00_802Z",
            "id": "bc570aff-a29e-41a3-9409-651ef503fc92"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Assignment 1 Module 3",
            "id": "0a77c075-f53e-418a-842d-dc9ff6d50126"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Reading test 09.14 RC1",
            "id": "28992cce-fac0-4950-a836-5a524ded8599"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:37:10.084Z4329",
            "id": "8665727f-8ba2-47c8-a1ed-ea31046bf1a6"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:37:10.084Z4329",
            "id": "157fb040-4cab-4140-8701-d7ece66b0d37"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:36:48.089Z3518",
            "id": "bfcd6327-eca5-4aa7-a607-2862eb2f69a0"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:36:31.475Z1195",
            "id": "a5aacf28-0b34-4bdc-a474-d1c6ddcd6152"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:36:09.676Z7364",
            "id": "27c2ccd2-4ad0-44a7-bbe2-e77d82fd59c3"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:35:06.745Z3420",
            "id": "a3164e03-1535-4e6a-995f-921dddfc0b14"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:34:43.877Z2124",
            "id": "29c7d433-18e5-460b-b8ce-34d121d5468a"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:34:19.710Z1019",
            "id": "82cb7d5a-f81a-4961-ac9e-56c0ad2af2da"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T21:33:55.920Z561",
            "id": "f6eac971-770d-4439-b004-6436ea223280"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T20:45:03.412Z8652",
            "id": "28b6e2ca-9f5d-471b-9918-fab3fd24c06d"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T20:37:33.214Z3898",
            "id": "e7ade407-50dd-41cc-a6ec-aefe69c0a092"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T20:33:54.263Z3742",
            "id": "b8cc87e0-fd90-40c6-a5af-93b28f8e6df5"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T01:04:17.456Z4212",
            "id": "6c50f427-939c-4969-b1b5-b484c308e48a"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "Test assignment 05/23",
            "id": "52a3664e-8a65-4ad0-8d53-ec4f18affe36"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_21_48_138Z",
            "id": "9bcd3634-6af0-4271-887e-5747df227bef"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_20_30_342Z",
            "id": "5439dbb4-e176-4ace-83f3-2788d019d578"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_19_10_122Z",
            "id": "3728d695-8824-4fb1-be92-a2d1d8db3d28"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_17_59_822Z",
            "id": "416921a3-d3e8-438d-9929-4522db2022d0"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_16_42_183Z",
            "id": "022c0afc-cbc1-464d-af82-1a95689529fb"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T21_05_30_865Z",
            "id": "d506a438-cf5a-48d3-b1a7-75842433a239"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T20_45_43_164Z",
            "id": "6175bccf-5acb-412c-bba9-367a58b233db"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T20_38_19_011Z",
            "id": "a5f607a4-0601-4af6-b0fc-ddbfa846f28c"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T00_42_31_873Z",
            "id": "d045a652-4d0e-4ad8-baa4-bba15953e84e"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T00_38_22_106Z",
            "id": "0d1767e0-c650-40d6-9591-917c59554ad8"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-05T00_18_17_254Z",
            "id": "72c82a69-e1d7-43f3-a7cd-639d55b484f8"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-05-04T23_34_16_081Z",
            "id": "ffcc20a0-291f-4746-bcb5-fda72584f69b"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-04-11T00:48:13.302Z2855",
            "id": "38fef787-78df-4823-b07d-526e65db159d"
        },
        {
            "@odata.type": "#microsoft.graph.educationAssignment",
            "displayName": "2023-04-11T00:46:23.457Z1657",
            "id": "1784d3a7-efef-4ca5-978e-3dc180d06df0"
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
