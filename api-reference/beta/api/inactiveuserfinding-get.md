---
title: "Get inactiveUserFinding"
description: "Read the properties and relationships of an inactiveUserFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveUserFinding](../resources/inactiveuserfinding.md) object. Get the authorizationSystemIdentity resources from the identity navigation property.

You want to view the details about an inactive user in an AWS account, Azure subscription, or GCP project.


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
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/key/findings/graph.inactiveUserFinding
```
<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/key/findings/graph.inactiveUserFinding
```
<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/graph.inactiveUserFinding
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

If successful, this method returns a `200 OK` response code and an [inactiveUserFinding](../resources/inactiveuserfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveuserfinding"
}
-->
```http
GET https://canary.graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws('id')/findings/microsoft.graph.inactiveUserFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveUserFinding"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.inactiveUserFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveUserFinding",
      "id": "aW5hY3RpdmVSb2xlRmluZGluZzE",
      "identity": {
          "@odata.type": "graph.awsUser",
          "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL0FuZHlfQmFnX0Jhc2g=",
          "externalId": "arn:aws:iam::377596131774:user/Andy_Bag_Bash",
          "displayName": "Andy_Bag_Bash",
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
            "authorizationSystemType": "aws",
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
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    },

  ]
}
```
