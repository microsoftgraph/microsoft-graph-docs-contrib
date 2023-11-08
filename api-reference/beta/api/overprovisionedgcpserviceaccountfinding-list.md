---
title: "List overprovisionedGcpServiceAccountFindings"
description: "Get a list of the overprovisionedGcpServiceAccountFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List overprovisionedGcpServiceAccountFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) objects and their properties.

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
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/gcp/findings/graph.overprovisionedGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and a collection of [overprovisionedGcpServiceAccountFinding](../resources/overprovisionedgcpserviceaccountfinding.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_overprovisionedgcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/gcp/findings/graph.overprovisionedGcpServiceAccountFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.overprovisionedGcpServiceAccountFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.overprovisionedGcpServiceAccountFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedGcpServiceAccountFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkU2VydmljZUFjY291bnRGaW5kaW5nMTM",
      "identity": {
          "@odata.type": "graph.gcpServiceAccount",
          "id": "bW50ZXN0QGNhcmJpZGUtYm9uc2FpLTIwNTAxNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ==",
          "externalId": "mntest@carbide-bonsai-205017.iam.gserviceaccount.com",
          "displayName": "mntest",
          "source": {
            "@odata.type": "graph.gsuiteSource",
            "identityProviderType": "gsuite",
            "domain": "carbide-bonsai-205017.iam.gserviceaccount.com"
          },
          "authorizationSystem": {
            "@odata.type": "graph.gcpAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "carbide-bonsai-205017",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "gcp"
          }
      },
      "actionSummary": {
        "assigned": 4624,
        "exercised": 0,
        "available": 10542
      },
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
      },
      "permissionsCreepIndex": {
        "score": 82
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
