---
title: "outboundProvisioningFlowSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# outboundProvisioningFlowSet resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List outboundProvisioningFlowSet objects](../api/industrydata-industrydataroot-list-outboundprovisioningflowsets.md)|[microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) collection|Get a list of the [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) objects and their properties.|
|[Create outboundProvisioningFlowSet](../api/industrydata-industrydataroot-post-outboundprovisioningflowsets.md)|[microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)|Create a new [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.|
|[Get outboundProvisioningFlowSet](../api/industrydata-outboundprovisioningflowset-get.md)|[microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)|Read the properties and relationships of a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.|
|[Update outboundProvisioningFlowSet](../api/industrydata-outboundprovisioningflowset-update.md)|[microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md)|Update the properties of a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.|
|[Delete outboundProvisioningFlowSet](../api/industrydata-industrydataroot-delete-outboundprovisioningflowsets.md)|None|Delete a [microsoft.graph.industryData.outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.|
|[List provisioningFlows](../api/industrydata-outboundprovisioningflowset-list-provisioningflows.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection|Get the provisioningFlow resources from the provisioningFlows navigation property.|
|[Create provisioningFlow](../api/industrydata-outboundprovisioningflowset-post-provisioningflows.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)|Create a new provisioningFlow object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|filter|[microsoft.graph.industryData.filter](../resources/industrydata-filter.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|provisioningFlows|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.outboundProvisioningFlowSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "filter": {
    "@odata.type": "microsoft.graph.industryData.filter"
  }
}
```

