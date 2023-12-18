---
title: "Get overprovisionedAwsRoleFinding"
description: "Read the properties and relationships of an overprovisionedAwsRoleFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get overprovisionedAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedAwsRoleFinding](../resources/overprovisionedawsrolefinding.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.overprovisionedAwsRoleFinding
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [overprovisionedAwsRoleFinding](../resources/overprovisionedawsrolefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxPdmVycHJvdmlzaW9uZWRBd3NSb2xlRmluZGluZywxNzYzMTk/microsoft.graph.overprovisionedAwsRoleFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-overprovisionedawsrolefinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-overprovisionedawsrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.overprovisionedAwsRoleFinding/$entity",
    "id": "MSxPdmVycHJvdmlzaW9uZWRBd3NSb2xlRmluZGluZywxNzYzMTk",
    "createdDateTime": "2023-10-17T23:47:23.492779Z",
    "actionSummary": {
        "assigned": 166,
        "exercised": 1,
        "available": 58
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
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTpyb2xlL21jaWVtLW9pZGMtY29ubmVjdC1yb2xlLXByb2RjMTY",
        "externalId": "arn:aws:iam::956987887735:role/mciem-oidc-connect-role-prodc16",
        "displayName": "mciem-oidc-connect-role-prodc16",
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
