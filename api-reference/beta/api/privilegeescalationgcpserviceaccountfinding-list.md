---
title: "List privilegeEscalationGcpServiceAccountFinding objects"
description: "Get a list of the privilegeEscalationGcpServiceAccountFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List privilegeEscalationGcpServiceAccountFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegeescalationgcpserviceaccountfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegeescalationgcpserviceaccountfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.privilegeEscalationGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and a collection of [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_privilegeescalationgcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.privilegeEscalationGcpServiceAccountFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-privilegeescalationgcpserviceaccountfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-privilegeescalationgcpserviceaccountfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-privilegeescalationgcpserviceaccountfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-privilegeescalationgcpserviceaccountfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-privilegeescalationgcpserviceaccountfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-privilegeescalationgcpserviceaccountfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-privilegeescalationgcpserviceaccountfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-privilegeescalationgcpserviceaccountfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegeEscalationGcpServiceAccountFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/microsoft.graph.privilegeEscalationGcpServiceAccountFinding",
  "value": [
    {
      "@odata.type": "graph.privilegeEscalationGcpServiceAccountFinding",
      "id": "cHJpdmlsZWdlRXNjYWxhdGlvblNlcnZpY2VBY2NvdW50RmluZGluZzEwMDAx",
      "identity": {
        "@odata.type": "graph.gcpServiceAccount",
        "id": "YXNldGhpYUBjbG91ZGtub3guaW8=",
        "externalId": "asethia@cloudknox.io",
        "displayName": "asethia",
        "source": {
          "@odata.type": "graph.gsuiteSource",
          "identityProviderType": "gsuite",
          "domain": "cloudknox.io"
        },
        "authorizationSystem": {
          "@odata.type": "graph.gcpAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "carbide-bonsai-205017",
          "authorizationSystemName": "ck-staging",
          "authorizationSystemType": "gcp"
        }
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "permissionsCreepIndex": {
        "score": 99
      },
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.privilegeEscalationGcpServiceAccountFinding?$skiptoken=foobar"
}

```
