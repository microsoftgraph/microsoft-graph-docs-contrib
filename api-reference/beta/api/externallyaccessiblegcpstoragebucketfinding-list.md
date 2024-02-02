---
title: "List externallyAccessibleGcpStorageBucketFinding objects"
description: "Get a list of the externallyAccessibleGcpStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List externallyAccessibleGcpStorageBucketFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externallyaccessiblegcpstoragebucketfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/externallyaccessiblegcpstoragebucketfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.externallyAccessibleGcpStorageBucketFinding
```

## Optional query parameters
This method supports the `$filter` (`eq`) and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externallyaccessiblegcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.externallyAccessibleGcpStorageBucketFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externallyaccessiblegcpstoragebucketfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-externallyaccessiblegcpstoragebucketfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externallyaccessiblegcpstoragebucketfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externallyaccessiblegcpstoragebucketfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externallyaccessiblegcpstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externallyaccessiblegcpstoragebucketfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externallyaccessiblegcpstoragebucketfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externallyaccessiblegcpstoragebucketfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externallyAccessibleGcpStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/microsoft.graph.externallyAccessibleGcpStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.externallyAccessibleGcpStorageBucketFinding",
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAx",
      "storageBucket": {
        "@odata.type": "graph.gcpAuthorizationSystemResource",
        "id": "Y2FyYmlkZS1ib25zYWktMjA1MDE3LmFwcHNwb3QuY29t",
        "externalId": "carbide-bonsai-205017.appspot.com",
        "displayName": "carbide-bonsai-205017.appspot.com",
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
    },

  ]
}
```

