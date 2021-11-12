---
title: "checklistItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# checklistItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List checklistItems](../api/checklistitem-list.md)|[checklistItem](../resources/checklistitem.md) collection|Get a list of the [checklistItem](../resources/checklistitem.md) objects and their properties.|
|[Create checklistItem](../api/task-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new [checklistItem](../resources/checklistitem.md) object.|
|[Get checklistItem](../api/checklistitem-get.md)|[checklistItem](../resources/checklistitem.md)|Read the properties and relationships of a [checklistItem](../resources/checklistitem.md) object.|
|[Update checklistItem](../api/checklistitem-update.md)|[checklistItem](../resources/checklistitem.md)|Update the properties of a [checklistItem](../resources/checklistitem.md) object.|
|[Delete checklistItem](../api/checklistitem-delete.md)|None|Deletes a [checklistItem](../resources/checklistitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|checkedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isChecked|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.checklistItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.checklistItem",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "checkedDateTime": "String (timestamp)",
  "isChecked": "Boolean",
  "id": "String (identifier)"
}
```

