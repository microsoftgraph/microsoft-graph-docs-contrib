---
title: "List reflectCheckInResponses"
description: "Get a list of Reflect check-ins that were submitted by a student."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 08/14/2024
---

# List reflectCheckInResponses

Namespace: microsoft.graph

Get a list of [Reflect check-ins](../resources/reflectcheckinresponse.md) that were submitted by a student.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportsroot_list_reflectcheckinresponses" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportsroot-list-reflectcheckinresponses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/reflectCheckInResponses
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

If successful, this method returns a `200 OK` response code and a collection of [reflectCheckInResponse](../resources/reflectcheckinresponse.md) objects in the response body.

## Examples

### Example 1: Get a list of the Reflect check-in responses from the last 24 hours

The following example shows how to get a list of the Reflect check-in responses from the last 24 hours.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_reflectCheckinResponses_1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/education/reports/reflectCheckInResponses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-reflectcheckinresponses-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-reflectcheckinresponses-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-reflectcheckinresponses-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-reflectcheckinresponses-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-reflectcheckinresponses-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-reflectcheckinresponses-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-reflectcheckinresponses-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the default response that includes Reflect check-in responses from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.reflectCheckInResponse)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/v1.0/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "checkInId": "39878fe8-cb41-3feb-c547-90b37160ceb6",
      "creatorId": "52115927-a289-4a3b-9b8c-95049ee3f7c3",
      "classId": "56fb315f-129d-4ad3-90fd-99398f9eb922",
      "checkInTitle": "How are you feeling today?",
      "isClosed": true,
      "createdDateTime": "2025-06-17T16:53:03Z",
      "responderId": "e3030ce4-d660-434a-b569-071402d751b5",
      "responseFeedback": "neutral",
      "responseEmotion": "none",
      "submitDateTime": "2025-06-17T16:53:50.3020719Z"
    },
    {
      "checkInId": "2cbcf1f4-d8e2-f9d3-6ce7-ec92caa792bd",
      "creatorId": "3b1bb03f-f52b-4d21-8f60-69ba571aaa61",
      "classId": "f92cf95c-2a24-4dab-8ced-89521a1e4ce0",
      "checkInTitle": "How are you feeling today?",
      "isClosed": true,
      "createdDateTime": "2025-06-17T16:50:53Z",
      "responderId": "e3030ce4-d660-434a-b569-071402d751b5",
      "responseFeedback": "neutral",
      "responseEmotion": "none",
      "submitDateTime": "2025-06-17T16:51:17.8334267Z"
    }
  ]
}
```

### Example 2: Get a list of the Reflect check-in responses for a specific date using $filter

The following example shows how to get a list of the Reflect check-in responses for a specific date using the `$filter` query parameter. The requested time range must be 24 hours or shorter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_reflectCheckinResponses_2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/education/reports/reflectCheckInResponses?$filter=submitDateTime gt 2025-06-11T00:00:00.000Z and submitDateTime lt 2025-06-12T00:00:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-reflectcheckinresponses-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-reflectcheckinresponses-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-reflectcheckinresponses-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-reflectcheckinresponses-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-reflectcheckinresponses-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-reflectcheckinresponses-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-reflectcheckinresponses-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.reflectCheckInResponse)",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/v1.0/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "checkInId": "b815ab15-7a52-1cf7-898d-9a018cfb3369",
      "creatorId": "df8123ca-5226-4227-8bc1-94b753fab5a4",
      "classId": "a03ed51d-a5a2-4b5d-9b8b-21bae3fff05c",
      "checkInTitle": "How are you feeling today?",
      "isClosed": true,
      "createdDateTime": "2025-06-11T16:58:18Z",
      "responderId": "a9db035b-f866-4c80-9608-d3364ae8c479",
      "responseFeedback": "unpleasant",
      "responseEmotion": "none",
      "submitDateTime": "2025-06-11T17:04:29.0427967Z"
    },
    {
      "checkInId": "b815ab15-7a52-1cf7-898d-9a018cfb3369",
      "creatorId": "df8123ca-5226-4227-8bc1-94b753fab5a4",
      "classId": "a03ed51d-a5a2-4b5d-9b8b-21bae3fff05c",
      "checkInTitle": "How are you feeling today?",
      "isClosed": true,
      "createdDateTime": "2025-06-11T16:58:18Z",
      "responderId": "9856811e-2e4d-42bd-a1e7-58d52155de23",
      "responseFeedback": "pleasant",
      "responseEmotion": "none",
      "submitDateTime": "2025-06-11T17:00:47.7001549Z"
    }
  ]
}
```
