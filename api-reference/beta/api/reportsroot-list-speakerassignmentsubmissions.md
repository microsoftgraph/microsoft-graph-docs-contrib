---
title: "List speakerAssignmentSubmissions"
description: "Get a list of speaker assignments that were submitted by a student."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 05/05/2025
---

# List speakerAssignmentSubmissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [speaker assignments](../resources/speakerassignmentsubmission.md) that were submitted by a student.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportsroot_list_speakerassignmentsubmissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportsroot-list-speakerassignmentsubmissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /education/reports/speakerAssignmentSubmissions
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$count`, `$skipToken`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [speakerAssignmentSubmission](../resources/speakerassignmentsubmission.md) objects in the response body.

## Examples

### Example 1: Get a list of the speaker assignment submissions from the last 24 hours

The following example shows how to get a list of the speaker assignment submissions from the last 24 hours.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_speakerAssignmentSubmissions_1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/reports/speakerAssignmentSubmissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-speakerassignmentsubmissions-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-speakerassignmentsubmissions-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-speakerassignmentsubmissions-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-speakerassignmentsubmissions-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-speakerassignmentsubmissions-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-speakerassignmentsubmissions-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-speakerassignmentsubmissions-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the default response from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.speakerAssignmentSubmission)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/speakerAssignmentSubmissions",
  "value": [
    {
      "assignmentId": "f2a0074a-eca7-4563-9de2-17fa0a274ed1",
      "classId": "36957e6c-2716-4794-b88b-5983e2502d7d",
      "submissionId": "3d292db5-189e-468b-8ca1-23ec6f74a8c2",
      "studentId": "6ade364a-ea37-4a58-82df-1814fb617618",
      "submissionDateTime": "2025-05-28T14:51:31.0663974Z",
      "lengthOfSubmissionInSeconds": 310.25,
      "wordsSpokenCount": 580,
      "monotoneOccurrencesCount": 5,
      "averageWordsPerMinutePace": 115,
      "fillerWordsOccurrencesCount": 9,
      "topFillerWords": [
        "so",
        "umm",
        "kind of"
      ],
      "topMispronouncedWords": [
        "prerequisites",
        "anonymous",
        "miscellaneous"
      ],
      "nonInclusiveLanguageOccurrencesCount": 1,
      "topNonInclusiveWordsAndPhrases": [
        "you guys"
      ],
      "repetitiveLanguageOccurrencesCount": 4,
      "topRepetitiveWordsAndPhrases": [
        "just",
        "right",
        "okay"
      ],
      "lostEyeContactOccurrencesCount": 3,
      "incorrectCameraDistanceOccurrencesCount": 0,
      "obstructedViewOccurrencesCount": 0
    },
    {
      "assignmentId": "1d468582-009d-42cb-9e32-172806ea5349",
      "classId": "4e9fef60-58a3-423d-9f38-fc0425bb91ca",
      "submissionId": "7058d2c1-9e3e-4dae-9932-970b8b45e87b",
      "studentId": "28e10270-0566-46ef-80ab-435608609047",
      "submissionDateTime": "2025-05-28T16:11:31.066402Z",
      "lengthOfSubmissionInSeconds": 198.5,
      "wordsSpokenCount": 380,
      "monotoneOccurrencesCount": 3,
      "averageWordsPerMinutePace": 135,
      "fillerWordsOccurrencesCount": 7,
      "topFillerWords": [
        "um",
        "actually"
      ],
      "topMispronouncedWords": [
        "specific",
        "particularly"
      ],
      "nonInclusiveLanguageOccurrencesCount": 0,
      "topNonInclusiveWordsAndPhrases": [],
      "repetitiveLanguageOccurrencesCount": 3,
      "topRepetitiveWordsAndPhrases": [
        "just"
      ],
      "lostEyeContactOccurrencesCount": null,
      "incorrectCameraDistanceOccurrencesCount": null,
      "obstructedViewOccurrencesCount": null
    }
  ]
}
```

### Example 2: Get a list of the speaker assignment submissions for a specific date using $filter

The following example shows how to get a list of the speaker assignment submissions for a specific date using the `$filter` query parameter. The requested time range must be 24 hours or shorter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_speakerAssignmentSubmissions_2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/reports/speakerAssignmentSubmissions?$filter=submissionDateTime gt 2025-05-28T00:00:00Z and submissionDateTime lt 2025-05-29T00:00:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-speakerassignmentsubmissions-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-speakerassignmentsubmissions-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-speakerassignmentsubmissions-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-speakerassignmentsubmissions-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-speakerassignmentsubmissions-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-speakerassignmentsubmissions-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-speakerassignmentsubmissions-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.speakerAssignmentSubmission)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/speakerAssignmentSubmissions",
  "value": [
    {
      "assignmentId": "3221a41a-6cdc-4deb-ad50-27a7e179ec27",
      "classId": "4e9e40aa-b9ac-4af6-8a1d-4c44c27080da",
      "submissionId": "3d292db5-189e-468b-8ca1-23ec6f74a8c2",
      "studentId": "6ade364a-ea37-4a58-82df-1814fb617618",
      "submissionDateTime": "2025-05-28T01:27:42.5458886Z",
      "lengthOfSubmissionInSeconds": 185.5,
      "wordsSpokenCount": 350,
      "monotoneOccurrencesCount": 8,
      "averageWordsPerMinutePace": 120,
      "fillerWordsOccurrencesCount": 14,
      "topFillerWords": [
        "um",
        "like",
        "you know",
        "actually"
      ],
      "topMispronouncedWords": [
        "particularly",
        "subsequently",
        "statistics"
      ],
      "nonInclusiveLanguageOccurrencesCount": 2,
      "topNonInclusiveWordsAndPhrases": [
        "you guys",
        "chairman"
      ],
      "repetitiveLanguageOccurrencesCount": 6,
      "topRepetitiveWordsAndPhrases": [
        "basically",
        "essentially",
        "so"
      ],
      "lostEyeContactOccurrencesCount": 5,
      "incorrectCameraDistanceOccurrencesCount": null,
      "obstructedViewOccurrencesCount": 0
    },
    {
      "assignmentId": "f88c2e12-2277-4e5a-bc19-207278e820c5",
      "classId": "39aeb453-fe67-4d19-95b9-e588095cb13e",
      "submissionId": "c0d9706a-23a8-4d27-ba9e-5c97a4cede34",
      "studentId": "27a9716d-05aa-4aaa-ae18-9fc10318a03d",
      "submissionDateTime": "2025-05-28T16:27:42.5458933Z",
      "lengthOfSubmissionInSeconds": 240.75,
      "wordsSpokenCount": 420,
      "monotoneOccurrencesCount": null,
      "averageWordsPerMinutePace": 105,
      "fillerWordsOccurrencesCount": 18,
      "topFillerWords": [
        "um",
        "uh",
        "like",
        "sort of"
      ],
      "topMispronouncedWords": [
        "necessarily",
        "specifically",
        "phenomenon"
      ],
      "nonInclusiveLanguageOccurrencesCount": 0,
      "topNonInclusiveWordsAndPhrases": [],
      "repetitiveLanguageOccurrencesCount": 9,
      "topRepetitiveWordsAndPhrases": [
        "literally",
        "actually",
        "basically"
      ],
      "lostEyeContactOccurrencesCount": 7,
      "incorrectCameraDistanceOccurrencesCount": 2,
      "obstructedViewOccurrencesCount": 1
    },
    {
      "assignmentId": "3ed5169c-ea75-4a3f-ae4e-6abe401064b0",
      "classId": "00bc1413-d329-4a52-a92a-51971c0a3cf3",
      "submissionId": "6e43da78-9d50-4fa7-b707-8fbd05c04e67",
      "studentId": "02bcca3c-70cf-437b-813d-dd2bc32bef02",
      "submissionDateTime": "2025-05-28T18:27:42.5458952Z",
      "lengthOfSubmissionInSeconds": 275.85,
      "wordsSpokenCount": 530,
      "monotoneOccurrencesCount": 15,
      "averageWordsPerMinutePace": 125,
      "fillerWordsOccurrencesCount": 22,
      "topFillerWords": [
        "like",
        "you know",
        "uh",
        "um",
        "I mean"
      ],
      "topMispronouncedWords": [
        "entrepreneur",
        "hierarchy",
        "infrastructure"
      ],
      "nonInclusiveLanguageOccurrencesCount": 3,
      "topNonInclusiveWordsAndPhrases": [
        "mankind",
        "guys",
        "manpower"
      ],
      "repetitiveLanguageOccurrencesCount": 11,
      "topRepetitiveWordsAndPhrases": [
        "basically",
        "sort of",
        "kind of",
        "so"
      ],
      "lostEyeContactOccurrencesCount": 8,
      "incorrectCameraDistanceOccurrencesCount": 3,
      "obstructedViewOccurrencesCount": 2
    }
  ]
}
```
