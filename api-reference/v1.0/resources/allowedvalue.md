---
title: "allowedValue resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# allowedValue resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List allowedValues](../api/customsecurityattributedefinition-list-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md) collection|Get a list of the [allowedValue](../resources/allowedvalue.md) objects and their properties.|
|[Create allowedValue](../api/customsecurityattributedefinition-post-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md)|Create a new [allowedValue](../resources/allowedvalue.md) object.|
|[Get allowedValue](../api/allowedvalue-get.md)|[allowedValue](../resources/allowedvalue.md)|Read the properties and relationships of an [allowedValue](../resources/allowedvalue.md) object.|
|[Update allowedValue](../api/allowedvalue-update.md)|[allowedValue](../resources/allowedvalue.md)|Update the properties of an [allowedValue](../resources/allowedvalue.md) object.|
|[Delete allowedValue](../api/customsecurityattributedefinition-delete-allowedvalues.md)|None|Delete an [allowedValue](../resources/allowedvalue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isActive|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.allowedValue",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allowedValue",
  "id": "String (identifier)",
  "isActive": "Boolean"
}
```

