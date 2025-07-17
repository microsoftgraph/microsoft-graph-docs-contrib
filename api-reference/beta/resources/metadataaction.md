---
title: "metadataAction resource type (deprecated)"
description: "Represents the metadata to be written or removed from a file. Deprecated."
ms.localizationpriority: medium
author: "tommoser"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# metadataAction resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Represents the metadata to be written or removed from a file. **metadataAction** may be returned by the [evaluateRemoval](../api/informationprotectionlabel-evaluateremoval.md), [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md), and [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) APIs. The action informs the consuming application of the specific key/value pairs that should be added to the file or the specific metadata keys that should be removed from the file. This metadata is what describes the file or information as being *labeled*.

## Properties

| Property         | Type                                       | Description                                                                        |
| :--------------- | :----------------------------------------- | :--------------------------------------------------------------------------------- |
| metadataToAdd    | [keyValuePair](keyvaluepair.md) collection | A collection of key value pairs that should be added to the file.                  |
| metadataToRemove | String collection                          | A collection of strings that indicate which keys to remove from the file metadata. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.metadataAction",
  "baseType": "microsoft.graph.informationProtectionAction"
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

