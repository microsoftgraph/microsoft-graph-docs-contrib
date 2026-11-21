---
title: "pullPrintPrinter resource type"
description: "Represents a virtual printer to which users send print jobs for later release at any member printer."
author: nilakhan
ms.date: 08/05/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# pullPrintPrinter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a virtual [printer](../resources/printer.md) to which users send print jobs for later release at any member printer.

Inherits from [printerBase](../resources/printerbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/print-list-pullprintprinters.md)|[pullPrintPrinter](../resources/pullprintprinter.md) collection|Get a list of the [pullPrintPrinter](../resources/pullprintprinter.md) objects and their properties in the tenant.|
|[Create](../api/print-post-pullprintprinters.md)|None|Create a new [pullPrintPrinter](../resources/pullprintprinter.md) object asynchronously.|
|[Get](../api/pullprintprinter-get.md)|[pullPrintPrinter](../resources/pullprintprinter.md)|Read the properties and relationships of a [pullPrintPrinter](../resources/pullprintprinter.md) object.|
|[Update](../api/pullprintprinter-update.md)|[pullPrintPrinter](../resources/pullprintprinter.md)|Update the properties of a [pullPrintPrinter](../resources/pullprintprinter.md) object.|
|[Delete](../api/pullprintprinter-delete.md)|None|Delete a [pullPrintPrinter](../resources/pullprintprinter.md).|
|[Add printer](../api/pullprintprinter-post-printers.md)|None|Add an existing [printer](../resources/printer.md) to the **printers** relationship of a [pullPrintPrinter](../resources/pullprintprinter.md).|
|[Remove printer](../api/pullprintprinter-delete-printers.md)|None|Remove a [printer](../resources/printer.md) from the **printers** relationship of a [pullPrintPrinter](../resources/pullprintprinter.md). This operation removes only the membership; it doesn't delete the **printer** or the **pullPrintPrinter**.|
|[Restore factory defaults](../api/pullprintprinter-restorefactorydefaults.md)|None|Restore the default settings of a [pullPrintPrinter](../resources/pullprintprinter.md) to the values specified by the manufacturer.|
|[Member suggestions](../api/pullprintprinter-membersuggestions.md)|[printer](../resources/printer.md) collection|Get a list of [printer](../resources/printer.md) objects that are eligible candidates to become member printers of a [pullPrintPrinter](../resources/pullprintprinter.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[printerCapabilities](../resources/printercapabilities.md)|The capabilities of the pull print printer. Read-only. Inherited from [printerBase](../resources/printerbase.md).|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The default print settings of the pull print printer. Inherited from [printerBase](../resources/printerbase.md).|
|displayName|String|The name of the pull print printer. Set when you create the pull print printer; read-only after creation. Inherited from [printerBase](../resources/printerbase.md).|
|id|String|The identifier of the pull print printer. Read-only. Inherited from [printerBase](../resources/printerbase.md).|
|includeAllPrinters|Boolean|Indicates whether every printer in the tenant is automatically a member of this pull print printer. When `true`, the **printers** collection doesn't need to be managed explicitly.|
|isAcceptingJobs|Boolean|Specifies whether the pull print printer currently accepts new print jobs. Read-only. Inherited from [printerBase](../resources/printerbase.md).|
|location|[printerLocation](../resources/printerlocation.md)|The organizational location of the pull print printer. Inherited from [printerBase](../resources/printerbase.md).|
|manufacturer|String|The manufacturer of the pull print printer. Read-only. Inherited from [printerBase](../resources/printerbase.md).|
|model|String|The model name of the pull print printer. Read-only. Inherited from [printerBase](../resources/printerbase.md).|
|registeredDateTime|DateTimeOffset|The date and time when the pull print printer was registered. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|status|[printerStatus](../resources/printerstatus.md)|The processing status of the pull print printer, including any errors. Read-only. Inherited from [printerBase](../resources/printerbase.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[printJob](../resources/printjob.md) collection|The list of jobs that are queued in the pull print printer. Inherited from [printerBase](../resources/printerbase.md).|
|printers|[printer](../resources/printer.md) collection|The member printers at which print jobs sent to this pull print printer can be released. Use [Add printer](../api/pullprintprinter-post-printers.md) and [Remove printer](../api/pullprintprinter-delete-printers.md) to manage explicit membership.|
|shares|[printerShare](../resources/printershare.md) collection|The printer shares that are associated with this pull print printer.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pullPrintPrinter",
  "baseType": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pullPrintPrinter",
  "id": "String (identifier)",
  "displayName": "String",
  "manufacturer": "String",
  "model": "String",
  "isAcceptingJobs": "Boolean",
  "defaults": {
    "@odata.type": "microsoft.graph.printerDefaults"
  },
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "capabilities": {
    "@odata.type": "microsoft.graph.printerCapabilities"
  },
  "status": {
    "@odata.type": "microsoft.graph.printerStatus"
  },
  "registeredDateTime": "String (timestamp)",
  "includeAllPrinters": "Boolean"
}
```
