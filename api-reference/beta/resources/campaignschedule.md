---
title: "campaignSchedule resource type"
description: "Represents a schedule for launching a campaign"
author: "ak_graph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# campaignSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|Campaign end time|
|launchDateTime|DateTimeOffset|Campaign start datetime|
|status|campaignStatus|Status shows the current state of the campaign.The possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `failed`, `cancelled`, `excluded`, `deleted`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.campaignSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.campaignSchedule",
  "completionDateTime": "String (timestamp)",
  "launchDateTime": "String (timestamp)",
  "status": "String"
}
```

