---
title: "retentionSetting resource type"
description: "Contains the backup frequency and retention period for the retentionSettings property of protectionPolicyBase and its derived types."
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

Contains the backup frequency and retention period for the **retentionSettings** property of [protectionPolicyBase](../resources/protectionpolicybase.md) and its derived types.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|interval|String|The backup frequency, expressed as an ISO 8601 repeating interval. The service defines the backup intervals: `R/PT10M` for 10-minute copies and `R/P1W` for weekly copies. Use `R/P1W` when specifying the policy retention period in a create or update request.|
|period|Duration|The period of time to retain the protected data for a single Microsoft 365 service, expressed as an ISO 8601 duration. The supported policy retention periods in create and update requests are: `P90D`, `P180D`, `P365D`, `P730D`, `P1095D`, `P1460D`, `P1825D`, `P2190D`, `P2555D`, `P2920D`, `P3285D`, and `P3650D`. Other policy retention periods aren't supported.|

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
