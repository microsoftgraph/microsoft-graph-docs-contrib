---
title: "List userPasswordResetsAndChangesSummary objects"
description: "Gets a list of password resets and changes that occurred in a given aggregation window as defined in the userPasswordResetsAndChangesSummary object."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List userPasswordResetsAndChangesSummary objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a list of password resets and changes that occurred in a given aggregation window as defined in the [userPasswordResetsAndChangesSummary](../resources/userpasswordresetsandchangessummary.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethodsroot-list-userpasswordresetsandchangessummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-list-userpasswordresetsandchangessummary-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userPasswordResetsAndChangesSummary
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [userPasswordResetsAndChangesSummary](../resources/userpasswordresetsandchangessummary.md) resource.

| Property          | Description                                                                                                                     | Example                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| passwordResetsByAdminCount      | Filter for results containing password resets by an admin greater than a specific number. | `/reports/authenticationMethods/userPasswordResetsAndChangesSummary?$filter=passwordResetsByAdminCount gt 10`           |
| passwordResetsSelfServiceCount   | Filter for results containing self service password resets greater than a specific number.                                            | `/reports/authenticationMethods/userPasswordResetsAndChangesSummary?$filter=passwordResetsSelfServiceCount gt 10`        |
| changePasswordSelfServiceCount   | Filter for results containing self service password changes greater than a specific number.                                            | `/reports/authenticationMethods/userPasswordResetsAndChangesSummary?$filter=changePasswordSelfServiceCount gt 10`        |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userPasswordResetsAndChangesSummary](../resources/userpasswordresetsandchangessummary.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_userpasswordresetsandchangessummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userPasswordResetsAndChangesSummary
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-userpasswordresetsandchangessummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-userpasswordresetsandchangessummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-userpasswordresetsandchangessummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-userpasswordresetsandchangessummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-userpasswordresetsandchangessummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-userpasswordresetsandchangessummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-userpasswordresetsandchangessummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userPasswordResetsAndChangesSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/authenticationMethods/userPasswordResetsAndChangesSummary",  
  "value": [
    {
      "@odata.type": "#microsoft.graph.userPasswordResetsAndChangesSummary",
      "id": "8c50a914-4ca3-85fd-0939-251441259472",
      "aggregatedDateTime": "2025-07-16T16:19:18Z",
      "passwordResetsByAdminCount": 100,
      "passwordResetsSelfServiceCount": 75,
      "changePasswordSelfServiceCount": 100
    },

    {
      "@odata.type": "#microsoft.graph.userPasswordResetsAndChangesSummary",
      "id": "05c13e12-e8e7-4b8f-8963-db3257ddc39d",
      "aggregatedDateTime": "2025-07-05T16:19:18Z",
      "passwordResetsByAdminCount": 50,
      "passwordResetsSelfServiceCount": 0,
      "changePasswordSelfServiceCount": 10
    }    
  ]
}
```

