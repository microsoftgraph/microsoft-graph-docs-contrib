---
title: "List permissionsCreepIndexDistributions"
description: "Get a list of the permissionsCreepIndexDistribution objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List permissionsCreepIndexDistributions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissionsanalytics_list_permissionscreepindexdistributions" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissionsanalytics-list-permissionscreepindexdistributions-permissions.md)]

## HTTP request

List the Permissions Creep Index distribution for identities and resources in AWS:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions
```

List the Permissions Creep Index distribution for identities and resources in Azure:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/permissionsCreepIndexDistributions
```

List the Permissions Creep Index distribution for identities and resources in GCP:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/permissionsCreepIndexDistributions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_permissionscreepindexdistribution"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-permissionscreepindexdistribution-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-permissionscreepindexdistribution-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-permissionscreepindexdistribution-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-permissionscreepindexdistribution-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-permissionscreepindexdistribution-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-permissionscreepindexdistribution-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-permissionscreepindexdistribution-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-permissionscreepindexdistribution-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permissionsCreepIndexDistribution)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions",
    "value": [
        {
            "id": "MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMjM4MTcxLTIzODE3Mi0yMzgxNzM",
            "createdDateTime": "2023-11-08T22:31:11.518839Z",
            "lowRiskProfile": {
                "humanCount": 30,
                "nonHumanCount": 187
            },
            "mediumRiskProfile": {
                "humanCount": 0,
                "nonHumanCount": 0
            },
            "highRiskProfile": {
                "humanCount": 35,
                "nonHumanCount": 14
            },
            "authorizationSystem": {
                "authorizationSystemId": "377596131774",
                "authorizationSystemName": "cloudknox-staging",
                "authorizationSystemType": "Aws",
                "id": "MSxBd3MsMzc3NTk2MTMxNzc0"
            }
        },
        {
            "id": "MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMTA4MzEzLTEwODMxNC0xMDgzMTU",
            "createdDateTime": "2023-01-12T19:59:04.087998Z",
            "lowRiskProfile": {
                "humanCount": 4,
                "nonHumanCount": 51
            },
            "mediumRiskProfile": {
                "humanCount": 0,
                "nonHumanCount": 0
            },
            "highRiskProfile": {
                "humanCount": 0,
                "nonHumanCount": 1
            },
            "authorizationSystem": {
                "authorizationSystemId": "912000090514",
                "authorizationSystemName": "ck-test-stack",
                "authorizationSystemType": "Aws",
                "id": "MSxBd3MsOTEyMDAwMDkwNTE0"
            }
        },
        {
            "id": "MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMjM4MDgxLTIzODA4Mi0yMzgwODM",
            "createdDateTime": "2023-11-08T20:01:53.554943Z",
            "lowRiskProfile": {
                "humanCount": 9,
                "nonHumanCount": 164
            },
            "mediumRiskProfile": {
                "humanCount": 0,
                "nonHumanCount": 0
            },
            "highRiskProfile": {
                "humanCount": 19,
                "nonHumanCount": 11
            },
            "authorizationSystem": {
                "authorizationSystemId": "956987887735",
                "authorizationSystemName": "956987887735",
                "authorizationSystemType": "Aws",
                "id": "MSxBd3MsOTU2OTg3ODg3NzM1"
            }
        }
    ]
}
```

