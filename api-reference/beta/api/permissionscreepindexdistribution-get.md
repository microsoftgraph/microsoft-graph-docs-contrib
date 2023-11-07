---
title: "Get permissionsCreepIndexDistribution"
description: "Read the properties and relationships of a permissionsCreepIndexDistribution object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get permissionsCreepIndexDistribution
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|


## HTTP request

Get the Permissions Creep Index distribution for identities and resources in AWS:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

Get the Permissions Creep Index distribution for identities and resources in Azure:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

Get the Permissions Creep Index distribution for identities and resources in GCP:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
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

If successful, this method returns a `200 OK` response code and a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_permissionscreepindexdistribution"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsCreepIndexDistribution"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/permissionsCreepIndexDistributions",
  "value": [
    {
      "id": "10001-10002-10003",
      "authorizationSystem": {
        "@odata.type": "graph.azureAuthorizationSystem",
        "id": "{Id}",
        "authorizationSystemId": "6ea285d9-fe7e-49f6-a0ff-203c1a7ac225",
        "authorizationSystemName": "Microsoft Azure Sponsorship 2",
        "authorizationSystemType": "azure"   
      },
      "lowRiskProfile": {
        "humanCount" : 16,
        "nonHumanCount" : 539,
      },
      "mediumRiskProfile": {
        "humanCount" : 0,
        "nonHumanCount" : 0,
      },
      "highRiskProfile": {
        "humanCount" : 0,
        "nonHumanCount" : 6,
      },
      "createdDateTime ": "2020-10-11T20:11:45.6711Z"
    }
  ]
}
```

