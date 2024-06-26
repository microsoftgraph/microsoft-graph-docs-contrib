---
title: "List overprovisionedGcpServiceAccountFinding objects"
description: "Get a list of the overprovisionedGcpServiceAccountFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List overprovisionedGcpServiceAccountFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "overprovisionedgcpserviceaccountfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/overprovisionedgcpserviceaccountfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.overprovisionedGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and a collection of [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_overprovisionedgcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.overprovisionedGcpServiceAccountFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-overprovisionedgcpserviceaccountfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-overprovisionedgcpserviceaccountfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-overprovisionedgcpserviceaccountfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-overprovisionedgcpserviceaccountfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-overprovisionedgcpserviceaccountfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-overprovisionedgcpserviceaccountfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-overprovisionedgcpserviceaccountfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-overprovisionedgcpserviceaccountfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.overprovisionedGcpServiceAccountFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/microsoft.graph.overprovisionedGcpServiceAccountFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedGcpServiceAccountFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkU2VydmljZUFjY291bnRGaW5kaW5nMTM",
      "identity": {
          "@odata.type": "graph.gcpServiceAccount",
          "id": "bW50ZXN0QGNhcmJpZGUtYm9uc2FpLTIwNTAxNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ==",
          "externalId": "mntest@carbide-bonsai-205017.iam.gserviceaccount.com",
          "displayName": "mntest",
          "source": {
            "@odata.type": "graph.gsuiteSource",
            "identityProviderType": "gsuite",
            "domain": "carbide-bonsai-205017.iam.gserviceaccount.com"
          },
          "authorizationSystem": {
            "@odata.type": "graph.gcpAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "carbide-bonsai-205017",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "gcp"
          }
      },
      "actionSummary": {
        "assigned": 4624,
        "exercised": 0,
        "available": 10542
      },
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
      },
      "permissionsCreepIndex": {
        "score": 82
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2021-04-12T20:34:24Z",
        "lastActiveDateTime": "2021-10-30T03:21:05Z"
      }
    }
  ]
}

```
