---
title: "retentionPeriodChange resource type"
description: "Describes the retention period changes to be applied to a protection unit."
author: "rigera"
ms.date: 04/28/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# retentionPeriodChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the retention period changes to be applied to a protection unit.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|effectiveFromDateTime|DateTimeOffset|The date and time from which the retention period change takes effect. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026, is `2026-01-01T00:00:00Z`.|
|status|retentionPeriodChangeStatus|Indicates the progress of the application of the retention period change. The possible values are: `none`, `inProgress`, `failed`, `completed`, `unknownFutureValue`.|
|targetRetentionPeriodInDays|Int32|Specifies the retention period, in days, that applies after the change is completed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.retentionPeriodChange"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.retentionPeriodChange",
  "status": "String",
  "targetRetentionPeriodInDays": "Int32",
  "effectiveFromDateTime": "String (timestamp)"
}
```
