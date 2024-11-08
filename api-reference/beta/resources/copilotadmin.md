---
title: "copilotAdmin resource type"
description: "Represents a navigation property for Copilot admin. Copilot admin can add or modify Copilot settings."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
---

# copilotAdmin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a navigation property for Copilot admin. Copilot admin can add or modify Copilot settings.


Inherits from [entity](../resources/entity.md).

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[Settings](../resources/copilotadminsetting.md)|Set of Copilot settings that can be added or modified.. Navigation property. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.copilotAdmin",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.copilotAdmin"
}
```

