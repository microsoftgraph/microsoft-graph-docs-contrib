---
title: "Get securityToolAwsRoleAdministratorFinding"
description: "Read the properties and relationships of a securityToolAwsRoleAdministratorFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get securityToolAwsRoleAdministratorFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.securityToolAwsRoleAdministratorFinding
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

If successful, this method returns a `200 OK` response code and a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_securitytoolawsroleadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.securityToolAwsRoleAdministratorFinding
```


### Response
The following is an example of the response
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
    },

  ]
}
```

