---
title: "checklistItem resource type"
description: "Represents a collection of checklist items on a task."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# checklistItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Represents a subtask in a bigger [todoTask](./todotask.md). **ChecklistItem** allows breaking down a complex task into more actionable, smaller tasks. 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/todotask-list-checklistitems.md)|[checklistItem](../resources/checklistitem.md) collection|Get a list of the [checklistItem](../resources/checklistitem.md) objects and their properties associated to a specified [todoTask](./todotask.md).|
|[Create](../api/todotask-post-checklistitems.md)|[checklistItem](../resources/checklistitem.md)|Create a new [checklistItem](../resources/checklistitem.md) object associated to a specified [todoTask](./todotask.md).|
|[List checklistItems](../api/basetask-list-checklistitems.md) (deprecated)|[checklistItem](../resources/checklistitem.md) collection|Get a list of the [checklistItem](../resources/checklistitem.md) objects and their properties associated to a specified [baseTask](./basetask.md).|
|[Create checklistItem](../api/basetask-post-checklistitems.md) (deprecated)|[checklistItem](../resources/checklistitem.md)|Create a new [checklistItem](../resources/checklistitem.md) object associated to a specified [baseTask](./basetask.md).|
|[Get](../api/checklistitem-get.md)|[checklistItem](../resources/checklistitem.md)|Read the properties and relationships of a [checklistItem](../resources/checklistitem.md) object.|
|[Update](../api/checklistitem-update.md)|[checklistItem](../resources/checklistitem.md)|Update the properties of a [checklistItem](../resources/checklistitem.md) object.|
|[Delete](../api/checklistitem-delete.md)|None|Delete a [checklistItem](../resources/checklistitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|checkedDateTime|DateTimeOffset|The date and time when the **checklistItem** was finished.|
|createdDateTime|DateTimeOffset|The date and time when the **checklistItem** was created.|
|displayName|String|Indicates the title of the **checklistItem**.|
|id|String|Server generated ID for the **checkListItem**|
|isChecked|Boolean|State that indicates whether the item is checked off or not.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "createdDateTime": "String (timestamp)",
  "checkedDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isChecked": "Boolean"
}
```

