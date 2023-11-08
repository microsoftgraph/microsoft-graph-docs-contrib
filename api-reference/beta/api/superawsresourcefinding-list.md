---
title: "List superAwsResourceFindings"
description: "Get a list of the superAwsResourceFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List superAwsResourceFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [superAwsResourceFinding](../resources/superawsresourcefinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.superAwsResourceFinding
```

## Optional query parameters

This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [superAwsResourceFinding](../resources/superawsresourcefinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_superawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.superAwsResourceFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.superAwsResourceFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.superAwsResourceFinding",
  "value": [
    {
      "@odata.type": "graph.superAwsResourceFinding",
      "id": "c3VwZXJSZXNvdXJjZUZpbmRpbmc0",
      "identity": {
          "@odata.type": "graph.awsEc2Instance",
          "id":"YXJuOmF3czplYzI6dXMtd2VzdC0xOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTA5MWM5OTAyMDc0NTY5ZDc0",
          "externalId": "arn:aws:ec2:us-west-1:377596131774:instance/i-091c9902074569d74",
          "displayName": "do not terminate* parag_notion_ubuntu",
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
        "assigned": 170,
        "exercised": 0,
        "available": 10542
      },
      "permissionsCreepIndex": {
        "score": 1
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2018-04-12T20:34:24Z",
        "lastActiveDateTime": "2018-10-30T03:21:05Z"
      }
    },

  ]
}
```
