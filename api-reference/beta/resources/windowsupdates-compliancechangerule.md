---
title: "complianceChangeRule resource type"
description: "Rule governing the automatic creation of compliance changes."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# complianceChangeRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rule governing the automatic creation of compliance changes.

This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when created.|
|lastEvaluatedDateTime|DateTimeOffset|The date and time the rule was last evaluated.|
|lastModifiedDateTime|DateTimeOffset|The date and time last modified.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

