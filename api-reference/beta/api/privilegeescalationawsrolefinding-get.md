---
title: "Get privilegeEscalationAwsRoleFinding"
description: "Read the properties and relationships of a privilegeEscalationAwsRoleFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegeEscalationAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) object.

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
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/key/findings/graph.privilegeEscalationAwsRoleFinding
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_privilegeescalationawsrolefinding"
}
-->
``` http
https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegeEscalationAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding",
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
  "@odata.nextLink": "https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.privilegeEscalationAwsRoleFinding?$skiptoken=foobar"
}
```

