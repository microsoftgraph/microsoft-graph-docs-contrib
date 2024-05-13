---
title: "Get azureADAuthentication"
description: "Read the properties and relationships of an azureADAuthentication object to find Microsoft Entra SLA attainment for your tenant."
author: "SarahBar"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get azureADAuthentication
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureADAuthentication](../resources/azureadauthentication.md) object to find the level of Microsoft Entra authentication availability for your tenant. The Microsoft Entra service Level Agreement (SLA) commits to at least 99.99% authentication availability, as described in [Microsoft Entra SLA performance](/azure/active-directory/reports-monitoring/reference-azure-ad-sla-performance). This object provides you with your tenant's actual performance against this commitment.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azureadauthentication_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/azureadauthentication-get-permissions.md)]

For delegated scenarios, the calling user needs to belong to at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
+ Global Reader
+ Reports Reader
+ Security Administrator
+ Security Operator
+ Security Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/sla/azureADAuthentication
```

## Optional query parameters
This method doesn't take any parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureADAuthentication](../resources/azureadauthentication.md) object in the response body. Each returned value includes a score indicating the availability percentage of the tenant's authentications for the month, along with a startDate and endDate indicating the month that the availability percentage is assigned to.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_azureadauthentication"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/sla/azureADAuthentication
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-azureadauthentication-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-azureadauthentication-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-azureadauthentication-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-azureadauthentication-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-azureadauthentication-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-azureadauthentication-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-azureadauthentication-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-azureadauthentication-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here is shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureADAuthentication"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/sla/azureADAuthentication/$entity",
    "attainments": [
        {
            "startDate": "2023-05-01",
            "endDate": "2023-05-31",
            "score": 99.999
        },
        {
            "startDate": "2023-04-01",
            "endDate": "2023-04-30",
            "score": 99.999
        },
        {
            "startDate": "2023-03-01",
            "endDate": "2023-03-31",
            "score": 99.999
        },
        {
            "startDate": "2023-02-01",
            "endDate": "2023-02-28",
            "score": 99.999
        },
        {
            "startDate": "2023-01-01",
            "endDate": "2023-01-31",
            "score": 99.998
        },
        {
            "startDate": "2022-12-01",
            "endDate": "2022-12-31",
            "score": 99.999
        },
    ]
}
```
