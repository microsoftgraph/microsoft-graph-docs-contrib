---
title: "ruleSchedule resource type"
description: "Represents how often the custom detection rule runs, and when it next runs."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 08/25/2026
---

# ruleSchedule resource type

Namespace: microsoft.graph.security

Represents how often the [custom detection rule](../resources/security-detectionrule.md) runs, and when it next runs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|frequency|Duration|The recurring time interval at which the rule runs (ISO 8601 duration, for example P1D for daily, PT1H for hourly).|

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
  "frequency": "String (duration)"
}
```
