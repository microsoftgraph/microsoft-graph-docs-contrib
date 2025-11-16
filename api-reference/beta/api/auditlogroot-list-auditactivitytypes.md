---
title: "List auditActivityType objects"
description: "Get a list of the available audit activity types as defined in the auditActivityType object."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List auditActivityType objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a list of all of the possible audit log types and which services they come from as defined in the [auditActivityType](../resources/auditactivitytype.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-list-auditactivitytypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-auditactivitytypes-permissions.md)]

[!INCLUDE [rbac-directoryaudit-apis](../includes/rbac-for-apis/rbac-directoryaudit-apis.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /auditLogs/auditActivityTypes
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [auditActivityType](../resources/auditactivitytype.md) resource. For general information, see [OData query parameters](/graph/query-parameters). You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [auditActivityType](../resources/auditactivitytype.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_auditactivitytype"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/auditActivityTypes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-auditactivitytype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-auditactivitytype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-auditactivitytype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-auditactivitytype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-auditactivitytype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-auditactivitytype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.auditActivityType"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "5e4a4c2e-a73b-480f-8814-da14ae15c111",
      "category": "Policy",
      "service": "Core Directory",
      "activity": "Add policy"
    },
    {
      "id": "22fa1ff9-4b44-45f6-9e3a-7e60e5e4f1da",
      "category": "Device",
      "service": "Core Directory",
      "activity": "Add registered owner to device"
    },
    {
      "id": "787c3421-526d-470e-9b95-72531b70dddd",
      "category": "Device",
      "service": "Core Directory",
      "activity": "Add registered users to device"
    },
    {
      "id": "1b5b8548-7e90-4780-9da0-7ba53cea0241",
      "category": "RoleManagement",
      "service": "Core Directory",
      "activity": "Add role from template"
    }
  ]
}
```

