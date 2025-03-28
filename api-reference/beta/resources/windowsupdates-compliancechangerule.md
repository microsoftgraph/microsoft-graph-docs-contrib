---
title: "complianceChangeRule resource type"
description: "An abstract type that represents a rule for governing the automatic creation of compliance changes."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# complianceChangeRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a rule for governing the automatic creation of compliance changes.

## Properties
| Property                 | Type           | Description                                         |
|:-------------------------|:---------------|:----------------------------------------------------|
| createdDateTime          | DateTimeOffset | The date and time when the rule was created.        |
| lastEvaluatedDateTime    | DateTimeOffset | The date and time when the rule was last evaluated. |
| lastModifiedDateTime     | DateTimeOffset | The date and time when the rule was last modified.  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.complianceChangeRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.complianceChangeRule",
  "createdDateTime": "String (timestamp)",
  "lastEvaluatedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
