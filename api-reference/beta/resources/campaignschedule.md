---
title: "campaignSchedule resource type"
description: "Represents a schedule for launching a campaign"
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# campaignSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a schedule for launching a campaign

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|The date and time at which the campaign completed.|
|launchDateTime|DateTimeOffset|The date and time at which the campaign was launched.|
|status|campaignStatus|The current state of the campaign. The possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `failed`, `cancelled`, `excluded`, `deleted`, `unknownFutureValue`.|

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

