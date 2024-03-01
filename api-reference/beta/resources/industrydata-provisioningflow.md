---
title: "provisioningFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# provisioningFlow resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List provisioningFlow objects](../api/industrydata-outboundprovisioningflowset-list-provisioningflows.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) collection|Get a list of the [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) objects and their properties.|
|[Create provisioningFlow](../api/industrydata-outboundprovisioningflowset-post-provisioningflows.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)|Create a new [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.|
|[Get provisioningFlow](../api/industrydata-provisioningflow-get.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)|Read the properties and relationships of a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.|
|[Update provisioningFlow](../api/industrydata-provisioningflow-update.md)|[microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md)|Update the properties of a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.|
|[Delete provisioningFlow](../api/industrydata-outboundprovisioningflowset-delete-provisioningflows.md)|None|Delete a [microsoft.graph.industryData.provisioningFlow](../resources/industrydata-provisioningflow.md) object.|
|[reset](../api/industrydata-provisioningflow-reset.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|readinessStatus|microsoft.graph.industryData.readinessStatus|**TODO: Add Description**.The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.provisioningFlow",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.provisioningFlow",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "readinessStatus": "String",
  "id": "String (identifier)"
}
```

