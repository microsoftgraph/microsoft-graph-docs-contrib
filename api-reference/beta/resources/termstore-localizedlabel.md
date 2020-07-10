---
title: "localizedLabel resource type"
description: "Describes the facet for labels of terms in the termStore"
author: mohitpcad
ms.author: mopathak
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
doc_type: resourcePageType
---

# localizedLabel resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **microsoft.graph.termStore.localizedLabel** resource represents the term-label of a [microsoft.graph.termStore.term] used in the [microsoft.graph.termStore.store].

Identifies the labels associated with a given term. Inherits from [microsoft.graph.termStore.localizedName].

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDefault|Boolean|Whether label is default label or not|
|languageTag|String|Language tag for the label|
|name|String|Name of the label|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.termStore.localizedLabel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.localizedLabel",
  "name": "String",
  "isDefault": "Boolean",
  "languageTag": "String"
}
```


[microsoft.graph.termStore.term]: termstore-term.md
[microsoft.graph.termStore.localizedName]: termstore-localizedname.md
[microsoft.graph.termStore.store]: termstore-store.md


<!--
{
  "type": "#page.annotation",
  "description": "TermLocalizedLabelFacet is the facet for containing the label of a term",
  "keywords": "termLocalizedLabelFacet,facet,resource",
  "section": "documentation",
  "tocPath": "termstorelocalizedlabel",
  "tocBookmarks": {
    "Resources/termStore.termstorelocalizedlabel": "#"
  },
  "suppressions": []
}
-->
