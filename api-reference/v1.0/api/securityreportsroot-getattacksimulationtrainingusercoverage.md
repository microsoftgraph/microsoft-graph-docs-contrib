---
title: "securityReportsRoot: getAttackSimulationTrainingUserCoverage"
description: "List training coverage for tenant users in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationTrainingUserCoverage
Namespace: microsoft.graph

List training coverage for tenant users in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securityreportsroot_getattacksimulationtrainingusercoverage" } -->
[!INCLUDE [permissions-table](../includes/permissions/securityreportsroot-getattacksimulationtrainingusercoverage-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [attackSimulationTrainingUserCoverage](../resources/attacksimulationtrainingusercoverage.md) collection in the response body.

## Examples

### Request
The following example shows a request.


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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/securityreportsrootthisgetattacksimulationtrainingusercoverage-cli-snippets.md)]
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

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/securityreportsrootthisgetattacksimulationtrainingusercoverage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/securityreportsrootthisgetattacksimulationtrainingusercoverage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
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
