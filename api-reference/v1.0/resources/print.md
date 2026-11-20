---
title: print resource type
description: When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of printServiceEndpoints that can be used to manage printers and print jobs within Universal Print.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# print resource type

Namespace: microsoft.graph

When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of [printServiceEndpoints](printserviceendpoint.md) that can be used to manage printers and print jobs within Universal Print.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List connectors](../api/print-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of print connectors. |
| [List printers](../api/print-list-printers.md) | [printer](printer.md) collection | Get a list of printers. |
| [List shares](../api/print-list-shares.md) | [printerShare](printershare.md) collection | Get a list of printer shares. |
| [List services](../api/print-list-services.md) | [printService](printservice.md) collection | Get a list of services. |
| [Create printerShare](../api/print-post-shares.md) | [printerShare](printershare.md) | Create a new printer share by posting to the **shares** collection. |
| [Create printer](../api/printer-create.md) | [printerCreateOperation](printerCreateOperation.md) | Create (register) a new printer with Universal Print. |
| [Update settings](../api/print-update-settings.md) |  [printSettings](printsettings.md) | Updates tenant-wide settings for the Universal Print service. |
| [List task definitions](../api/print-list-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) collection | Get a tenant-wide list of printTaskDefinitions created within Universal Print. |
| [Create task definition](../api/print-post-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Create a new printTaskDefinition. |
| [List pull print printers](../api/print-list-pullprintprinters.md) | [pullPrintPrinter](pullprintprinter.md) collection | Get a list of the [pullPrintPrinter](../resources/pullprintprinter.md) objects and their properties in the tenant. |
| [Create pull print printer](../api/print-post-pullprintprinters.md) | None | Create a new [pullPrintPrinter](../resources/pullprintprinter.md) object asynchronously. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settings|[printSettings](../resources/printsettings.md)|Tenant-wide settings for the Universal Print service.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectors|[printConnector](printconnector.md) collection|The list of available print connectors.|
|operations|[printOperation](../resources/printoperation.md) collection|The list of print long running operations.|
|printers|[printer](printer.md) collection|The list of printers registered in the tenant.|
|pullPrintPrinters|[pullPrintPrinter](pullprintprinter.md) collection|The list of pull print printers registered in the tenant.|
|services|[printService](printservice.md) collection|The list of available Universal Print service endpoints.|
|shares|[printerShare](printershare.md) collection|The list of printer shares registered in the tenant.|
|taskDefinitions|[printTaskDefinition](../resources/printtaskdefinition.md) collection|List of abstract definition for a task that can be triggered when various events occur within Universal Print.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.print",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.print",
  "settings": {
    "@odata.type": "microsoft.graph.printSettings"
  }
}
```
