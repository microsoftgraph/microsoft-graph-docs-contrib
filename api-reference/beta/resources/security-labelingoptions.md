---
title: "labelingOptions resource type"
description: "Represents the labeling options that can be provided to the evaluation APIs."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# labelingOptions resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the labeling options that can be provided to the evaluation APIs. **labelingOptions** must be passed in to the [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md) API to specify details about the label that is to be applied. 

## Properties
| Property               | Type                                                         | Description                                                                                                                                                                                |
| :--------------------- | :----------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| assignmentMethod       | String                                                       | Describes whether the label was applied by an automated (`standard`) process or a person (`privileged`). |
| downgradeJustification | [downgradeJustification](security-downgradejustification.md) | The downgrade justification object that indicates if downgrade was justified and, if so, the reason.                                                                                       |
| extendedProperties     | [keyValuePair](keyvaluepair.md) collection                   | Extended properties will be parsed and returned in the standard Microsoft Purview Information Protection labeled metadata format as part of the label information.                                 |
| labelId                | GUID                                                         | The GUID of the label that should be applied to the information.                                                                                                                           |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.labelingOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.labelingOptions",
  "assignmentMethod": "String",
  "downgradeJustification": {
    "@odata.type": "microsoft.graph.security.downgradeJustification"
  },
  "extendedProperties": [
    {
      "@odata.type": "microsoft.graph.security.keyValuePair"
    }
  ],
  "labelId": "GUID"
}
```

