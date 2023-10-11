---
title: "List authorizationSystemIdentity"
description: "Get the authorizationSystemIdentity resources from the identity navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List authorizationSystemIdentity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the authorizationSystemIdentity resources from the identity navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveAwsRoleFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
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

If successful, this method returns a `200 OK` response code and a collection of [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_authorizationsystemidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityFinding/identity
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authorizationSystemIdentity)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.authorizationSystemIdentity",
      "id": "f097c1d8-d362-3e9f-d056-cf9cb6b2f348",
      "displayName": "String",
      "source": {
        "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
      },
      "externalId": "String"
    }
  ]
}
```

'''
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.inactiveAwsRoleFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveAwsRoleFinding",
      "id": "aW5hY3RpdmVSb2xlRmluZGluZzE",
      "identity": {
          "@odata.type": "graph.awsRole",
          "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpyb2xlL21vbmdvLWRiLXN0YWdpbmc=",
          "externalId": "arn:aws:iam::377596131774:role/mongo-db-staging",
          "displayName": "mongo-db-staging",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
          },
          "authorizationSystem": {
            "@odata.type": "graph.awsAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "377596131774",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "aws"
          }
      },
      "actionSummary": {
        "assigned": 736,
        "exercised": 0,
        "available": 10000
      },
      "permissionsCreepIndex": {
        "score": 3
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2022-05-16T21:26:50Z",
        "lastActiveDateTime": "2022-10-20T05:23:35Z"
      }
    },

  ]
}
'''
