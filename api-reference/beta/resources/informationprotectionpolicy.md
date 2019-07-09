---
title: "informationProtectionPolicy resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# informationProtectionPolicy resource type

[!INCLUDE beta-disclaimer]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get informationProtectionPolicy](../api/informationprotectionpolicy-get.md) | [informationProtectionPolicy](informationprotectionpolicy.md) | Read properties and relationships of informationProtectionPolicy object. |
| [Create informationProtectionLabel](../api/informationprotectionpolicy-post-labels.md) | [informationProtectionLabel](informationprotectionlabel.md) | Create a new informationProtectionLabel by posting to the labels collection. |
| [List labels](../api/informationprotectionpolicy-list-labels.md) | [informationProtectionLabel](informationprotectionlabel.md) collection | Get a informationProtectionLabel object collection. |
| [Delete](../api/informationprotectionpolicy-delete.md) | None | Delete informationProtectionPolicy object. |
|[Applylabel](../api/informationprotectionpolicy-applylabel.md)|[informationProtectionAction](informationprotectionaction.md) collection||
|[Applylabelfromclassification](../api/informationprotectionpolicy-applylabelfromclassification.md)|[informationProtectionAction](informationprotectionaction.md) collection||
|[Extractlabel](../api/informationprotectionpolicy-extractlabel.md)|[informationProtectionContentLabel](informationprotectioncontentlabel.md)||
|[Removelabel](../api/informationprotectionpolicy-removelabel.md)|[informationProtectionAction](informationprotectionaction.md) collection||

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
  "@odata.type": "microsoft.graph.informationProtectionPolicy",
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
  "description": "informationProtectionPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->