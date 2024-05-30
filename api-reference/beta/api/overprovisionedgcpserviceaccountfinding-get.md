---
title: "Get overprovisionedGcpServiceAccountFinding"
description: "Read the properties and relationships of an overprovisionedGcpServiceAccountFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get overprovisionedGcpServiceAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "overprovisionedgcpserviceaccountfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/overprovisionedgcpserviceaccountfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.overprovisionedGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedgcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/MSxPdmVycHJvdmlzaW9uZWRHY3BTZXJ2aWNlQWNjb3VudEZpbmRpbmcsODM1Mw/microsoft.graph.overprovisionedGcpServiceAccountFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-overprovisionedgcpserviceaccountfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedGcpServiceAccountFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.overprovisionedGcpServiceAccountFinding/$entity",
    "id": "MSxPdmVycHJvdmlzaW9uZWRHY3BTZXJ2aWNlQWNjb3VudEZpbmRpbmcsODM1Mw",
    "createdDateTime": "2023-10-17T23:46:11.04383Z",
    "actionSummary": {
        "assigned": 3287,
        "exercised": 34,
        "available": 7075
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 1
    },
    "identity": {
        "@odata.type": "#microsoft.graph.gcpServiceAccount",
        "id": "bWNpZW0tc2VydmljZS1zdGcxLWRlYzE5QGNhcmJpZGUtYm9uc2FpLTIwNTAxNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ",
        "externalId": "mciem-service-stg1-dec19@carbide-bonsai-205017.iam.gserviceaccount.com",
        "displayName": "ms-ciem-service-account",
        "source": {
            "@odata.type": "#microsoft.graph.gsuiteSource",
            "identityProviderType": "gsuite",
            "domain": "carbide-bonsai-205017.iam.gserviceaccount.com"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
            "authorizationSystemId": "carbide-bonsai-205017",
            "authorizationSystemName": "ck-staging",
            "authorizationSystemType": "gcp",
            "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
        }
    }
}
```
