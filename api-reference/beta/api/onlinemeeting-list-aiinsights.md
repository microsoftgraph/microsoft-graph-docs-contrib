---
title: "List aiInsights"
description: "Get the list of callAiInsight objects associated with a scheduled onlineMeeting."
author: "Anjali-Patle"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List aiInsights

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callAiInsight](../resources/callaiinsight.md) objects associated with a scheduled [onlineMeeting](../resources/onlinemeeting.md). This API doesn't support getting call AI insights from channel meetings. 

> [!NOTE]
> * This API doesn't support meetings created with [Create onlineMeeting](/graph/api/application-post-onlinemeetings) that aren't associated with an event on the user's calendar.
> * This API works differently in one or more national clouds. For more details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onlinemeeting-list-aiinsights-permissions"
}
-->
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

This method supports the `$select`, `$filter`, and `$top` [OData query parameters](/graph/query-parameters) to customize the response.

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

<!-- {
  "blockType": "request",
  "name": "list_callaiinsight",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiO..."]
}
-->
``` http
GET https://graph.microsoft.com/beta/copilot/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiO.../aiInsights
```

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiO...')/aiInsights",
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
