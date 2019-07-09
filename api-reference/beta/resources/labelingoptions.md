---
title: "labelingOptions resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# labelingOptions resource type

[!INCLUDE beta-disclaimer]

labelingOptions must be passed in to applyLabel to specify details on the desired outcome of the operation. 

## Properties

| Property               | Type                                                | Description                                                                                                                   |
| :--------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| actionSource           | String                                              | Possible values are: `manual`, `automatic`, `recommended`, `policyDefault`, `mandatory`.                                      |
| assignmentMethod       | String                                              | Possible values are: `standard`, `privileged`, `auto`.                                                                        |
| downgradeJustification | [downgradeJustification](downgradejustification.md) | The downgrade justification object that indicates if downgrade was justified and, if so, the reason.                          |
| extendedProperties     | [keyValuePair](keyvaluepair.md) collection          | Extended properties will be parsed and returned in the standard MIP labeled metadata format as part of the label information. |
| labelId                | Guid                                                | The GUID of the label that should be applied to the information.                                                              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.labelingOptions",
  "baseType": null
}-->

```json
{
  "actionSource": "String",
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