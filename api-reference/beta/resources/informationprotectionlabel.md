---
title: "informationProtectionLabel resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# informationProtectionLabel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get informationProtectionLabel](../api/informationprotectionlabel-get.md) | [informationProtectionLabel](informationprotectionlabel.md) | Read properties and relationships of informationProtectionLabel object. |
| [Update](../api/informationprotectionlabel-update.md) | [informationProtectionLabel](informationprotectionlabel.md) | Update informationProtectionLabel object. |
| [Delete](../api/informationprotectionlabel-delete.md) | None | Delete informationProtectionLabel object. |
|[Evaluateapplication](../api/informationprotectionlabel-evaluateapplication.md)|[informationProtectionAction](informationprotectionaction.md) collection||
|[Evaluateclassificationresults](../api/informationprotectionlabel-evaluateclassificationresults.md)|[informationProtectionAction](informationprotectionaction.md) collection||
|[Evaluateremoval](../api/informationprotectionlabel-evaluateremoval.md)|[informationProtectionAction](informationprotectionaction.md) collection||
|[Extractlabel](../api/informationprotectionlabel-extractlabel.md)|[informationProtectionContentLabel](informationprotectioncontentlabel.md)||

## Properties

| Property    | Type    | Description                                                                                                  |
| :---------- | :------ | :----------------------------------------------------------------------------------------------------------- |
| color       | String  | The color that the user interface should display for the label, if configured.                               |
| description | String  | The admin-defined description for the label.                                                                 |
| id          | String  | The label ID is a globally unique identifier (GUID)                                                          |
| isActive    | Boolean | Indicates whether the label is active or not. Active labels should be hidden or disabled in user interfaces. |
| name        | String  | The plaintext name of the label.                                                                             |
| sensitivity | Int32   | The sensitivity value of the label, where lower is less sensitive.                                           |
| tooltip     | String  | The tooltip that should be displayed for the label in a user interface.                                      |

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