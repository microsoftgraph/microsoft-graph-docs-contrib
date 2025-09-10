---
title: "List readingAssignmentSubmissions"
description: "Get a list of reading assignments that were submitted by a student."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 07/29/2024
---

# List readingAssignmentSubmissions

Namespace: microsoft.graph

Get a list of [reading assignments](../resources/readingassignmentsubmission.md) that were submitted by a student.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportsroot_list_readingassignmentsubmissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportsroot-list-readingassignmentsubmissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/readingAssignmentSubmissions
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$count`, `$skiptoken` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [readingAssignmentSubmission](../resources/readingassignmentsubmission.md) objects in the response body.

## Examples

### Example 1: Get a list of the reading assignment submissions from the last 24 hours

The following example shows how to get a list of the reading assignment submissions from the last 24 hours.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_readingassignmentsubmissions_1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/education/reports/readingAssignmentSubmissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-readingassignmentsubmissions-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-readingassignmentsubmissions-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-readingassignmentsubmissions-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-readingassignmentsubmissions-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-readingassignmentsubmissions-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-readingassignmentsubmissions-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-readingassignmentsubmissions-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the default response from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.readingAssignmentSubmission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/reports/readingAssignmentSubmissions",
  "value": [
    {
      "action": "Attempt",
      "assignmentId": "7622da88-d7fd-4542-a62b-40e11304675e",
      "classId": "d208c32d-6d82-442f-bedd-d730d0d2a539",
      "submissionId": "22142311-f797-90ec-997e-a8b16d3d4479",
      "studentId": "392d15be-6e42-4e50-babf-56103abfc525",
      "submissionDateTime": "2025-06-16T23:56:17.1505334Z",
      "accuracyScore": 25.0,
      "wordsPerMinute": 135.0,
      "wordCount": 138,
      "mispronunciations": 1,
      "omissions": 99,
      "insertions": 3,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 100.0,
      "missedShorts": 0,
      "missedExclamationMarks": 1,
      "missedPeriods": 1,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 1,
      "challengingWords": [
        {
          "word": "many",
          "count": 1
        }
      ]
    },
    {
      "action": "Attempt",
      "assignmentId": "7622da88-d7fd-4542-a62b-40e11304675e",
      "classId": "d208c32d-6d82-442f-bedd-d730d0d2a539",
      "submissionId": "22142311-f797-90ec-997e-a8b16d3d4479",
      "studentId": "392d15be-6e42-4e50-babf-56103abfc525",
      "submissionDateTime": "2025-06-16T23:54:22.6784676Z",
      "accuracyScore": 36.0,
      "wordsPerMinute": 190.0,
      "wordCount": 94,
      "mispronunciations": 6,
      "omissions": 54,
      "insertions": 0,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 100.0,
      "missedShorts": 0,
      "missedExclamationMarks": 0,
      "missedPeriods": 5,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 0,
      "challengingWords": [
        {
          "word": "polar",
          "count": 1
        },
        {
          "word": "bears",
          "count": 1
        },
        {
          "word": "snow",
          "count": 1
        },
        {
          "word": "closed",
          "count": 1
        },
        {
          "word": "drinks",
          "count": 1
        },
        {
          "word": "milk",
          "count": 1
        }
      ]
    }
  ]
}
```

### Example 2: Get a list of the reading assignment submissions for a specific date using $filter

The following example shows how to get a list of the reading assignment submissions for a specific date using the `$filter` query parameter. The requested time range must be 24 hours or shorter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ReadingAssignmentSubmissions_2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/education/reports/readingAssignmentSubmissions?$filter=submissionDateTime gt 2025-06-10T00:00:00.000Z and submissionDateTime lt 2025-06-11T00:00:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-readingassignmentsubmissions-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-readingassignmentsubmissions-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-readingassignmentsubmissions-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-readingassignmentsubmissions-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-readingassignmentsubmissions-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-readingassignmentsubmissions-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-readingassignmentsubmissions-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.readingAssignmentSubmission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/reports/readingAssignmentSubmissions",
  "value": [
    {
      "action": "Attempt",
      "assignmentId": "f45e1c35-81fd-48b0-b214-1216d6b42203",
      "classId": "dd1324ff-93f7-4e57-8bd4-355f180cd8f1",
      "submissionId": "2e8f9537-75e1-bf0c-83dd-a2c3de140aa4",
      "studentId": "225031f2-88ae-4566-b636-6a032dfbed4c",
      "submissionDateTime": "2025-06-10T21:43:21.9472942Z",
      "accuracyScore": 38.0,
      "wordsPerMinute": 135.0,
      "wordCount": 94,
      "mispronunciations": 3,
      "omissions": 55,
      "insertions": 0,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 0.0,
      "missedShorts": 0,
      "missedExclamationMarks": 0,
      "missedPeriods": 4,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 0,
      "challengingWords": [
        {
          "word": "bears",
          "count": 1
        },
        {
          "word": "eyes",
          "count": 1
        },
        {
          "word": "closed",
          "count": 1
        }
      ]
    },
    {
      "action": "Attempt",
      "assignmentId": "57717841-1965-4ff3-9601-b0366e583069",
      "classId": "b609d225-c661-4562-933a-e23679175f0b",
      "submissionId": "ca42757d-7914-afe2-b044-f9695694b39b",
      "studentId": "392d15be-6e42-4e50-babf-56103abfc525",
      "submissionDateTime": "2025-06-10T20:21:39.4111647Z",
      "accuracyScore": 0.0,
      "wordsPerMinute": 0.0,
      "wordCount": 150,
      "mispronunciations": 0,
      "omissions": 150,
      "insertions": 0,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 0.0,
      "missedShorts": 0,
      "missedExclamationMarks": 0,
      "missedPeriods": 0,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 0,
      "challengingWords": []
    },
    {
      "action": "EditMiscue",
      "assignmentId": "c5c08b85-35fa-48d6-99bb-2168e53fd041",
      "classId": "d208c32d-6d82-442f-bedd-d730d0d2a539",
      "submissionId": "3ef9af57-20f1-d7c5-3705-8ec80db3121c",
      "studentId": "392d15be-6e42-4e50-babf-56103abfc525",
      "submissionDateTime": "2025-06-10T20:10:09.4739427Z",
      "accuracyScore": 0.0,
      "wordsPerMinute": 0.0,
      "wordCount": 384,
      "mispronunciations": 0,
      "omissions": 383,
      "insertions": 1,
      "selfCorrections": 0,
      "repetitions": 0,
      "monotoneScore": 0.0,
      "missedShorts": 0,
      "missedExclamationMarks": 0,
      "missedPeriods": 0,
      "missedQuestionMarks": 0,
      "unexpectedPauses": 0,
      "challengingWords": []
    }
  ]
}
```
