---
title: "wellKnownTaskList resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# wellKnownTaskList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseTaskList](../resources/basetasklist.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List wellKnownTaskLists](../api/wellknowntasklist-list.md)|[wellKnownTaskList](../resources/wellknowntasklist.md) collection|Get a list of the [wellKnownTaskList](../resources/wellknowntasklist.md) objects and their properties.|
|[Get wellKnownTaskList](../api/wellknowntasklist-get.md)|[wellKnownTaskList](../resources/wellknowntasklist.md)|Read the properties and relationships of a [wellKnownTaskList](../resources/wellknowntasklist.md) object.|
|[Update wellKnownTaskList](../api/wellknowntasklist-update.md)|[wellKnownTaskList](../resources/wellknowntasklist.md)|Update the properties of a [wellKnownTaskList](../resources/wellknowntasklist.md) object.|
|[Delete wellKnownTaskList](../api/wellknowntasklist-delete.md)|None|Deletes a [wellKnownTaskList](../resources/wellknowntasklist.md) object.|
|[List extensions](../api/wellknowntasklist-list-extensions.md)|[extension](../resources/extension.md) collection|Get the extension resources from the extensions navigation property.|
|[Create extension](../api/wellknowntasklist-post-extensions.md)|[extension](../resources/extension.md)|Create a new extension object.|
|[List tasks](../api/wellknowntasklist-list-tasks.md)|[baseTask](../resources/basetask.md) collection|Get the baseTask resources from the tasks navigation property.|
|[Create baseTask](../api/wellknowntasklist-post-tasks.md)|[baseTask](../resources/basetask.md)|Create a new baseTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md).|
|id|String|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md).|
|wellKnownListName|wellKnownListName_v2|**TODO: Add Description**. The possible values are: `none`, `defaultList`, `flaggedEmails`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md)|
|tasks|[baseTask](../resources/basetask.md) collection|**TODO: Add Description** Inherited from [baseTaskList](../resources/basetasklist.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.wellKnownTaskList",
  "baseType": "microsoft.graph.baseTaskList",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.wellKnownTaskList",
  "displayName": "String",
  "id": "String (identifier)",
  "wellKnownListName": "String"
}
```

