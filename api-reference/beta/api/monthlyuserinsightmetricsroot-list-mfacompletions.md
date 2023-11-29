---
title: "List monthly mfaCompletions"
description: "Get a list of monthly MFA completions on apps registered in your tenant configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List monthly mfaCompletions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of monthly [MFA completions](../resources/mfacompletionmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Insights-UserMetric.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Insights-UserMetric.Read.All|

[!INCLUDE [rbac-ciam-user-insights-apis](../includes/rbac-for-apis/rbac-ciam-user-insights-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/userInsights/monthly/mfaCompletions
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mfaCompletionMetric](../resources/mfacompletionmetric.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_monthlymfacompletionmetric"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/userInsights/monthly/mfaCompletions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-monthlymfacompletionmetric-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-monthlymfacompletionmetric-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-monthlymfacompletionmetric-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-monthlymfacompletionmetric-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-monthlymfacompletionmetric-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-monthlymfacompletionmetric-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-monthlymfacompletionmetric-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-monthlymfacompletionmetric-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mfaCompletionMetric)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.mfaCompletionMetric)",
  "value": [
    {
      "id": "8",
      "factDate": "2023-07-01",
      "mfaMethod": "PhoneAppNotification",
      "successCount": 6,
      "attemptsCount": 6,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    },
    {
      "id": "7",
      "factDate": "2023-07-01",
      "mfaMethod": "PhoneAppNotification",
      "successCount": 3,
      "attemptsCount": 4,
      "os": "OSX",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    },
    {
      "id": "6",
      "factDate": "2023-08-01",
      "mfaMethod": "PhoneAppOTP",
      "successCount": 1,
      "attemptsCount": 1,
      "os": "Windows",
      "appId": "c44d4083-3bb0-49d1-b47d-974f53cbbf3e"
    }
  ]
}
```
