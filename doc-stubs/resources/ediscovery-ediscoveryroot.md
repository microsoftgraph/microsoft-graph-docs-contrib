---
title: "ediscoveryroot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# ediscoveryroot resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryroots](../api/ediscoveryroot-list.md)|[ediscoveryroot](../resources/ediscovery-ediscoveryroot.md) collection|Get a list of the [ediscoveryroot](../resources/ediscoveryroot.md) objects and their properties.|
|[Create ediscoveryroot](../api/ediscovery-ediscoveryroot-create.md)|[ediscoveryroot](../resources/ediscovery-ediscoveryroot.md)|Create a new [ediscoveryroot](../resources/ediscovery-ediscoveryroot.md) object.|
|[Get ediscoveryroot](../api/ediscovery-ediscoveryroot-get.md)|[ediscoveryroot](../resources/ediscovery-ediscoveryroot.md)|Read the properties and relationships of an [ediscoveryroot](../resources/ediscovery-ediscoveryroot.md) object.|
|[Update ediscoveryroot](../api/ediscovery-ediscoveryroot-update.md)|[ediscoveryroot](../resources/ediscovery-ediscoveryroot.md)|Update the properties of an [ediscoveryroot](../resources/ediscovery-ediscoveryroot.md) object.|
|[Delete ediscoveryroot](../api/ediscovery-ediscoveryroot-delete.md)|None|Deletes an [ediscoveryroot](../resources/ediscovery-ediscoveryroot.md) object.|
|[List cases](../api/ediscovery-ediscoveryroot-list-cases.md)|[case](../resources/ediscovery-case.md) collection|Get the case resources from the cases navigation property.|
|[Create case](../api/ediscovery-ediscoveryroot-post-cases.md)|[case](../resources/ediscovery-case.md)|Create a new case object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cases|[case](../resources/ediscovery-case.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.ediscoveryroot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.ediscoveryroot"
}
```

