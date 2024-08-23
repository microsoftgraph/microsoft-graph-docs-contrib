---
title: "securityReportsRoot: getAttackSimulationSimulationUserCoverage"
description: "List training coverage for each tenant user in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationSimulationUserCoverage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [training coverage](../resources/attacksimulationtrainingusercoverage.md) for each tenant user in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securityreportsroot_getattacksimulationsimulationusercoverage" } -->
[!INCLUDE [permissions-table](../includes/permissions/securityreportsroot-getattacksimulationsimulationusercoverage-permissions.md)]

## HTTP request
[!INCLUDE [attacksim-deprecate-queryurl-reportapi](../includes/attacksim-deprecate-queryurl-reportapi.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/security/getAttackSimulationSimulationUserCoverage
GET /reports/getAttackSimulationSimulationUserCoverage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [attackSimulationSimulationUserCoverage](../resources/attacksimulationsimulationusercoverage.md) collection in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "securityreportsrootthis.getattacksimulationsimulationusercoverage"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/security/getAttackSimulationSimulationUserCoverage
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securityreportsrootthisgetattacksimulationsimulationusercoverage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/securityreportsrootthisgetattacksimulationsimulationusercoverage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/securityreportsrootthisgetattacksimulationsimulationusercoverage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/securityreportsrootthisgetattacksimulationsimulationusercoverage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/securityreportsrootthisgetattacksimulationsimulationusercoverage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/securityreportsrootthisgetattacksimulationsimulationusercoverage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/securityreportsrootthisgetattacksimulationsimulationusercoverage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/securityreportsrootthisgetattacksimulationsimulationusercoverage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attackSimulationSimulationUserCoverage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.attackSimulationSimulationUserCoverage)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/reports/security/getAttackSimulationSimulationUserCoverage?$skiptoken=rZDNasMwEIRfxei%2bRLFWtgRxwZKsYCil0J9rcCORGlI7yHLbvH3j0pQefCqew7LMsOzHbEL%2fkbRuVzvfxTaeC6ItMpVxBKpKBkh5CcIKhLVUSLUtdaYFSbr3%2fe4%2b9Ccf4vmuefMFuW2GaH3cv3pXO5K0v3HdOf9ZEEqmP1fzuTmOfju27hKgYJbmFSjGNGCuLKRZJYEKIxApo6WQZHWzWYz0sXk5%2bmmdp%2fx78I35EEPbHQryNPgwzJKgqGiKUoK%2boACmQoFMDQdmM56uc2O4qZbt7EcwM65alPS%2fnW1DP56m0r4A",
    "value": [
        {
            "simulationCount": 1063,
            "latestSimulationDateTime": "2022-02-10T10:45:50Z",
            "clickCount": 0,
            "compromisedCount": 0,
            "attackSimulationUser": {
                "userId": "9a00ce98-2c83-41be-89f7-6fdff7950aa9",
                "displayName": "Reed Flores",
                "email": "reed@contoso.com"
            }
        },
        {
            "simulationCount": null,
            "latestSimulationDateTime": null,
            "clickCount": null,
            "compromisedCount": null,
            "attackSimulationUser": {
                "userId": "e911a813-d360-4b1a-b3df-375dde934f2b",
                "displayName": "no role",
                "email": ""
            }
        }
    ]
}
```

## Related content
[reportRoot: getAttackSimulationSimulationUserCoverage](reportroot-getattacksimulationsimulationusercoverage.md) (deprecated)
