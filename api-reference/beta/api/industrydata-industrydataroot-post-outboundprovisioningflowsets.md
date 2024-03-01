---
title: "Create outboundProvisioningFlowSet"
description: "Create a new microsoft.graph.industryData.outboundProvisioningFlowSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-industrydataroot-post-outboundprovisioningflowsets-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydataroot-post-outboundprovisioningflowsets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /external/industryData/outboundProvisioningFlowSets
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

You can specify the following properties when creating a **outboundProvisioningFlowSet**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|filter|[microsoft.graph.industryData.filter](../resources/industrydata-filter.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_outboundprovisioningflowset_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets
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
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.outboundProvisioningFlowSet"
}
-->
``` http
HTTP/1.1 201 Created
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

