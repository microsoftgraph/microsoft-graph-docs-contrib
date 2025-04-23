---
title: "recommendationConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 04/23/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# recommendationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/directory-list-recommendationconfiguration.md)|[recommendationConfiguration](../resources/recommendationconfiguration.md) collection|Get a list of the recommendationConfiguration objects and their properties.|
|[Create](../api/directory-post-recommendationconfiguration.md)|[recommendationConfiguration](../resources/recommendationconfiguration.md)|Create a new recommendationConfiguration object.|
|[Get](../api/recommendationconfiguration-get.md)|[recommendationConfiguration](../resources/recommendationconfiguration.md)|Read the properties and relationships of a recommendationConfiguration object.|
|[Update](../api/recommendationconfiguration-update.md)|[recommendationConfiguration](../resources/recommendationconfiguration.md)|Update the properties of a recommendationConfiguration object.|
|[Delete](../api/directory-delete-recommendationconfiguration.md)|None|Delete a recommendationConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isNotificationEnabled|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recommendationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendationConfiguration",
  "id": "String (identifier)",
  "isNotificationEnabled": "Boolean"
}
```

