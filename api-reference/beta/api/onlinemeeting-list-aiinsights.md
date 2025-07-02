---
title: "List aiInsights"
description: "Get the list of callAiInsight objects associated with an onlineMeeting."
author: "Anjali-Patle"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List aiInsights

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callAiInsight](../resources/callaiinsight.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md).

> [!NOTE]
> * This API has license requirements. For more information, see [License requirements for Teams meeting AI insights APIs](/graph/teams-licenses#license-requirements-for-teams-meeting-ai-insights-apis).
> * This API works differently in one or more national clouds. For more information, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onlinemeeting_list_aiinsights" } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-list-aiinsights-permissions.md)]

> [!NOTE]
> This API works only for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /copilot/users/{userId}/onlineMeetings/{onlineMeetingId}/aiInsights
```

## Optional query parameters

This method supports the `$select` and `$filter` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callAiInsight](../resources/callaiinsight.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callaiinsight",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "YTc3OTFhNWQtNTgwZC00OGZjLWJhYjQtOTFmNTUzMmU4MzEyqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy"]
}
-->
``` http
GET https://graph.microsoft.com/beta/copilot/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/YTc3OTFhNWQtNTgwZC00OGZjLWJhYjQtOTFmNTUzMmU4MzEyqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/aiInsights
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-callaiinsight-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-callaiinsight-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-callaiinsight-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-callaiinsight-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-callaiinsight-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-callaiinsight-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-callaiinsight-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callAiInsight)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#copilot/users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('YTc3O...')/aiInsights",
  "@odata.count": 1,
  "value": [
    {
      "id": "VjEj...",
      "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
      "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
      "createdDateTime": "2024-05-27T08:17:10.7261294Z",
      "endDateTime": "2024-05-27T08:17:10.7261294Z"
    }
  ]
}
```
