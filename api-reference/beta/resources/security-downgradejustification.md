---
title: "downgradeJustification resource type"
description: "Represents the user input on why downgrade was performed."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# downgradeJustification resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the user input on why downgrade was performed. The downgrade justification might be required based on the label policy configuration in Office Security and Compliance Center.

## Properties
| Property             | Type    | Description                                                                                          |
| :------------------- | :------ | :--------------------------------------------------------------------------------------------------- |
| isDowngradeJustified | Boolean | Indicates whether the downgrade is or is not justified.                                              |
| justificationMessage | String  | Message that indicates why a downgrade is justified. The message will appear in administrative logs. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.downgradeJustification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.downgradeJustification",
  "isDowngradeJustified": "Boolean",
  "justificationMessage": "String"
}
```

