---
title: "List monthly authentications"
description: "Get a list of monthly authentications on apps registered in your tenant configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly authentications
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of monthly [authentications](../resources/authenticationsmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "monthlyuserinsightmetricsroot_list_authentications" } -->
[!INCLUDE [permissions-table](../includes/permissions/monthlyuserinsightmetricsroot-list-authentications-permissions.md)]

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/monthly/authentications
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

If successful, this method returns a `200 OK` response code and a collection of [authenticationsMetric](../resources/authenticationsmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_monthlyauthenticationsmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/authentications
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-monthlyauthenticationsmetric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-monthlyauthenticationsmetric-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-monthlyauthenticationsmetric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-monthlyauthenticationsmetric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-monthlyauthenticationsmetric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-monthlyauthenticationsmetric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-monthlyauthenticationsmetric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-monthlyauthenticationsmetric-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationsMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.authenticationsMetric)",
  "value": [
    {
      "id": "3",
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "DE",
      "attemptsCount": 3,
      "successCount": 3,
      "appid": "10e90284-3dd4-4f82-a641-55ee4068b633"
    },
    {
      "id": "2",
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "BR",
      "attemptsCount": 2,
      "successCount": 2,
      "appid": "10e90284-3dd4-4f82-a641-55ee4068b633"
    },
    {
      "id": "1",
      "factDate": "2023-09-21",
      "os": "Windows",
      "country": "IL",
      "attemptsCount": 1,
      "successCount": 0,
      "appid": "ecf4f310-6d09-4506-b9b4-0ee64f4a8d6d"
    }
  ]
}
```
