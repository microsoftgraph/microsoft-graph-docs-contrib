---
title: "translationPreferences resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# translationPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageOverrides|[translationLanguageOverride](../resources/translationlanguageoverride.md) collection|**TODO: Add Description**|
|translationBehavior|translationBehavior|**TODO: Add Description**. The possible values are: `Ask`, `Yes`, `No`.|
|untranslatedLanguages|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.translationPreferences"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.translationPreferences",
  "translationBehavior": "String",
  "languageOverrides": [
    {
      "@odata.type": "microsoft.graph.translationLanguageOverride"
    }
  ],
  "untranslatedLanguages": [
    "String"
  ]
}
```

