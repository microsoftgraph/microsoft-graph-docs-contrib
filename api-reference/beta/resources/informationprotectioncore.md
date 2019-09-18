---
title: "informationProtectionCore resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# informationProtectionCore resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get informationProtectionCore](../api/informationprotectioncore-get.md) | [informationProtectionCore](informationprotectioncore.md) | Read properties and relationships of informationProtectionCore object. |
| [Create informationProtectionLabel](../api/informationprotectioncore-post-labels.md) | [informationProtectionLabel](informationprotectionlabel.md) | Create a new informationProtectionLabel by posting to the labels collection. |
| [List labels](../api/informationprotectioncore-list-labels.md) | [informationProtectionLabel](informationprotectionlabel.md) collection | Get a informationProtectionLabel object collection. |
| [Delete](../api/informationprotectioncore-delete.md) | None | Delete informationProtectionCore object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|labels|[informationProtectionLabel](informationprotectionlabel.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationProtectionCore",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionCore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->