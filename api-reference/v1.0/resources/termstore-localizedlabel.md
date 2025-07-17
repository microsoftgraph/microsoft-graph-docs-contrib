---
title: "localizedLabel resource type"
description: "Represents the label for a term in the term store."
author: vishriv
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# localizedLabel resource type

Namespace: microsoft.graph.termStore

Represents the label for a [term] in the term [store].

Identifies the labels associated with a given term.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDefault|Boolean|Indicates whether the label is the default label.|
|languageTag|String|The language tag for the label.|
|name|String|The name of the label.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
[term]: ../resources/termstore-term.md
[store]: ../resources/termstore-store.md


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


