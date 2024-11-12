---
title: "copilotAdmin resource type"
description: "Represents a Microsoft 365 admin who can add or modify Microsoft 365 Copilot settings."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
---

# copilotAdmin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft 365 admin who can add or modify Microsoft 365 Copilot settings.


Inherits from [entity](../resources/entity.md).

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[copilotAdminSettings](../resources/copilotadminsetting.md)|Set of Copilot settings that can be added or modified. Navigation property. Read-only. Nullable.|

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

