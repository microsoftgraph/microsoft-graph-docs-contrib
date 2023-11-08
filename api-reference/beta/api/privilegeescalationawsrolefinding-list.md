---
title: "List privilegeEscalationAwsRoleFindings"
description: "Get a list of the privilegeEscalationAwsRoleFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List privilegeEscalationAwsRoleFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding
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

If successful, this method returns a `200 OK` response code and a collection of [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegeescalationawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegeEscalationAwsRoleFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding",
  "value": [
    {
      "@odata.type": "graph.privilegeEscalationAwsRoleFinding",
      "id": "cHJpdmlsZWdlRXNjYWxhdGlvblJvbGVGaW5kaW5nMTAwMDE",
      "identity": {
        "@odata.type": "graph.awsRole",
        "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpyb2xlL2RlcGxveWVyLWVudi1zaGVsbA==",
        "externalId": "arn:aws:iam::377596131774:role/deployer-env-shell",
        "displayName": "deployer-env-shell",
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
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "permissionsCreepIndex": {
        "score": 99
      },
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding?$skiptoken=foobar"
}
```
