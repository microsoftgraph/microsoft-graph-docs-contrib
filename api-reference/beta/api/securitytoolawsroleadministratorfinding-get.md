---
title: "Get securityToolAwsRoleAdministratorFinding"
description: "Read the properties and relationships of a securityToolAwsRoleAdministratorFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get securityToolAwsRoleAdministratorFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securitytoolawsroleadministratorfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/securitytoolawsroleadministratorfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.securityToolAwsRoleAdministratorFinding
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

If successful, this method returns a `200 OK` response code and a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_securitytoolawsroleadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nMw/microsoft.graph.securityToolAwsRoleAdministratorFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-securitytoolawsroleadministratorfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.securityToolAwsRoleAdministratorFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsRoleAdministratorFinding",
  "value":
      {
        "@odata.type": "graph.securityToolAwsRoleAdministratorFinding",
        "id": "YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nMw",
        "identity": {
          "@odata.type": "graph.awsRole",
          "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTpyb2xlL3hhLTJlZGVtb3Byb2QtZmE=",
          "externalId": "arn:aws:iam::956987887735:role/xa-2edemoprod-fa",
          "displayName": "xa-2edemoprod-fa",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
          },
          "authorizationSystem": {
            "@odata.type": "graph.awsAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "956987887735",
            "authorizationSystemName": "cloudknox-development",
            "authorizationSystemType": "aws"
          }
        },
        "securityTools": "inspector, securityHub, detective",
        "permissionsCreepIndex": {
          "score": 100
        },
        "createdDateTime": "2020-10-11T20:11:45.6711Z",
        "identityDetails": {
          "createdDateTime": "2020-04-12T20:34:24Z",
          "lastActiveDateTime": "2020-10-30T03:21:05Z"
        }
      }
    }
```

