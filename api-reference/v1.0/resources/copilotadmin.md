---
title: "copilotAdmin resource type"
description: "Represents a Microsoft 365 admin who can add or modify Microsoft 365 Copilot settings."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
ms.date: 05/08/2025
---

# copilotAdmin resource type

Namespace: microsoft.graph

Represents a Microsoft 365 admin who can add or modify Microsoft 365 Copilot settings.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[copilotAdminSetting](../resources/copilotadminsetting.md)|Set of Microsoft 365 Copilot settings that can be added or modified. Read-only. Nullable.|

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

