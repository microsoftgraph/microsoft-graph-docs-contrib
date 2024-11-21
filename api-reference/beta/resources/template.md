---
title: "Template resource type"
description: "Template resource type"
author: "ploegert"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# Template resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for templates.

Inherits from [entity](../resources/entity.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ID|String|The unique identifier for the template. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceTemplates|[deviceTemplate](../resources/devicetemplate.md) collection|Defines the templates that are common to a set of device objects.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.template",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.template",
  "id": "String (identifier)"
}
```
