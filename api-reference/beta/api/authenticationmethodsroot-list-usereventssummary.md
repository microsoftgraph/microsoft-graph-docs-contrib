---
title: "List userEventsSummary objects"
description: "Get a list of the user SSPR and MFA registration and reset events as defined in the usereventssummary object."
author: "egreenberg14"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List userEventsSummary objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the user SSPR and MFA registration and reset events as defined in the [usereventssummary](../resources/usereventssummary.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethodsroot-list-usereventssummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-list-usereventssummary-permissions.md)]


[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userEventsSummary
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [usereventssummary](../resources/usereventssummary.md) resource. You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records. 

| Property          | Description                                                                                                                     | Example                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| feature      | Filter for only registration events. Supported filter operators: `eq`.| `/reports/authenticationMethods/userEventsSummary?$filter=feature eq 'registration'`           |
| isSuccess   | Filter for only events that were successful. Supported filter operators are: `eq`.                                              | `/reports/authenticationMethods/userEventsSummary?$filter=isSuccess eq true`        |
| failureReason     | Filter for events equaling a specific failure reason. Supported filter operators are: `eq`.                                          | `/reports/authenticationMethods/userEventsSummary?$filter=failureReason eq 'A system error has occurred.'`.         |
| authMethod  | Filter for events from a speficic authentication method type. Supported filter operators are: `eq`.              | `/reports/authenticationMethods/userEventsSummary?$filter=authMethod eq 'microsoftAuthenticatorPush'`       |
| userDisplayName   | Filter by user name. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.                        | `/reports/authenticationMethods/userEventsSummary?$filter=userDisplayName eq 'Contoso'`   |
| userPrincipalName | Filter by user principal name. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.              | `/reports/authenticationMethods/userEventsSummary?$filter=userPrincipalName eq 'Contoso'` |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userEventsSummary](../resources/usereventssummary.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_usereventssummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userEventsSummary
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-usereventssummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-usereventssummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-usereventssummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-usereventssummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-usereventssummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-usereventssummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-usereventssummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userEventsSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/authenticationMethods/userEventsSummary",  
  "value": [
    {
      "@odata.type": "#microsoft.graph.userEventsSummary",
      "id": "3604e35c-12f3-a86a-5ff4-97aecf6c526a",
      "feature": "registration",
      "userPrincipalName": "johndoe@contoso.net",
      "userDisplayName": "John Doe",
      "isSuccess": true,
      "authMethod": "microsoftAuthenticatorPush",
      "failureReason": "",
      "eventDateTime": "2025-07-16T16:19:18Z"
    }
  ]
}
```

