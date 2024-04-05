---
title: "Get secretInformationAccessAwsRoleFinding"
description: "Read the properties and relationships of a secretInformationAccessAwsRoleFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get secretInformationAccessAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "secretinformationaccessawsrolefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/secretinformationaccessawsrolefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.secretInformationAccessAwsRoleFinding
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

If successful, this method returns a `200 OK` response code and a [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_secretinformationaccessawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz/microsoft.graph.secretInformationAccessAwsRoleFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-secretinformationaccessawsrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secretInformationAccessAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsRoleFinding/$entity",
    "id": "MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz",
    "createdDateTime": "2023-10-25T23:48:13.788962Z",
    "secretInformationWebServices": "secretsManager,certificateAuthority,cloudHsm,certificateManager",
    "permissionsCreepIndex": {
        "score": 98
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsRole",
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTpyb2xlL3N0YWNrc2V0cy1leGVjLTVlMWEyNzViOTgxOThhMWY5OTI2ZjgwYTRmY2M3YTc2",
        "externalId": "arn:aws:iam::956987887735:role/stacksets-exec-5e1a275b98198a1f9926f80a4fcc7a76",
        "displayName": "stacksets-exec-5e1a275b98198a1f9926f80a4fcc7a76",
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

