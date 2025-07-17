---
title: "labelingOptions resource type  (deprecated)"
description: "Represents the labeling options that can be provided to the evaluation APIs. Deprecated."
ms.localizationpriority: medium
author: "tommoser"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# labelingOptions resource type  (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Represents the labeling options that can be provided to the evaluation APIs. **labelingOptions** must be passed in to the [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md) API to specify details about the label that is to be applied. 

## Properties

| Property               | Type                                                | Description                                                                                                                   |
| :--------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| assignmentMethod       | String                                              | Possible values are: `standard`, `privileged`, `auto`.                                                                        |
| downgradeJustification | [downgradeJustification](downgradejustification.md) | The downgrade justification object that indicates if downgrade was justified and, if so, the reason.                          |
| extendedProperties     | [keyValuePair](keyvaluepair.md) collection          | Extended properties will be parsed and returned in the standard MIP labeled metadata format as part of the label information. |
| labelId                | Guid                                                | The GUID of the label that should be applied to the information.                                                              |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.labelingOptions",
  "baseType": null
}-->

```json
{
  "assignmentMethod": "String",
  "downgradeJustification": {"@odata.type": "microsoft.graph.downgradeJustification"},
  "extendedProperties": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "labelId": "Guid"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "labelingOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

