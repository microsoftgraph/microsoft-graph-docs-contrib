---
title: "List daily summary"
description: "Get a list of daily insightSummary objects on apps registered in your tenant configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List daily summary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of daily [insightSummary](../resources/insightsummary.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dailyuserinsightmetricsroot_list_summary" } -->
[!INCLUDE [permissions-table](../includes/permissions/dailyuserinsightmetricsroot-list-summary-permissions.md)]

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
daily GET /userInsightsRoot/daily/summary
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [insightSummary](../resources/insightsummary.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_dailyinsightsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/userInsightsRoot/daily/summary
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.insightSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.insightSummary)",
  "value": [
    {
      "id": "3",
      "factDate": "2023-09-23",
      "activeUsers": 1,
      "authenticationRequests": 4,
      "authenticationCompletions": 2,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "LINUX",
      "appId": "10e90284-3cc4-4f82-a641-55ee4068d633"
    },
    {
      "id": "2",
      "factDate": "2023-09-25",
      "activeUsers": 1,
      "authenticationRequests": 19,
      "authenticationCompletions": 7,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "WINDOWS",
      "appId": "193e5365-3872-4bc8-b32f-b7620ef9da0f"
    },
    {
      "id": "1",
      "factDate": "2023-09-26",
      "activeUsers": 2,
      "authenticationRequests": 1,
      "authenticationCompletions": 1,
      "securityTextRequests": 0,
      "securityTextCompletions": 0,
      "securityVoiceRequests": 0,
      "securityVoiceCompletions": 0,
      "os": "MACOS",
      "appId": "7e30b8ed-42a3-4d1f-89ad-14d4df3c9e52"
    }
  ]
}
```
