---
title: "List overprovisionedAwsResourceFindings"
description: "Get a list of the overprovisionedAwsResourceFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List overprovisionedAwsResourceFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.overprovisionedAwsResourceFinding
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

If successful, this method returns a `200 OK` response code and a collection of [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_overprovisionedawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.overprovisionedAwsResourceFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.overprovisionedAwsResourceFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.overprovisionedAwsResourceFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedAwsResourceFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkUmVzb3VyY2VGaW5kaW5nMTE",
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
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
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
