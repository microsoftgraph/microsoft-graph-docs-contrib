---
title: "copilotAdminSetting resource type"
description: "Represents a navigation property for Copilot settings."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
---

# copilotAdminSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a navigation property for Copilot settings.


Inherits from [entity](../resources/entity.md).

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|limitedMode|[LimitedMode](../resources/copilotadminlimitedmode.md)|Add or modify copilot limited mode. Navigation property. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.copilotAdminSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.copilotAdminSetting"
}
```

