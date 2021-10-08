---
title: "subscribedSku resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# subscribedSku resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subscribedSkus](../api/subscribedsku-list.md)|[subscribedSku](../resources/subscribedsku.md) collection|Get a list of the [subscribedSku](../resources/subscribedsku.md) objects and their properties.|
|[Create subscribedSku](../api/subscribedsku-post-subscribedskus.md)|[subscribedSku](../resources/subscribedsku.md)|Create a new [subscribedSku](../resources/subscribedsku.md) object.|
|[Get subscribedSku](../api/subscribedsku-get.md)|[subscribedSku](../resources/subscribedsku.md)|Read the properties and relationships of a [subscribedSku](../resources/subscribedsku.md) object.|
|[Update subscribedSku](../api/subscribedsku-update.md)|[subscribedSku](../resources/subscribedsku.md)|Update the properties of a [subscribedSku](../resources/subscribedsku.md) object.|
|[Delete subscribedSku](../api/subscribedsku-delete.md)|None|Deletes a [subscribedSku](../resources/subscribedsku.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|String|**TODO: Add Description**|
|capabilityStatus|String|**TODO: Add Description**|
|consumedUnits|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|prepaidUnits|[licenseUnitsDetail](../resources/licenseunitsdetail.md)|**TODO: Add Description**|
|servicePlans|[servicePlanInfo](../resources/serviceplaninfo.md) collection|**TODO: Add Description**|
|skuId|Guid|**TODO: Add Description**|
|skuPartNumber|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.subscribedSku",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subscribedSku",
  "capabilityStatus": "String",
  "consumedUnits": "Integer",
  "id": "String (identifier)",
  "prepaidUnits": {
    "@odata.type": "microsoft.graph.licenseUnitsDetail"
  },
  "servicePlans": [
    {
      "@odata.type": "microsoft.graph.servicePlanInfo"
    }
  ],
  "skuId": "Guid",
  "skuPartNumber": "String",
  "appliesTo": "String"
}
```

