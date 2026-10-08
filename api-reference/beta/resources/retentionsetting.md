---
title: "retentionSetting resource type"
description: "Contains the details of the retention settings for a protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/30/2024
---

# retentionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the details of the retention settings for a protection policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|interval|String|The frequency of the backup.|
|period|Duration|The period of time to retain the protected data for a single Microsoft 365 service. The possible values are: `P90D`, `P180D`, `P365D`, `P730D`, `P1095D`, `P1460D`, `P1825D`, `P2190D`, `P2555D`, `P2920D`, `P3285D`, and `P3650D`. Other values aren't supported.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.retentionSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.retentionSetting",
  "interval": "String",
  "period": "String (duration)"
}
```
