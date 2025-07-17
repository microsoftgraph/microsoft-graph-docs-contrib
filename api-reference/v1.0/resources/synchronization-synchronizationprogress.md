---
title: "synchronizationProgress resource type"
description: "Represents the progress of a synchronizationJob toward completion."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# synchronizationProgress resource type

Namespace: microsoft.graph

Represents the progress of a [synchronizationJob](synchronization-synchronizationjob.md) toward completion.

## Properties

| Property                              | Type      | Description    |
|:--------------------------------------|:----------|:---------------|
|completedUnits|Int32|The numerator of a progress ratio; the number of units of changes already processed.|
|progressObservationDateTime|DateTimeOffset|The time of a progress observation as an offset in minutes from UTC.|
|totalUnits|Int32|The denominator of a progress ratio; a number of units of changes to be processed to accomplish synchronization.|
|units|String|An optional description of the units.|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationProgress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationProgress",
  "completedUnits": "Integer",
  "progressObservationDateTime": "String (timestamp)",
  "totalUnits": "Integer",
  "units": "String"
}
```

<!-- uuid: 15571993-7e2f-4842-84d5-01ceb67cdc05
20185-08-14 22:30:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationProcess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


