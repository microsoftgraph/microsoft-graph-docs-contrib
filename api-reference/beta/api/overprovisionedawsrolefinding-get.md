---
title: "Get overprovisionedAwsRoleFinding"
description: "Read the properties and relationships of an overprovisionedAwsRoleFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
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
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/key/findings/graph.overprovisionedAwsRoleFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedAwsRoleFinding](../resources/overprovisionedawsrolefinding.md) object in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the key passed into the GET method is invalid.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws('id')/findings/graph.overprovisionedAwsRoleFinding
```


### Response
The following is an example of the response
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
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.overprovisionedAwsRoleFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedAwsRoleFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkUm9sZUZpbmRpbmc4",
      "identity": {
          "@odata.type": "graph.awsRole",
          "id": "YXJuOmF3czppYW06OjkxMjAwMDA5MDUxNDpyb2xlL2NrLWlyaXMtdGVzdA==",
          "externalId": "arn:aws:iam::912000090514:role/ck-iris-test",
          "displayName": "ck-iris-test",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
          },
          "authorizationSystem": {
            "@odata.type": "graph.awsAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "912000090514",
            "authorizationSystemName": "ck-test-stack",
            "authorizationSystemType": "aws"
          }
      },
      "actionSummary": {
        "assigned": 118,
        "exercised": 0,
        "available": 10793
      },
      "permissionsCreepIndex": {
        "score": 1
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2021-04-12T20:34:24Z",
        "lastActiveDateTime": "2021-10-30T03:21:05Z"
      }
    },

  ]
}
```

