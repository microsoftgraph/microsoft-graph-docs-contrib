---
title: "List virtualMachineWithAwsStorageBucketAccessFinding objects"
description: "Get a list of the virtualMachineWithAwsStorageBucketAccessFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List virtualMachineWithAwsStorageBucketAccessFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualmachinewithawsstoragebucketaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding",
  "value": [
    {
      "@odata.type": "graph.virtualMachineWithAwsStorageBucketAccessFinding",
      "id": "dmlydHVhbE1hY2hpbmVTdG9yYWdlQnVja2V0QWNjZXNzRmluZGluZzEwMDAwMQ",
      "ec2Instance": {
          "@odata.type": "graph.awsAuthorizationSystemResource",
          "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTAzMzRlNmQxZmRhYTg5OWIw",
          "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-0334e6d1fdaa899b0",
          "displayName": "Elasticbeanstalkapp-env",
          "resourceType": "instance",
      },
      "role": {
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
      "bucketCount": 132,
      "accessibleCount": 122,
      "permissionsCreepIndex": {
        "score": 3
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },

  ]
}
```

