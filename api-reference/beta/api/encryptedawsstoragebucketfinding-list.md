---
title: "List encryptedAwsStorageBucketFindings"
description: "Get a list of the encryptedAwsStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List encryptedAwsStorageBucketFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.encryptedAwsStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and a collection of [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_encryptedawsstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.encryptedAwsStorageBucketFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.encryptedAwsStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.encryptedAwsStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.encryptedAwsStorageBucketFinding",
      "id": "ZW5jcnlwdGVkQXdzU3RvcmFnZUJ1Y2tldEZpbmRpbmcxMDAwMDE",
      "storageBucket": {
        "@odata.type": "graph.awsAuthorizationSystemResource",
        "id": "YXJuOmF3czpzMzo6Ojc3MjAtdGVzdGJ1Y2tldC0wOTEwLTE=",
        "externalId": "arn:aws:s3:::7720-testbucket-0910-1",
        "displayName": "7720-testbucket-0910-1",
        "resourceType": "bucket",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "377596131774",
          "authorizationSystemName": "cloudknox-staging",
          "authorizationSystemType": "aws"
        }
      },
      "accessibility": "crossAccount",
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    }
  ]
}
```

