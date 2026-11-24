---
title: "pullPrintPrinterCreateOperation resource type"
description: "Represents the status of a long-running request to create a pullPrintPrinter."
author: nilakhan
ms.date: 08/05/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# pullPrintPrinterCreateOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a long-running request to create a [pullPrintPrinter](pullprintprinter.md).

The creation of a pull print printer is an asynchronous operation. The [create request](../api/print-post-pullprintprinters.md) returns a `202 Accepted` response code with no response body and the operation URL in the `Location` header. [Get](../api/pullprintprintercreateoperation-get.md) this operation at that URL to retrieve its status. Observe the `Retry-After` interval between polling attempts until **status.state** is `succeeded` or `failed`. If creation succeeds, the **pullPrintPrinter** relationship identifies the created pull print printer.

Inherits from [printOperation](../resources/printoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/pullprintprintercreateoperation-get.md)|[pullPrintPrinterCreateOperation](../resources/pullprintprintercreateoperation.md)|Get a [pullPrintPrinterCreateOperation](../resources/pullprintprintercreateoperation.md) object to monitor the status of a [pullPrintPrinter](../resources/pullprintprinter.md) creation operation.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the operation was created. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Inherited from [printOperation](../resources/printoperation.md).|
|id|String|The identifier. Inherited from [printOperation](../resources/printoperation.md).|
|status|[printOperationStatus](../resources/printoperationstatus.md)|The status of the operation. Read-only. Inherited from [printOperation](../resources/printoperation.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|pullPrintPrinter|[pullPrintPrinter](../resources/pullprintprinter.md)|The pull print printer that this operation creates.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pullPrintPrinterCreateOperation",
  "baseType": "microsoft.graph.printOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pullPrintPrinterCreateOperation",
  "id": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.printOperationStatus"
  },
  "createdDateTime": "String (timestamp)"
}
```
