---
title: "copilotAdminSetting resource type"
description: "Represents an admin setting for Microsoft 365 Copilot."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
ms.date: 05/08/2025
---

# copilotAdminSetting resource type

Namespace: microsoft.graph

Represents an admin setting for Microsoft 365 Copilot.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|limitedMode|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Represents a setting that controls whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts. Read-only. Nullable.|

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

