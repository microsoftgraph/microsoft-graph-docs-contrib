---
title: "localizedDescription resource type"
description: "Describes the facet for localized description in the termStore"
author: mohitpcad
ms.author: mopathak
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
doc_type: resourcePageType
---

# localizedDescription resource type

Namespace: microsoft.graph.termStore

The **microsoft.graph.termStore.localizedDescription** resource represents the localized description used to describe a term in the [microsoft.graph.termStore.store]. For more info see [microsoft.graph.termStore.term].


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description in localized language|
|languageTag|String|Language tag for the label|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.termStore.localizedDescription"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.localizedDescription",
  "description": "String",
  "languageTag": "String"
}
```

[microsoft.graph.termStore.term]: termStore-term.md
[microsoft.graph.termStore.store]: termStore-store.md

<!--
{
  "type": "#page.annotation",
  "description": "TermLocalizedDescriptionFacet is the facet for containing the description of a set",
  "keywords": "termLocalizedDescriptionFacet,facet,resource",
  "section": "documentation",
  "tocPath": "TermLocalizedDescriptionFacet",
  "tocBookmarks": {
    "Resources/termStore.termLocalizedDescription": "#"
  },
  "suppressions": []
}
-->
