---
title: "Get readingAssignmentSubmission"
description: "Read the properties and relationships of a readingAssignmentSubmission object."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 07/29/2024
---

# Get readingAssignmentSubmission

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [readingAssignmentSubmission](../resources/readingassignmentsubmission.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "readingassignmentsubmission-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/readingassignmentsubmission-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/readingAssignmentSubmission
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

The `$filter` and `$orderby` query parameters are supported for all properties. 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [readingAssignmentSubmission](../resources/readingassignmentsubmission.md) object in the response body.

## Examples

### Example 1: Get the reading assignment submissions from the last 24 hours

The following example shows how to get the reading assignment submissions from the last 24 hours.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_readingassignmentsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/readingAssignmentSubmission
```

#### Response

The following example shows the default response from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.readingAssignmentSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/readingAssignmentSubmissions",
  "value": [
    {
      "action": "Attempt",
      "assignmentId": "66232464-3e0d-419a-a0b9-dbcd332cb606",
      "classId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "submissionId": "e6ea12ae-3c9b-48b5-a15a-e1979fd2b0ca",
      "studentId": "34fb22eb-6e42-42e4-8a3c-b2e33faf5a56",
      "submissionDateTime": "2023-09-19T11:44:16.0821219Z",
      "accuracyScore": 94,
      "wordsPerMinute": 154,
      "wordCount": 98,
      "mispronunciations": 1,
      "omissions": 1,
      "insertions": 4,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 2.4,
      "missedShorts": 0,
      "missedExclamationMarks": 0,
      "missedPeriods": 9,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 0,
      "challengingWords": [
        {
          "Word": "drinks",
          "Count": 2
        },
        {
          "Word": "boost",
          "Count": 6
        }
      ]
    }
  ]
}
```

### Example 2: Get the reading assignment submissions for a specific date using $filter

The following example shows how to get the reading assignment submissions for a specific date using the `$filter` query parameter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ReadingAssignmentSubmission_filter"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/readingAssignmentSubmissions?$filter=submitDateTime gt 2023-10-10T00:00:00.000Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-readingassignmentsubmission-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-readingassignmentsubmission-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-readingassignmentsubmission-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-readingassignmentsubmission-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-readingassignmentsubmission-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-readingassignmentsubmission-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.readingAssignmentSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/readingAssignmentSubmissions",
  "value": [
    {
      "action": "Attempt",
      "assignmentId": "c43f6736-7faf-4cee-a742-55a583bd3c18",
      "classId": "adef893e-ff63-4b47-a081-7ea03e7dba6a",
      "submissionId": "980cc32e-d476-66f7-2d8d-5e7b4f92f01c",
      "studentId": "12d3e83c-786e-4b02-92bd-8fd5290d6d87",
      "submissionDateTime": "2024-01-11T00:20:33.9812849Z",
      "accuracyScore": 85,
      "wordsPerMinute": 90,
      "wordCount": 200,
      "mispronunciations": 5,
      "omissions": 3,
      "insertions": 2,
      "selfCorrections": 4,
      "repetitions": 3,
      "monotoneScore": 70,
      "missedShorts": 2,
      "missedExclamationMarks": 1,
      "missedPeriods": 1,
      "missedQuestionMarks": 1,
      "unexpectedPauses": 2,
      "challengingWords": [
        {
          "word": "photosynthesis",
          "count": 2
        },
        {
          "word": "ecosystem",
          "count": 6
        },
        {
          "word": "biodiversity",
          "count": 6
        }
      ]
    }
  ]
}
```
