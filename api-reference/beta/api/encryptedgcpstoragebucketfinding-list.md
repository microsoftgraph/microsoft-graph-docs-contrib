---
title: "List encryptedGcpStorageBucketFinding objects"
description: "Get a list of the encryptedGcpStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# List encryptedGcpStorageBucketFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Get a list of the [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "encryptedgcpstoragebucketfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/encryptedgcpstoragebucketfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_encryptedgcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-encryptedgcpstoragebucketfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-encryptedgcpstoragebucketfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-encryptedgcpstoragebucketfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-encryptedgcpstoragebucketfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-encryptedgcpstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-encryptedgcpstoragebucketfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-encryptedgcpstoragebucketfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-encryptedgcpstoragebucketfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.encryptedGcpStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.encryptedGcpStorageBucketFinding",
      "id": "ZW5jcnlwdGVkR2NwU3RvcmFnZUJ1Y2tldEZpbmRpbmcxMDAwMQ",
      "storageBucket": {
        "@odata.type": "graph.gcpAuthorizationSystemResource",
        "id": "dXMuYXJ0aWZhY3RzLmNhcmJpZGUtYm9uc2FpLTIwNTAxNy5hcHBzcG90LmNvbQ==",
        "externalId": "us.artifacts.carbide-bonsai-205017.appspot.com",
        "displayName": "us.artifacts.carbide-bonsai-205017.appspot.com",
        "resourceType": "buckets",
        "authorizationSystem": {
          "@odata.type": "graph.gcpAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "carbide-bonsai-205017",
          "authorizationSystemName": "ck-staging",
          "authorizationSystemType": "gcp"
        }
      },
      "accessibility": "subjectToObjectAcls",
      "encryptionManagedBy": "google",
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    }
  ]
}
```


