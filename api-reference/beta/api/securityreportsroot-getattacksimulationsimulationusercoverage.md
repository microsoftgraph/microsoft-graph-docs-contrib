---
title: "securityReportsRoot: getAttackSimulationSimulationUserCoverage"
description: "List training coverage for each tenant user in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationSimulationUserCoverage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [training coverage](../resources/attacksimulationtrainingusercoverage.md) for each tenant user in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [attackSimulationSimulationUserCoverage](../resources/attacksimulationsimulationusercoverage.md) collection in the response body.

## Examples

### Request
The following is an example of a request.

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

---

### Response
The following is an example of the response.
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

## See also
[reportRoot: getAttackSimulationSimulationUserCoverage](reportroot-getattacksimulationsimulationusercoverage.md) (deprecated)
