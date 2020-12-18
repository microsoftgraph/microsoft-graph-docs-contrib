---
title: "programControlType resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# programControlType resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List programControlTypes](../api/programcontroltype-list.md)|[programControlType](../resources/programcontroltype.md) collection|Get a list of the [programControlType](../resources/programcontroltype.md) objects and their properties.|
|[Create programControlType](../api/programcontroltype-post-programcontroltypes.md)|[programControlType](../resources/programcontroltype.md)|Create a new [programControlType](../resources/programcontroltype.md) object.|
|[Get programControlType](../api/programcontroltype-get.md)|[programControlType](../resources/programcontroltype.md)|Read the properties and relationships of a [programControlType](../resources/programcontroltype.md) object.|
|[Update programControlType](../api/programcontroltype-update.md)|[programControlType](../resources/programcontroltype.md)|Update the properties of a [programControlType](../resources/programcontroltype.md) object.|
|[Delete programControlType](../api/programcontroltype-delete.md)|None|Deletes a [programControlType](../resources/programcontroltype.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|controlTypeGroupId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.programControlType",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.programControlType",
  "id": "String (identifier)",
  "controlTypeGroupId": "String",
  "displayName": "String"
}
```

