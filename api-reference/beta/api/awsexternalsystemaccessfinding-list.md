---
title: "List awsExternalSystemAccessFindings"
description: "Get a list of the awsExternalSystemAccessFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsExternalSystemAccessFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.awsExternalSystemAccessFinding
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

If successful, this method returns a `200 OK` response code and a collection of [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_awsexternalsystemaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.awsExternalSystemAccessFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsExternalSystemAccessFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/aws/findings/graph.awsExternalSystemAccessFinding",
  "value": [
    {
    "@odata.type": "graph.awsExternalSystemAccessFinding",
    "id": "YXdzRXh0ZXJuYWxTeXN0ZW1BY2Nlc3NGaW5kaW5nMTAwMDE",
    "trustsAllIdentities": false,
    "trustedIdentityCount": 10,
    "accessMethods": "direct,roleChaining",
    "affectedSystem": {
      "@odata.type": "graph.awsAuthorizationSystem",
      "id": "MSxhd3MsOTU2OTg3ODg3NzM1",
      "authorizationSystemId": "956987887735",
      "authorizationSystemName": "cloudknox-development",
      "authorizationSystemType": "aws"
    },
    "systemWithAccess": {
            "id": "377596131774",
            "displayName": "cloudknox-staging",
            "authorizationSystemType": "aws"
          }
    "createdDateTime": "2020-10-11T20:11:45.6711Z",
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings/graph.awsExternalSystemAccessFinding?$skiptoken=foobar"
}
```
