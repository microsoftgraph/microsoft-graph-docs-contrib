---
title: "metadataAction resource type"
description: "Action specifies the metadata that should be added or removed from the information."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# metadataAction resource type

[!INCLUDE beta-disclaimer]

The applyLabel and applyLabelFromClassification APIs will return metadataAction. The action informs the consuming application to of the specific metadata key/value pairs that should be added to the information or the specific metadata keys that should be removed from the information. 

[Information protection content labels]() are persisted to files and other information via the metadata that is specified by this action.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|metadataToAdd|[keyValuePair](keyvaluepair.md) collection||
|metadataToRemove|String collection||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.metadataAction",
  "baseType": "microsoft.informationProtection.informationProtectionAction"
}-->

```json
{
  "metadataToAdd": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "metadataToRemove": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "metadataAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->