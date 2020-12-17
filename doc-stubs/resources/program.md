---
title: "program resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# program resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List programs](../api/program-list.md)|[program](../resources/program.md) collection|Get a list of the [program](../resources/program.md) objects and their properties.|
|[Create program](../api/program-post-programs.md)|[program](../resources/program.md)|Create a new [program](../resources/program.md) object.|
|[Get program](../api/program-get.md)|[program](../resources/program.md)|Read the properties and relationships of a [program](../resources/program.md) object.|
|[Update program](../api/program-update.md)|[program](../resources/program.md)|Update the properties of a [program](../resources/program.md) object.|
|[Delete program](../api/program-delete.md)|None|Deletes a [program](../resources/program.md) object.|
|[List controls](../api/program-list-controls.md)|[programControl](../resources/programcontrol.md) collection|Get the programControl resources from the controls navigation property.|
|[Create programControl](../api/program-post-controls.md)|[programControl](../resources/programcontrol.md)|Create a new programControl object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|controls|[programControl](../resources/programcontrol.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.program",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.program",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```

