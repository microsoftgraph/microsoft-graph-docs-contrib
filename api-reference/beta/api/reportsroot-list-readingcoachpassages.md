---
title: "List readingCoachPassages"
description: "Get a list of Reading Coach passages that were practiced by a student."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 06/25/2025
---

# List readingCoachPassages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [Reading Coach passages](../resources/readingcoachpassage.md) that were practiced by a student.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportsroot_list_readingcoachpassages" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportsroot-list-readingcoachpassages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/readingCoachPassages
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

If successful, this method returns a `200 OK` response code and a collection of [readingCoachPassage](../resources/readingcoachpassage.md) objects in the response body.

## Examples

### Example 1: Get a list of the Reading Coach passages from the last 24 hours

The following example shows how to get a list of the Reading Coach passages from the last 24 hours.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_readingCoachPassages_1"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/readingCoachPassages
```

#### Response

The following example shows the default response from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.readingCoachPassage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/readingCoachPassages",
  "value": [
    {
      "practicedAtDateTime": "2025-06-25T14:51:31.0663974Z",
      "studentId": "27a9716d-05aa-4aaa-ae18-9fc10318a03d",
      "practiceWords": [
        "science",
        "experiment",
        "laboratory",
        "hypothesis",
        "observation"
      ],
      "wordsPerMinute": 55.5,
      "wordsAccuracyPercentage": 92.0,
      "timeSpentReadingInSeconds": 165.75,
      "languageTag": "en-US",
      "storyType": "userProvided",
      "isReadingCompleted": true
    },
    {
      "practicedAtDateTime": "2025-06-25T12:51:31.0663974Z",
      "studentId": "27a9716d-05aa-4aaa-ae18-9fc10318a03d",
      "practiceWords": [
        "tortoise",
        "experiment"
      ],
      "wordsPerMinute": 52.5,
      "wordsAccuracyPercentage": 94.5,
      "timeSpentReadingInSeconds": 180.5,
      "languageTag": "en-US",
      "storyType": "aiGenerated",
      "isReadingCompleted": true
    }
  ]
}
```

### Example 2: Get a list of the Reading Coach passages for a specific date using $filter

The following example shows how to get the Reading Coach passages for a specific date using the `$filter` query parameter. The requested time range must be 24 hours or shorter.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_readingCoachPassages_2"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/readingCoachPassages?$filter=practicedAtDateTime gt 2025-06-22T00:00:00Z and practicedAtDateTime lt 2025-06-23T00:00:00Z
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.readingCoachPassage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/readingCoachPassages",
  "value": [
    {
      "practicedAtDateTime": "2025-06-22T14:51:31.0663974Z",
      "studentId": "27a9716d-05aa-4aaa-ae18-9fc10318a03d",
      "practiceWords": [
        "science",
        "experiment",
        "laboratory",
        "hypothesis",
        "observation"
      ],
      "wordsPerMinute": 55.5,
      "wordsAccuracyPercentage": 92.0,
      "timeSpentReadingInSeconds": 165.75,
      "languageTag": "en-US",
      "storyType": "userProvided",
      "isReadingCompleted": true
    },
    {
      "practicedAtDateTime": "2025-06-22T12:51:31.0663974Z",
      "studentId": "27a9716d-05aa-4aaa-ae18-9fc10318a03d",
      "practiceWords": [
        "tortoise",
        "experiment"
      ],
      "wordsPerMinute": 52.5,
      "wordsAccuracyPercentage": 94.5,
      "timeSpentReadingInSeconds": 180.5,
      "languageTag": "en-US",
      "storyType": "aiGenerated",
      "isReadingCompleted": true
    }
  ]
}
```
