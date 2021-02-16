---
title: "compliance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# compliance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get compliance](../api/compliance-get.md)|[compliance](../resources/compliance.md)|Read the properties and relationships of a [compliance](../resources/compliance.md) object.|
|[Update compliance](../api/compliance-update.md)|[compliance](../resources/compliance.md)|Update the properties of a [compliance](../resources/compliance.md) object.|
|[List ediscoveryroot](../api/compliance-list-ediscovery.md)|[ediscoveryroot](../resources/ediscoveryroot.md) collection|Get the ediscoveryroot resources from the ediscovery navigation property.|
|[Create ediscoveryroot](../api/compliance-post-ediscovery.md)|[ediscoveryroot](../resources/ediscoveryroot.md)|Create a new ediscoveryroot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|ediscovery|[ediscoveryroot](../resources/ediscoveryroot.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.compliance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.compliance"
}
```

