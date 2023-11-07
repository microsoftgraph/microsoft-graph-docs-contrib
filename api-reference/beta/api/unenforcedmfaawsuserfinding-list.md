---
title: "List unenforcedMfaAwsUserFindings"
description: "Get a list of the unenforcedMfaAwsUserFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List unenforcedMfaAwsUserFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unenforcedMfaAwsUserFinding](../resources/unenforcedmfaawsuserfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.unenforcedMfaAwsUserFinding
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

If successful, this method returns a `200 OK` response code and a collection of [unenforcedMfaAwsUserFinding](../resources/unenforcedmfaawsuserfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_unenforcedmfaawsuserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.unenforcedMfaAwsUserFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unenforcedMfaAwsUserFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.unenforcedMfaAwsUserFinding",
  "value": [
    {
      "@odata.type": "graph.unenforcedMfaAwsUserFinding",
      "id": "dW5lbmZvcmNlZE1mYVVzZXJGaW5kaW5nMTU2",
      "identity": {
          "@odata.type": "graph.awsUser",
          "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfYWRtaW5pc3RyYXRvcl9pbmxpbmVfZGVueXMzYWxs",
          "externalId": "arn:aws:iam::377596131774:user/user_administrator_inline_denys3all",
          "displayName": "user_administrator_inline_denys3all",
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
        "assigned": 10688,
        "exercised": 0,
        "available": 10793
      },
      "permissionsCreepIndex": {
        "score": 97
      },
      "createdDateTime ": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    },

  ]
}

```

