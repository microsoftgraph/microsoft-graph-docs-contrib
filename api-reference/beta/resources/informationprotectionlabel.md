---
title: "informationProtectionLabel resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# informationProtectionLabel resource type

[!INCLUDE beta-disclaimer]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get informationProtectionLabel](../api/informationprotectionlabel-get.md) | [informationProtectionLabel](informationprotectionlabel.md) | Read properties and relationships of informationProtectionLabel object. |
| [Update](../api/informationprotectionlabel-update.md) | [informationProtectionLabel](informationprotectionlabel.md) | Update informationProtectionLabel object. |
| [Delete](../api/informationprotectionlabel-delete.md) | None | Delete informationProtectionLabel object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|color|String||
|description|String||
|id|String| Read-only.|
|isActive|Boolean||
|name|String||
|sensitivity|Int32||
|tooltip|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationProtectionLabel",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "color": "String",
  "description": "String",
  "id": "String (identifier)",
  "isActive": true,
  "name": "String",
  "sensitivity": 1024,
  "tooltip": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->