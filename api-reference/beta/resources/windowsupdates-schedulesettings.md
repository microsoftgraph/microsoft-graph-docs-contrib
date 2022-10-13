---
title: "scheduleSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# scheduleSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gradualRollout|[microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.scheduleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.scheduleSettings",
  "startDateTime": "String (timestamp)",
  "gradualRollout": {
    "@odata.type": "microsoft.graph.windowsUpdates.gradualRolloutSettings"
  }
}
```

