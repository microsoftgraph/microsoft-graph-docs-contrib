---
title: "template resource type"
description: "template resource type"
author: "ploegert"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# template resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for templates.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|

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
  "@odata.type": "#microsoft.graph.template"
}
```
