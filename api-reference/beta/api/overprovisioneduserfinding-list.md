---
title: "List overprovisionedUserFindings"
description: "Get a list of the overprovisionedUserFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List overprovisionedUserFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [overprovisionedUserFinding](../resources/overprovisioneduserfinding.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|


## HTTP request

List AWS overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.overprovisionedUserFinding
```

List Azure overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/graph.overprovisionedUserFinding
```

List GCP overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/graph.overprovisionedUserFinding
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

If successful, this method returns a `200 OK` response code and a collection of [overprovisionedUserFinding](../resources/overprovisioneduserfinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_overprovisioneduserfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/azure/findings/graph.overprovisionedUserFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.overprovisionedUserFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/azure/findings/graph.overprovisionedUserFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedUserFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkVXNlckZpbmRpbmc3",
      "identity": {
          "@odata.type": "graph.azureUser",
          "id": "dXNlcl9yZWFkZXJfc3Vic2NyaXB0aW9uX293bmVyX3JnQG1jaWVtYzEub25taWNyb3NvZnQuY29t",
          "externalId": "user_reader_subscription_owner_rg@mciemc1.onmicrosoft.com",
          "displayName": "user_reader_subscription_owner_rg",
          "source": {
            "@odata.type": "graph.aadSource",
            "identityProviderType": "aad",
            "domain": "mciemc1.onmicrosoft.com"
          },
          "authorizationSystem": {
            "@odata.type": "graph.azureAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "6ea285d9-fe7e-49f6-a0ff-203c1a7ac225",
            "authorizationSystemName": "Microsoft Azure Sponsorship 2",
            "authorizationSystemType": "azure"
          }
      },
      "actionSummary": {
        "assigned": 12676,
        "exercised": 0,
        "available": 12900
      },
      "permissionsCreepIndex": {
        "score": 3
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

