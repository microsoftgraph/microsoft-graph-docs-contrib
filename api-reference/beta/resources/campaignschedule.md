---
title: "campaignSchedule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# campaignSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|**TODO: Add Description**|
|launchDateTime|DateTimeOffset|**TODO: Add Description**|
|status|campaignStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `failed`, `cancelled`, `excluded`, `deleted`, `unknownFutureValue`.|

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

