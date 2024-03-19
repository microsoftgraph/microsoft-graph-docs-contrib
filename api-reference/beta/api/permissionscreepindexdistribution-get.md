---
title: "Get permissionsCreepIndexDistribution"
description: "Read the properties and relationships of a permissionsCreepIndexDistribution object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get permissionsCreepIndexDistribution
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissionscreepindexdistribution_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissionscreepindexdistribution-get-permissions.md)]

## HTTP request

Get the Permissions Creep Index distribution for identities and resources in AWS:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

Get the Permissions Creep Index distribution for identities and resources in Azure:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

Get the Permissions Creep Index distribution for identities and resources in GCP:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_permissionscreepindexdistribution"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMjM3ODMyLTIzNzgzMy0yMzc4MzQ
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-permissionscreepindexdistribution-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-permissionscreepindexdistribution-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-permissionscreepindexdistribution-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-permissionscreepindexdistribution-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-permissionscreepindexdistribution-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-permissionscreepindexdistribution-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-permissionscreepindexdistribution-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-permissionscreepindexdistribution-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsCreepIndexDistribution"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/$entity",
    "id": "MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMjM3ODMyLTIzNzgzMy0yMzc4MzQ",
    "createdDateTime": "2023-11-08T10:29:06.360334Z",
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
        "authorizationSystemName": "377596131774",
        "authorizationSystemType": "Aws",
        "id": "MSxBd3MsMzc3NTk2MTMxNzc0"
    }
}
```
