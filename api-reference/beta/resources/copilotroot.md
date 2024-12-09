---
title: "copilotRoot resource type"
description: "A container for Microsoft 365 Copilot admin controls."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
ms.date: 11/12/2024
---

# copilotRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for Microsoft 365 Copilot admin controls.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|admin|[copilotAdmin](../resources/copilotadmin.md)|The Microsoft 365 Copilot admin who can add or modify Copilot settings. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.copilotRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.copilotRoot"
}
```

