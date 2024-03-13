---
title: "List daily activeUsersBreakdown (deprecated)"
description: "Get a list of daily activeUsersBreakdown objects on apps registered in your tenant configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List daily activeUsersBreakdown (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> This API is deprecated and will stop returning data on March 9, 2024. Use the [List monthly activeUsers](../api/monthlyuserinsightmetricsroot-list-activeusers.md) API instead.

Get a list of daily [activeUsersBreakdown](../resources/activeusersbreakdownmetric.md) objects on apps registered in your tenant configured for Microsoft Entra External ID for customers.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "dailyuserinsightmetricsroot_list_activeusersbreakdown" } -->
[!INCLUDE [permissions-table](../includes/permissions/dailyuserinsightmetricsroot-list-activeusersbreakdown-permissions.md)]

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/daily/activeUsersBreakdown
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

If successful, this method returns a `200 OK` response code and a collection of [activeUsersBreakdownMetric](../resources/activeusersbreakdownmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_dailyactiveusersbreakdownmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/daily/activeUsersBreakdown
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-dailyactiveusersbreakdownmetric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-dailyactiveusersbreakdownmetric-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-dailyactiveusersbreakdownmetric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-dailyactiveusersbreakdownmetric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-dailyactiveusersbreakdownmetric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-dailyactiveusersbreakdownmetric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-dailyactiveusersbreakdownmetric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-dailyactiveusersbreakdownmetric-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.activeUsersBreakdownMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.activeUsersBreakdownMetric)",
  "value": [
    {
      "id": "2",
      "appId": "7a30b8ef-42h3-4d1e-84ad-17d4ca3c9a52",
      "appName": "Bank",
      "count": 1,
      "factDate": "2023-09-28",
      "os": "Windows"
    },
    {
      "id": "1",
      "appId": "65e59557-d9d1-485f-87c5-80b92a99dfda",
      "appName": "Kiosk",
      "count": 1,
      "factDate": "2023-09-20",
      "os": "Ios"
    }
  ]
}
```
