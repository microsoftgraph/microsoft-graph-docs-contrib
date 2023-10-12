---
title: "Get inactiveServerlessFunctionFinding"
description: "Read the properties and relationships of an inactiveServerlessFunctionFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveServerlessFunctionFinding](../resources/inactiveserverlessfunctionfinding.md) object.
You want to view inactive serverless functions in AWS, Azure, and GCP authorization systems.

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/key/findings/microsoft.graph.inactiveServerlessFunctionFinding
```

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/key/findings/microsoft.graph.inactiveServerlessFunctionFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/microsoft.graph.inactiveServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and an [inactiveServerlessFunctionFinding](../resources/inactiveserverlessfunctionfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveserverlessfunctionfinding"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws('id)/findings/microsoft.graph.inactiveServerlessFunctionFinding
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveServerlessFunctionFinding"
}
-->
```http
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
    },

  ]
}
```

