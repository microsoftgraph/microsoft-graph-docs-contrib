---
title: "List inactiveGcpServiceAccountFindings"
description: "Get a list of the inactiveGcpServiceAccountFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List inactiveGcpServiceAccountFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) objects and their properties.

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
```http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) objects in the response body.


## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_inactivegcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGcpServiceAccountFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveGcpServiceAccountFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.inactiveGcpServiceAccountFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveGcpServiceAccountFinding",
      "id": "aW5hY3RpdmVTZXJ2aWNlQWNjb3VudEZpbmRpbmcxMDAwMQ",
      "identity": {
        "@odata.type": "graph.gcpServiceAccount",
        "id": "Z2VldGEtc2VydmljZWFjY291bnQxQGNhcmJpZGUtYm9uc2FpLTIwNTAxNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ==",
        "externalId": "geeta-serviceaccount1@carbide-bonsai-205017.iam.gserviceaccount.com",
        "displayName": "geeta-serviceaccount1",
        "source": {
          "@odata.type": "graph.gsuiteSource",
          "identityProviderType": "gsuite",
          "domain": "carbide-bonsai-205017"
        },
        "authorizationSystem": {
          "@odata.type": "graph.gcpAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "carbide-bonsai-205017",
          "authorizationSystemName": "ck-staging",
          "authorizationSystemType": "gcp"
        }
      },
      "actionSummary": {
        "assigned": 4631,
        "exercised": 0,
        "available": 4631
      },
      "permissionsCreepIndex": {
        "score": 82
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
