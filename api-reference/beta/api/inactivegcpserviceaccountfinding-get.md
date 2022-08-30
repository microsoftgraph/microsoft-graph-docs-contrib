---
title: "Get inactiveGcpServiceAccountFinding"
description: "Read the properties and relationships of an inactiveGcpServiceAccountFinding object, representing the inactive service accounts in GCP authorization systems."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get inactiveGcpServiceAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object, representing the inactive service accounts in GCP authorization systems.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactivegcpserviceaccountfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactivegcpserviceaccountfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.inactiveGcpServiceAccountFinding
```

## Optional query parameters
This method does not support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inactivegcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/MSxJbmFjdGl2ZUdjcFNlcnZpY2VBY2NvdW50RmluZGluZywxNDM1NjM/microsoft.graph.inactiveGcpServiceAccountFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inactivegcpserviceaccountfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveGcpServiceAccountFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGcpServiceAccountFinding/$entity",
    "id": "MSxJbmFjdGl2ZUdjcFNlcnZpY2VBY2NvdW50RmluZGluZywxNDM1NjM",
    "createdDateTime": "2023-10-17T19:46:22.653412Z",
    "actionSummary": {
        "assigned": 0,
        "exercised": 0,
        "available": 7075
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 0
    },
    "identity": {
        "@odata.type": "#microsoft.graph.gcpServiceAccount",
        "id": "ZGV2LXRlc3RAY2FyYmlkZS1ib25zYWktMjA1MDE3LmlhbS5nc2VydmljZWFjY291bnQuY29t",
        "externalId": "dev-test@carbide-bonsai-205017.iam.gserviceaccount.com",
        "displayName": "Dev Testing Bot",
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
