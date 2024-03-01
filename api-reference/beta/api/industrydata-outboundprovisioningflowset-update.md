---
title: "Update outboundProvisioningFlowSet"
description: "Update the properties of a microsoft.graph.industryData.outboundProvisioningFlowSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-outboundprovisioningflowset-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-outboundprovisioningflowset-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /external/industryData/outboundProvisioningFlowSets/{outboundProvisioningFlowSetId}
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
|displayName|String|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|filter|[microsoft.graph.industryData.filter](../resources/industrydata-filter.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_outboundprovisioningflowset"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets/{outboundProvisioningFlowSetId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
  "displayName": "String",
  "filter": {
    "@odata.type": "microsoft.graph.industryData.filter"
  }
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
  "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "a6085468-7b29-cb2b-0ddd-4b3a26d2e0a9",
  "filter": {
    "@odata.type": "microsoft.graph.industryData.filter"
  }
}
```

