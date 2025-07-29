---
title: "timePeriod resource type"
description: "Contains the start and end date time for a time period."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# timePeriod resource type

Namespace: microsoft.graph

Contains the start and end date time for a time period.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The date time of the end of the time period.|
|startDateTime|DateTimeOffset|The date time of the start of the time period.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timePeriod"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.timePeriod",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

