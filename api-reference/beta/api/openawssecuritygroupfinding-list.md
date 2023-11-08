---
title: "List openAwsSecurityGroupFindings"
description: "Get a list of the openAwsSecurityGroupFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List openAwsSecurityGroupFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.openAwsSecurityGroupFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_openawssecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.openAwsSecurityGroupFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.openAwsSecurityGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.openAwsSecurityGroupFinding",
  "value": [
    {
        "@odata.type": "graph.openAwsSecurityGroupFinding",
        "id": "b3BlbkF3c1NlY3VyaXR5R3JvdXBGaW5kaW5nMTAwMDAy",
        "securityGroup": {
            "@odata.type": "graph.awsAuthorizationSystemResource",
            "id": "YXJuOmF3czplYzI6dXMtZWFzdC0xOjk1Njk4Nzg4NzczNTpzZWN1cml0eS1ncm91cC9zZy0wN2RhODgxNzU2NGVkMzM4MQ==",
            "externalId": "arn:aws:ec2:us-east-1:956987887735:security-group/sg-07da8817564ed3381",
            "displayName": "s10-sg",
            "resourceType": "networkSecurityGroups",
            "authorizationSystem": {
              "@odata.type": "graph.awsAuthorizationSystem",
              "id": "{Id}",
              "authorizationSystemId": "377596131774",
              "authorizationSystemName": "cloudknox-staging",
              "authorizationSystemType": "aws"
            }
        },
        "inboundPorts": {
            "@odata.type": "graph.allInboundPorts"
        },
        "assignedComputeInstancesDetails@odata.count": 1, // We created a work item for the future implementation of expanding this the assignedComputeInstancesDetails property https://identitydivision.visualstudio.com/Engineering/_workitems/edit/2503297
        "totalStorageBucketCount": 0,
        "createdDateTime ": "2020-10-09T20:11:45.671Z"
    },

  ]
}
```

