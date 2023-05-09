---
title: "Update educationassignment"
description: "Update an educationAssigment object."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Update educationassignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [educationAssignment](../resources/educationassignment.md) object. 

Only teachers in the class can do this. Note that you can't use a PATCH request to change the status of an **assignment**. Use the [publish](../api/educationassignment-publish.md) action to change the **assignment** status.

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
PATCH /education/classes/{class-id}/assignments/{assignment-id}
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|addedStudentAction|String| Controls the behavior for students who are added after the assignment is published.|
|addToCalendarAction|educationAddToCalendarOptions|Optional field to control the assignment behavior  for adding assignments to students' and teachers' calendars when the assignment is published. Possible values are: `none`, `studentsAndPublisher`, `studentsAndTeamOwners`, `studentsOnly` and `unknownFutureValue`. Default value is `none`. Cannot be modified when assignment is in **Published** state. |
|allowLateSubmissions|Boolean| Whether submissions can be submitted after the due date.|
|allowStudentsToAddResourcesToSubmission|Boolean| Whether a student can add resources to a submission. Indicated whether the only items on the submission came from the assignment resource list. |
|assignDateTime|DateTimeOffset| Date the assignment should be published to students. Cannot be edited after the assignment has been published. |
|assignTo|[educationAssignmentRecipient](../resources/educationassignmentrecipient.md)| Students who get the assignment.|
|closeDateTime|DateTimeOffset| Date when the assignment will be closed for submissions. This is an optional field that can be null if the assignment does not allowLateSubmissions or the closeDateTime is the same as the dueDateTime but if specified, it must be greater than or equal to the dueDateTime.|
|displayName|String| Name of assignment. |
|dueDateTime|DateTimeOffset| Date assignment is due. |
|grading|[educationAssignmentGradeType](../resources/educationassignmentgradetype.md)| How the assignment will be graded.|
|instructions|itemBody| Instructions to be given to the students along with the assignment. |
|notificationChannelUrl|String| Channel to post assignment publish notification. Updating the channel URL is not allowed after the assignment has been published and is only allowed when the **assignTo** value is [educationAssignmentClassRecipient](../resources/educationassignmentclassrecipient.md).|

## Response
If successful, this method returns a `200 OK` response code and an updated [educationAssignment](../resources/educationassignment.md) object in the response body.
## Example
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["72a7baec-c3e9-4213-a850-f62de0adad5f","4679bc1b-90c5-45af-ae1a-d5357672ed39"],
  "name": "update_educationassignment"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/4679bc1b-90c5-45af-ae1a-d5357672ed39
Content-type: application/json

{
    "displayName": "Reading and review test 09.03 #5",
    "instructions": {
        "contentType": "text",
        "content": "Read chapter 5 and write your review"
    },
    "dueDateTime": "2021-09-10T00:00:00Z",
    "addedStudentAction": "none",
    "addToCalendarAction": "studentsAndPublisher"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response. 

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('72a7baec-c3e9-4213-a850-f62de0adad5f')/assignments/$entity",
    "classId": "72a7baec-c3e9-4213-a850-f62de0adad5f",
    "displayName": "Reading and review test 09.03 #5",
    "closeDateTime": null,
    "dueDateTime": "2021-09-10T00:00:00Z",
    "assignDateTime": null,
    "assignedDateTime": null,
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "createdDateTime": "2021-09-03T23:57:14.6088791Z",
    "lastModifiedDateTime": "2021-09-04T15:01:35.3361649Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "draft",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2272a7baec-c3e9-4213-a850-f62de0adad5f%5C%22,%5C%22displayName%5C%22%3Anull,%5C%22assignmentIds%5C%22%3A%5B%5C%224679bc1b-90c5-45af-ae1a-d5357672ed39%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "studentsAndPublisher",
    "addedStudentAction": "none",
    "id": "4679bc1b-90c5-45af-ae1a-d5357672ed39",
    "instructions": {
        "content": "Read chapter 5 and write your review",
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
```

## See also

* [States, transitions, and limitations for assignments and submissions](/graph/assignments-submissions-states-transition)
* [Specify the default channel for education assignment notifications](/graph/education-build-notificationchannelurl)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update educationassignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


