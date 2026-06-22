---
title: "ruleSchedule resource type"
description: "Represents how often the custom detection rule runs, and when it next runs."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# ruleSchedule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how often the [custom detection rule](../resources/security-detectionrule.md) runs, and when it next runs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|frequency|Duration|The recurring time interval at which the rule runs (ISO 8601 duration, for example P1D for daily, PT1H for hourly).|
|nextRunDateTime (deprecated)|DateTimeOffset|Timestamp of the custom detection rule's next scheduled run. **Deprecated.** This property will be removed from this resource on 2026-10-01.|
|period (deprecated)|String|How often the detection rule is set to run. The allowed values are: `0`, `1H`, `3H`, `12H`, or `24H`. `0` signifies the rule is run continuously. **Deprecated.** Use **frequency** instead. This property will be removed from this resource on 2026-10-01.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.ruleSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ruleSchedule",
  "frequency": "String (duration)",
  "nextRunDateTime": "String (timestamp)",
  "period": "String"
}
```

