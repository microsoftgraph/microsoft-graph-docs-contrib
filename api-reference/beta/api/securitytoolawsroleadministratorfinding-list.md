---
title: "List securityToolAwsRoleAdministratorFindings"
description: "Get a list of the securityToolAwsRoleAdministratorFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List securityToolAwsRoleAdministratorFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsRoleAdministratorFinding
```

## Optional query parameters
This method supports `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_securitytoolawsroleadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxTZWN1cml0eVRvb2xBd3NSb2xlQWRtaW5pc3RyYXRvckZpbmRpbmcsNDAyNDE')/graph.securityToolAwsRoleAdministratorFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityToolAwsRoleAdministratorFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.securityToolAwsRoleAdministratorFinding",
  "value": [
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
      },

  ]
}

```

