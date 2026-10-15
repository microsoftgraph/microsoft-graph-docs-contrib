---
title: "checklistItemV4 resource type"
description: "A checklist item on a task, consisting of a title and a checked/unchecked state. `isChecked` is the only default beyond the universal `displayName`."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# checklistItemV4 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A checklist item on a [task](task.md), consisting of a title and a checked/unchecked state. `isChecked` is the only default beyond the universal `displayName`.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/task-list-checklist.md)|[checklistItemV4](../resources/checklistitemv4.md) collection|Get a list of the checklistItemV4 objects and their properties.|
|[Create](../api/task-post-checklist.md)|[checklistItemV4](../resources/checklistitemv4.md)|Create a new checklistItemV4 object.|
|[Get](../api/checklistitemv4-get.md)|[checklistItemV4](../resources/checklistitemv4.md)|Read the properties and relationships of [checklistItemV4](../resources/checklistitemv4.md) object.|
|[Update](../api/checklistitemv4-update.md)|[checklistItemV4](../resources/checklistitemv4.md)|Update the properties of a checklistItemV4 object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[checklistCapability](../resources/checklistcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|completedBy|[identitySet](../resources/identityset.md)|Identity of the user who checked the checklist item.|
|completedDateTime|DateTimeOffset|Date and time the checklist item was checked.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who created the entity. Read-only.|
|displayName|String|Title of the checklist item.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|isChecked|Boolean|Indicates whether the checklist item is checked (completed).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.checklistItemV4",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.checklistItemV4",
  "id": "String (identifier)",
  "displayName": "String",
  "isChecked": "Boolean",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "completedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "completedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.checklistCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

