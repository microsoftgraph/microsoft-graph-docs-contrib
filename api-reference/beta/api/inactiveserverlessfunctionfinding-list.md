---
title: "List inactiveServerlessFunctionFindings"
description: "List the details of inactive serverless functions in authorization systems onboarded to Permissions Management."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List inactiveServerlessFunctionFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the details of inactive serverless functions [inactiveServerlessFunctionFining](../resources/inactiveserverlessfunctionfinding.md) in authorization systems onboarded to Permissions Management.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

List AWS inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding
```

List Azure inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveServerlessFunctionFinding
```

List GCP inactive serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveServerlessFunctionFinding](../resources/inactiveserverlessfunctionfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_inactiveserverlessfunctionfinding"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveServerlessFunctionFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.inactiveServerlessFunctionFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveServerlessFunctionFinding",
      "id": "aW5hY3RpdmVTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW5nMTAwMDE",
      "identity": {
          "@odata.type": "graph.awsLambda",
          "id": "YXJuOmF3czpsYW1iZGE6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTpmdW5jdGlvbjphbm90aGVyQWRtaW5GdWN0aW9u",
          "externalId": "arn:aws:lambda:us-west-2:956987887735:function:anotherAdminFuction",
          "displayName": "anotherAdminFuction",
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
      "actionSummary": {
        "assigned": 10783,
        "exercised": 0,
        "available": 20000
      },
      "permissionsCreepIndex": {
        "score": 3
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ]
}
```

