---
title: "Get secretInformationAccessAwsUserFinding"
description: "Read the properties and relationships of a secretInformationAccessAwsUserFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get secretInformationAccessAwsUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [secretInformationAccessAwsUserFinding](../resources/secretinformationaccessawsuserfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "secretinformationaccessawsuserfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/secretinformationaccessawsuserfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.secretInformationAccessAwsUserFinding
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

If successful, this method returns a `200 OK` response code and a [secretInformationAccessAwsUserFinding](../resources/secretinformationaccessawsuserfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_secretinformationaccessawsuserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1VzZXJGaW5kaW5nLDQ4MzA2/microsoft.graph.secretInformationAccessAwsUserFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-secretinformationaccessawsuserfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secretInformationAccessAwsUserFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsUserFinding/$entity",
    "id": "MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1VzZXJGaW5kaW5nLDQ4MzA2",
    "createdDateTime": "2023-10-25T23:48:14.666056Z",
    "secretInformationWebServices": "secretsManager,certificateAuthority,cloudHsm,certificateManager",
    "permissionsCreepIndex": {
        "score": 99
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsUser",
        "id": "cmFtcHJha2FzaG5AbWljcm9zb2Z0LmNvbQ",
        "externalId": "ramprakashn@microsoft.com",
        "displayName": "ram narayanaswamy",
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

