---
title: printer resource type
description: "Represents a physical printer device that is registered with the Universal Print service. Printer resources can be used to manage print jobs, printer settings, printer metadata, and registration status."
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 05/23/2024
---

# printer resource type

Namespace: microsoft.graph

Represents a printer device that is registered with the Universal Print service. Printer resources can be used to manage print jobs, printer settings, printer metadata, and registration status.

This resource supports:
* [Subscribing to change notifications](/graph/universal-print-webhook-notifications).

Inherits from [printerBase](../resources/printerbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create](../api/printer-create.md) | [printerCreateOperation](printerCreateOperation.md) | Create (register) a new printer with Universal Print. |
| [Get](../api/printer-get.md) | [printer](printer.md) | Read the properties and relationships of the printer object. |
| [Update](../api/printer-update.md) | [printer](printer.md) | Update the printer object. |
| [Delete](../api/printer-delete.md) | None | Unregister the physical printer from the Universal Print service. |
| [Restore factory defaults](../api/printer-restorefactorydefaults.md) | None | Restore a printer's default settings to the values specified by the manufacturer. |
| [List print jobs](../api/printer-list-jobs.md) | [printJob](printjob.md) collection | Get a list of print jobs that the printer queues for processing. |
| [Create print job](../api/printer-post-jobs.md) | [printJob](printjob.md) | Create a new print job for the printer. To start printing the job, use [start](../api/printjob-start.md). |
| [List connectors](../api/printer-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of connectors that this printer is associated with. |
| [List printerShares](../api/printer-list-shares.md) | [printerShare](printerShare.md) collection | Get a list of printerShares that this printer is associated with. Currently, only one printerShare can be associated with a printer. |
| [List task triggers](../api/printer-list-tasktriggers.md) | None | List [printTaskTriggers](printtasktrigger.md) associated with this printer. |
| [Create task trigger](../api/printer-post-tasktriggers.md) | [printTaskTrigger](printtasktrigger.md) | Create a [printTaskTrigger](printtasktrigger.md) that runs when print events occur. |
| [Delete task trigger](../api/printer-delete-tasktrigger.md) | None | Delete a [printTaskTrigger](printtasktrigger.md) that is associated with the printer. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[printerCapabilities](printercapabilities.md)|The capabilities of the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md).|
|defaults|[printerDefaults](printerdefaults.md)|The printer's default print settings. Inherited from [printerBase](../resources/printerbase.md).|
|displayName|String|The name of the printer. Inherited from [printerBase](../resources/printerbase.md).|
|hasPhysicalDevice|Boolean|True if the printer has a physical device for printing. Read-only.|
|id|String|The document's identifier. Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|isAcceptingJobs|Boolean|True if the printer is currently accepting new print jobs. Inherited from [printerBase](../resources/printerbase.md).|
|isShared|Boolean|True if the printer is shared; false otherwise. Read-only.|
|lastSeenDateTime|DateTimeOffset|The most recent dateTimeOffset when a printer interacted with Universal Print. Read-only.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer. Inherited from [printerBase](../resources/printerbase.md).|
|manufacturer|String|The manufacturer reported by the printer. Inherited from [printerBase](../resources/printerbase.md).|
|model|String|The model name reported by the printer. Inherited from [printerBase](../resources/printerbase.md).|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the printer was registered. Read-only.|
|status|[printerStatus](printerstatus.md)|The processing status of the printer, including any errors. Inherited from [printerBase](../resources/printerbase.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectors|[printConnector](printconnector.md)|The connectors that are associated with the printer.|
|jobs|[printJob](printjob.md) collection| The list of jobs that the printer queues for printing. Inherited from [printerBase](../resources/printerbase.md).|
|shares|[printerShare](printershare.md) collection| The list of printerShares that are associated with the printer. Currently, only one printerShare can be associated with the printer. Read-only. Nullable.|
|taskTriggers|[printTaskTrigger](printtasktrigger.md) collection|A list of task triggers that are associated with the printer.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printer",
  "baseType": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printer",
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
  "isShared": "Boolean",
  "hasPhysicalDevice": "Boolean",
  "lastSeenDateTime": "String (timestamp)"
}
```

