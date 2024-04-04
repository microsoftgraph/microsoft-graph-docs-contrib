---
title: "Get awsExternalSystemAccessRoleFinding"
description: "Read the properties and relationships of an awsExternalSystemAccessRoleFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get awsExternalSystemAccessRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsexternalsystemaccessrolefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsexternalsystemaccessrolefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.awsExternalSystemAccessRoleFinding
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

If successful, this method returns a `200 OK` response code and an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awsexternalsystemaccessrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc1JvbGVGaW5kaW5nLDMwMDQx/graph.awsExternalSystemAccessRoleFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awsexternalsystemaccessrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsExternalSystemAccessRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding/$entity",
    "id": "MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc1JvbGVGaW5kaW5nLDMwMDQx",
    "createdDateTime": "2023-10-25T23:48:20.277497Z",
    "accessibleSystemIds": [
        "946655190477"
    ],
    "permissionsCreepIndex": {
        "score": 98
    },
    "role": {
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTpyb2xlL3hhLWNueC1zYW5kYm94",
        "externalId": "arn:aws:iam::956987887735:role/xa-cnx-sandbox",
        "displayName": "xa-cnx-sandbox",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "956987887735",
            "authorizationSystemName": "ck-development",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
        }
    }
}
```

