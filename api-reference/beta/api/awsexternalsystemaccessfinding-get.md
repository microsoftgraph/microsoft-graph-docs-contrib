---
title: "Get awsExternalSystemAccessFinding"
description: "Read the properties and relationships of an awsExternalSystemAccessFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get awsExternalSystemAccessFinding

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsexternalsystemaccessfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsexternalsystemaccessfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.awsExternalSystemAccessFinding
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

If successful, this method returns a `200 OK` response code and an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awsexternalsystemaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE/microsoft.graph.awsExternalSystemAccessFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awsexternalsystemaccessfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsExternalSystemAccessFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessFinding/$entity",
    "id": "MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE",
    "createdDateTime": "2023-10-25T23:48:18.389587Z",
    "trustsAllIdentities": true,
    "trustedIdentityCount": null,
    "accessMethods": "direct",
    "affectedSystem": {
        "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
        "authorizationSystemId": "956987887735",
        "authorizationSystemName": "ck-development",
        "authorizationSystemType": "aws",
        "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
    }
}
```

