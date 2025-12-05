---
title: "List signInEventsAppActivity objects"
description: "Get a list of applications and their number of sign-in events in the past 30 days."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List signInEventsAppActivity objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of applications and their number of sign-in events in the past 30 days as defined in the [signInEventsAppActivity](../resources/signineventsappactivity.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-list-signineventsappsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-signineventsappsummary-permissions.md)]

[!INCLUDE [rbac-directoryaudit-apis](../includes/rbac-for-apis/rbac-directoryaudit-apis.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /auditLogs/signInEventsAppSummary
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [signInEventsAppActivity](../resources/signineventsappactivity.md) resource. For general information, see [OData query parameters](/graph/query-parameters). You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1,000 records.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [signInEventsAppActivity](../resources/signineventsappactivity.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_signineventsappactivity"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signInEventsAppSummary
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-signineventsappactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-signineventsappactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-signineventsappactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-signineventsappactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-signineventsappactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-signineventsappactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInEventsAppActivity"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "signInCount": 214378,
      "tenantId": "00000000-0000-0000-0000-000000000000"
    },
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "signInCount": 30484,
      "tenantId": "00000000-0000-0000-0000-000000000000"
    },
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "signInCount": 17227,
      "tenantId": "00000000-0000-0000-0000-000000000000"
    },
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "signInCount": 10234,
      "tenantId": "00000000-0000-0000-0000-000000000000"
    }
  ]
}
```

