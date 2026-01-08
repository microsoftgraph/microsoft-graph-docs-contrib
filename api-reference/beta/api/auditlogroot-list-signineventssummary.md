---
title: "List signInEventsActivity objects"
description: "Get a list of the number of signin events for a specific day."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List signInEventsActivity objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the number of signin events for a specific day as defined in the [signInEventsActivity](../resources/signineventsactivity.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-list-signineventssummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-signineventssummary-permissions.md)]

[!INCLUDE [rbac-directoryaudit-apis](../includes/rbac-for-apis/rbac-directoryaudit-apis.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /auditLogs/signInEventsSummary
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [signInEventsActivity](../resources/signineventsactivity.md) resource. For general information, see [OData query parameters](/graph/query-parameters). You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [signInEventsActivity](../resources/signineventsactivity.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_signineventsactivity"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signInEventsSummary
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-signineventsactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-signineventsactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-signineventsactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-signineventsactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-signineventsactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-signineventsactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInEventsActivity"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "06b0268b-94ac-4197-a694-5596da2de958",
      "signInCount": 4518,
      "activityDateTime": "2025-02-25T00:00:00Z"
    },
    {
      "id": "060ce0ab-5bf0-4209-9b41-8fa0a301a548",
      "signInCount": 9595,
      "activityDateTime": "2025-02-24T00:00:00Z"
    },
    {
      "id": "47b16736-986f-43f6-96ea-81b2605e028d",
      "signInCount": 9921,
      "activityDateTime": "2025-02-23T00:00:00Z"
    },
    {
      "id": "87d8b507-b775-49d5-804f-4990bf5dc539",
      "signInCount": 13621,
      "activityDateTime": "2025-02-22T00:00:00Z"
    }
  ]
}
```

