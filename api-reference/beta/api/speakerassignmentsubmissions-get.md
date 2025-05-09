---
title: "Get speakerAssignmentSubmissions"
description: "Read the properties and relationships of speakerAssignmentSubmission objects."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 05/05/2025
---

# Get speakerAssignmentSubmissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [speakerAssignmentSubmission](../resources/speakerAssignmentSubmission.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "speakerAssignmentSubmissions-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/speakerassignmentsubmissions-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/speakerAssignmentSubmissions
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
If successful, this method returns a `200 OK` response code and a [speakerAssignmentSubmission](../resources/speakerassignmentsubmission.md) collection of speakerAssignmentSubmission in the response body.

## Examples

### Example 1: Get the speaker assignment submissions from the last 24 hours

The following example shows how to get the speaker assignment submissions from the last 24 hours.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_speakerAssignmentSubmissions"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/speakerAssignmentSubmissions
```

#### Response
The following example shows the default response from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.speakerAssignmentSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/speakerAssignmentSubmissions",
    "@odata.count": 2,
    "value": [
        {
            "assignmentId": "3221a41a-6cdc-4deb-ad50-27a7e179ec27",
            "classId": "4e9e40aa-b9ac-4af6-8a1d-4c44c27080da",
            "submissionId": "3d292db5-189e-468b-8ca1-23ec6f74a8c2",
            "studentId": "6ade364a-ea37-4a58-82df-1814fb617618",
            "submissionDateTime": "2025-04-16T00:36:01.4848349Z",
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
            "submissionDateTime": "2025-04-16T15:36:01.4850452Z",
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
        }
    ]
}
```

### Example 2: Get the reading assignment submissions for a specific date using $filter

The following example shows how to get the reading assignment submissions for a specific date using the `$filter` query parameter.

#### Request

The following example shows a request.

``` http
GET https://graph.microsoft.com/beta/education/reports/readingAssignmentSubmissions?$filter=submitDateTime gt 2023-10-10T00:00:00.000Z
```
---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.speakerAssignmentSubmissions"
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
