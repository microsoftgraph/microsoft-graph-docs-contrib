---
title: printerStatus resource type
description: Represents the processing status of the printer, including any errors.
author: braedenp-msft
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printerStatus resource type

Namespace: microsoft.graph

Represents the processing status of the printer, including any errors.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A human-readable description of the printer's current processing state. Read-only.|
|details|printerProcessingStateDetail collection|The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.|
|state|printerProcessingState|The current processing state. Valid values are described in the following table. Read-only.|

### printerProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The processing state reported by the printer is unknown.|
|idle|1|The printer is idle and ready to accept new print jobs.|
|processing|2|The printer is currently processing a print job and will process any pending jobs upon completion.|
|stopped|3|The printer encountered an issue (for example, ran out of paper in the active tray) and cannot continue the current print job until the issue is addressed. See the **details** value(s) or the **description** value for more information.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

### printerProcessingStateDetail values

[printerProcessingStateDetail enum type](./printerprocessingstatedetail.md)

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerStatus",
  "state": "String",
  "details": [
    "String"
  ],
  "description": "String"
}
```
