---
title: "plannerRosterMember resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerRosterMember resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerRosterMembers](../api/plannerrostermember-list.md)|[plannerRosterMember](../resources/plannerrostermember.md) collection|Get a list of the [plannerRosterMember](../resources/plannerrostermember.md) objects and their properties.|
|[Create plannerRosterMember](../api/plannerrostermember-create.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Create a new [plannerRosterMember](../resources/plannerrostermember.md) object.|
|[Get plannerRosterMember](../api/plannerrostermember-get.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Read the properties and relationships of a [plannerRosterMember](../resources/plannerrostermember.md) object.|
|[Update plannerRosterMember](../api/plannerrostermember-update.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Update the properties of a [plannerRosterMember](../resources/plannerrostermember.md) object.|
|[Delete plannerRosterMember](../api/plannerrostermember-delete.md)|None|Deletes a [plannerRosterMember](../resources/plannerrostermember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|roles|String collection|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerRosterMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "id": "String (identifier)",
  "userId": "String",
  "tenantId": "String",
  "roles": [
    "String"
  ]
}
```

