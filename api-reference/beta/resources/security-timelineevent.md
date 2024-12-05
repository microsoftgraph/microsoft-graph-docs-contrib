---
title: "timelineEvent resource type"
description: Timeline of a analyzedEmail entity
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# timelineEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|eventDetails|String|**TODO: Add Description**|
|eventResult|String|**TODO: Add Description**|
|eventSource|[microsoft.graph.security.eventSource](#eventsource-values)|**TODO: Add Description**.The possible values are: `system`, `admin`, `user`, `unknownFutureValue`.|
|eventThreats|String collection|**TODO: Add Description**|
|eventType|[microsoft.graph.security.timelineEventType](#timelineeventtype-values)|**TODO: Add Description**.The possible values are: `originalDelivery`, `systemTimeTravel`, `dynamicDelivery`, `userUrlClick`, `reprocessed`, `zap`, `quarantineRelease`, `air`, `unknown`, `unknownFutureValue`.|

### eventSource values 

|Member|
|:---|
|system|
|admin|
|user|
|unknownFutureValue|

### timelineEventType values 

|Member|
|:---|
|originalDelivery|
|systemTimeTravel|
|dynamicDelivery|
|userUrlClick|
|reprocessed|
|zap|
|quarantineRelease|
|air|
|unknown|
|unknownFutureValue|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.timelineEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.timelineEvent",
  "eventDateTime": "String (timestamp)",
  "eventSource": "String",
  "eventType": "String",
  "eventResult": "String",
  "eventThreats": [
    "String"
  ],
  "eventDetails": "String"
}
```

