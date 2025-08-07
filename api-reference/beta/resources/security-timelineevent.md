---
title: "timelineEvent resource type"
description: "The timeline of an analyzedEmail entity."
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# timelineEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The timeline of an analyzedEmail entity.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|The date and time when the event occurred.|
|eventDetails|String|Additional details or context about the event.|
|eventResult|String|The outcome or result of the event, such as delivery location or action taken.|
|eventSource|[microsoft.graph.security.eventSource](#eventsource-values)|The origin or actor that triggered the event. The possible values are: `system`, `admin`, `user`, `unknownFutureValue`.|
|eventThreats|String collection|Collection of threats identified or associated with this event.|
|eventType|[microsoft.graph.security.timelineEventType](#timelineeventtype-values)|The type of event that occurred. The possible values are: `originalDelivery`, `systemTimeTravel`, `dynamicDelivery`, `userUrlClick`, `reprocessed`, `zap`, `quarantineRelease`, `air`, `unknown`, `unknownFutureValue`.|

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

