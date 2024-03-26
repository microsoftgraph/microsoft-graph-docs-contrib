---
title: "List riskyServicePrincipals"
description: "Retrieve the properties and relationships of riskyServicePrincipal objects."
author: "ebasseri"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List riskyServicePrincipals
Namespace: microsoft.graph

Retrieve the properties and relationships of [riskyServicePrincipal](../resources/riskyserviceprincipal.md) objects.

>**Note:** Using the riskyServicePrincipals API requires a Microsoft Entra Workload ID Premium license.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityprotectionroot_list_riskyserviceprincipals" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityprotectionroot-list-riskyserviceprincipals-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-write](../../beta/includes/rbac-for-apis/rbac-identity-protection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/riskyServicePrincipals
```

## Optional query parameters
This method supports the `$count`, `$filter`, `$select`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [riskyServicePrincipal](../resources/riskyserviceprincipal.md) objects in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_riskyserviceprincipal"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityProtection/riskyServicePrincipals
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-riskyserviceprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-riskyserviceprincipal-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-riskyserviceprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-riskyserviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-riskyserviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-riskyserviceprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-riskyserviceprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-riskyserviceprincipal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.riskyServicePrincipal)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#riskyServicePrincipal",
  "value": [
    {
      "id": "9089a539-a539-9089-39a5-899039a58990",
      "isEnabled": true,
      "isProcessing": false,
      "riskLastUpdatedDateTime": "2021-08-14T13:06:51.0451374Z",
      "riskLevel": "high",
      "riskState": "atRisk",
      "riskDetail": "none",
      "displayName": "Contoso App",
      "appId": "b55552fe-a272-4b56-990b-95038d917878",
      "servicePrincipalType": "Application"
    }
  ]
}
```
