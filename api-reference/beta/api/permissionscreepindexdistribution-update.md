---
title: "Update permissionsCreepIndexDistribution"
description: "Update the properties of a permissionsCreepIndexDistribution object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update permissionsCreepIndexDistribution
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lowRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description** Required.|
|mediumRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description** Required.|
|highRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_permissionscreepindexdistribution"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/permissionsCreepIndexDistributions/{permissionsCreepIndexDistributionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permissionsCreepIndexDistribution",
  "lowRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "mediumRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "highRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permissionsCreepIndexDistribution",
  "id": "cce5bd87-ac4c-20f5-8205-50a2c6e4fcaf",
  "createdDateTime": "String (timestamp)",
  "lowRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "mediumRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "highRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  }
}
```

