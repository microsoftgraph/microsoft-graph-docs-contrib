---
title: printerStatus resource type
description: Represents the processing status of the printer, including any errors.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing status of the printer, including any errors.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|printerProcessingState|The current processing state. Valid values are described in the following table. Read-only.|
|details|printerProcessingStateDetail collection|The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.|
|description|String|A human-readable description of the printer's current processing state. Read-only.|

### printerProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The processing state reported by the printer is unknown.|
|idle|3|The printer is idle and ready to accept new print jobs.|
|processing|4|The printer is currently processing a print job and will process any pending jobs upon completion.|
|stopped|5|The printer encountered an issue (for example, ran out of paper in the active tray) and cannot continue the current print job until the issue is addressed. See the **details** value(s) or the **description** value for more information.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|

### printerProcessingStateDetail values

|Member|Value|Description|
|:---|:---|:---|
|other|0|Any other reason that does not fall in rest of the reasons.|
|none|1|No reasons.|
|mediaNeeded|2|Media in the currently-used input tray needs to be replaced before the job can continue.|
|mediaJam|3|Media in one or more trays is jammed.|
|movingToPaused|4|Someone paused the Printer using the Pause-Printer operation.|
|paused|5|Someone paused an ongoing print job.|
|shutdown|6|Someone removed a Printer object from service, and the device may be powered down or physically removed.|
|connectingToDevice|7|Printer is in the process of connecting to a shared network Output Device.|
|timedOut|8|The server was unable to get a response from the output device.|
|stopping|9|The Printer object is in the process of stopping the device.|
|stoppedPartially|10|One or more output devices are stopped.|
|tonerLow|11|The device is low on toner.|
|tonerEmpty|12|The device is out of toner.|
|spoolAreaFull|13|The limit of persistent storage allocated for spooling has been reached.|
|coverOpen|14|One or more covers are open.|
|interlockOpen|15|One or more interlock devices are open.|
|doorOpen|16|One or more doors on the device are open.|
|inputTrayMissing|17|One or more input trays are not in the device.|
|mediaLow|18|Media in one or more trays is almost exhausted.|
|mediaEmpty|19|Media in one or more trays is exhausted.|
|outputTrayMissing|20|One or more output trays are missing.|
|outputAreaAlmostFull|21|One or more output area is almost full (e.g. tray, stacker, collator).|
|outputAreaFull|22|One or more output trays are full and cannot accept more media.|
|markerSupplyLow|23|One or more marker sources (e.g., ink, toner or ribbon) are low.|
|markerSupplyEmpty|24|One or more marker sources (e.g., ink, toner or ribbon) are exhausted.|
|markerWasteAlmostFull|25|The device marker supply waste receptacle is almost full.|
|markerWasteFull|26|The device marker supply waste receptacle is full.|
|fuserOverTemp|27|The fuser temperature is above normal.|
|fuserUnderTemp|28|The fuser temperature is below normal.|
|opticalPhotoConductorNearEndOfLife|29|The optical photo conductor is near end of life.|
|opticalPhotoConductorLifeOver|30|The optical photo conductor is no longer functioning.|
|developerLow|31|The device is low on developer.|
|developerEmpty|32|The device is out of developer.|
|interpreterResourceUnavailable|33|An interpreter resource is unavailable (e.g. font, form).|
|unknownFutureValue|34|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerStatus"
}-->

```json
{
    "state": "String",
    "details": ["String"],
    "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

