---
title: "Update provisioningFlow"
description: "Update the properties of a microsoft.graph.industryData.provisioningFlow object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update provisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-provisioningflow-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-provisioningflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /external/industryData/outboundProvisioningFlowSets/{outboundProvisioningFlowSetId}/provisioningFlows/{provisioningFlowId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|readinessStatus|microsoft.graph.industryData.readinessStatus|**TODO: Add Description**. The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_provisioningflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets/{outboundProvisioningFlowSetId}/provisioningFlows/{provisioningFlowId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.provisioningFlow",
  "readinessStatus": "String"
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.industryData.provisioningFlow",
  "id": "8494143d-f4b6-4a28-c7e8-cecb4603ff82",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String"
}
```

