---
title: "licenseDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# licenseDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List licenseDetails](../api/licensedetails-list.md)|[licenseDetails](../resources/licensedetails.md) collection|Get a list of the [licenseDetails](../resources/licensedetails.md) objects and their properties.|
|[Create licenseDetails](../api/licensedetails-create.md)|[licenseDetails](../resources/licensedetails.md)|Create a new [licenseDetails](../resources/licensedetails.md) object.|
|[Get licenseDetails](../api/licensedetails-get.md)|[licenseDetails](../resources/licensedetails.md)|Read the properties and relationships of a [licenseDetails](../resources/licensedetails.md) object.|
|[Update licenseDetails](../api/licensedetails-update.md)|[licenseDetails](../resources/licensedetails.md)|Update the properties of a [licenseDetails](../resources/licensedetails.md) object.|
|[Delete licenseDetails](../api/licensedetails-delete.md)|None|Deletes a [licenseDetails](../resources/licensedetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.licenseDetails",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.licenseDetails",
  "id": "String (identifier)",
  "servicePlans": [
    {
      "@odata.type": "microsoft.graph.servicePlanInfo"
    }
  ],
  "skuId": "Guid",
  "skuPartNumber": "String"
}
```

