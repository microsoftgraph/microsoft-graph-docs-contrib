---
title: "Get securityToolAwsUserAdministratorFinding"
description: "Read the properties and relationships of a securityToolAwsUserAdministratorFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get securityToolAwsUserAdministratorFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securitytoolawsuseradministratorfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/securitytoolawsuseradministratorfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.securityToolAwsUserAdministratorFinding
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

If successful, this method returns a `200 OK` response code and a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_securitytoolawsuseradministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA/microsoft.graph.securityToolAwsUserAdministratorFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-securitytoolawsuseradministratorfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.securityToolAwsUserAdministratorFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsUserAdministratorFinding",
    "value": [
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2Nvb3Blcm1laXR6",
                "externalId": "arn:aws:iam::377596131774:user/coopermeitz",
                "displayName": "coopermeitz",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        }
    ]
}
```

