---
title: "safeguardProfile resource type"
description: "Describes the issue(s) against which the service safeguards devices."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# safeguardProfile resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the issue(s) against which the service safeguards devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.windowsUpdates.safeguardCategory|Specifies the category of safeguards. The possible values are: `likelyIssues`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.safeguardProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.safeguardProfile",
  "category": "String"
}
```

