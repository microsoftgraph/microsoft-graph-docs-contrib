---
title: "Get inactiveAwsRoleFinding"
description: "Get the details of inactive AWS roles in AWS authorization systems onboarded to Permissions Management."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of inactive AWS roles [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) in AWS authorization systems onboarded to Permissions Management.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactiveawsrolefinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveawsrolefinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.inactiveAwsRoleFinding
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

If successful, this method returns a `200 OK` response code and an [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inactiveawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxJbmFjdGl2ZUF3c1JvbGVGaW5kaW5nLDY1MTY0MA/microsoft.graph.inactiveAwsRoleFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inactiveawsrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveAwsRoleFinding/$entity",
    "id": "MSxJbmFjdGl2ZUF3c1JvbGVGaW5kaW5nLDY1MTY0MA",
    "createdDateTime": "2023-10-17T19:48:33.530943Z",
    "actionSummary": {
        "assigned": 125,
        "exercised": 0,
        "available": 10542
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 1
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsRole",
        "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpyb2xlL2Vrc2N0bC1jay1la3MtYWRkb24taWFtc2VydmljZWFjY291bnQtZGVmYXVsLVJvbGUxLTFYRllEOTNLUThXTjI",
        "externalId": "arn:aws:iam::377596131774:role/eksctl-ck-eks-addon-iamserviceaccount-defaul-Role1-1XFYD93KQ8WN2",
        "displayName": "eksctl-ck-eks-addon-iamserviceaccount-defaul-Role1-1XFYD93KQ8WN2",
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
```
