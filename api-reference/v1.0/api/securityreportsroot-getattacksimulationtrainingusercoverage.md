---
title: "securityReportsRoot: getAttackSimulationTrainingUserCoverage"
description: "List training coverage for tenant users in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationTrainingUserCoverage
Namespace: microsoft.graph

List training coverage for tenant users in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/security/getAttackSimulationTrainingUserCoverage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [attackSimulationTrainingUserCoverage](../resources/attacksimulationtrainingusercoverage.md) collection in the response body.

## Examples

### Request
The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "securityreportsrootthis.getattacksimulationtrainingusercoverage"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/security/getAttackSimulationTrainingUserCoverage
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securityreportsrootthisgetattacksimulationtrainingusercoverage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/securityreportsrootthisgetattacksimulationtrainingusercoverage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/securityreportsrootthisgetattacksimulationtrainingusercoverage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/securityreportsrootthisgetattacksimulationtrainingusercoverage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/securityreportsrootthisgetattacksimulationtrainingusercoverage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attackSimulationTrainingUserCoverage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.attackSimulationTrainingUserCoverage)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/reports/security/getAttackSimulationTrainingUserCoverage?$skiptoken=+RID%3",
    "value": [
        {
            "userTrainings": [
                {
                    "assignedDateTime": "2021-07-28T07:33:47.493239Z",
                    "completionDateTime": null,
                    "trainingStatus": "assigned",
                    "displayName": "Phishing"
                },
                {
                    "assignedDateTime": "2021-07-28T07:33:47.493239Z",
                    "completionDateTime": "2022-01-14T03:11:58Z",
                    "trainingStatus": "completed",
                    "displayName": ""
                }
            ],
            "attackSimulationUser": {
                "userId": "c5e40ca7-4c09-4801-a140-5ef733d1de0e",
                "displayName": null,
                "email": null
            }
        }
    ]
}
```
