---
title: print resource type
description: When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of printServiceEndpoints that can be used to manage printers and print jobs within Universal Print.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# print resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of [printServiceEndpoints](printserviceendpoint.md) that can be used to manage printers and print jobs within Universal Print.

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List connectors](../api/print-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of print connectors. |
| [List printers](../api/print-list-printers.md) | [printer](printer.md) collection | Get a list of printers. |
| [List shares](../api/print-list-shares.md) | [printerShare](printershare.md) collection | Get a list of printer shares. |
| [List services](../api/print-list-services.md) | [printService](printservice.md) collection | Get a list of services. |
| [Create printerShare](../api/print-post-shares.md) | [printerShare](printershare.md) | Create a new printer share by posting to the **shares** collection. |
| [Create printer](../api/printer-create.md) | [printerCreateOperation](printerCreateOperation.md) | Create (register) a new printer with Universal Print. |
| [Update settings](../api/print-update-settings.md) |  [printSettings](printsettings.md) | Updates tenant-wide settings for the Universal Print service. |
| [List task definitions](../api/print-list-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) collection | Get a tenant-wide list of printTaskDefinitions created within Universal Print. |
| [Create task definition](../api/print-post-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Create a new printTaskDefinition. |
| [Update task definition](../api/print-update-taskdefinition.md) | [printTaskDefinition](printtaskdefinition.md) | Update a printTaskDefinition. |
| [Delete task definition](../api/print-delete-taskdefinition.md) | None | Delete a printTaskDefinition. |
| [List pull print printers](../api/print-list-pullprintprinters.md) | [pullPrintPrinter](pullprintprinter.md) collection | Get a list of the [pullPrintPrinter](../resources/pullprintprinter.md) objects and their properties in the tenant. |
| [Create pull print printer](../api/print-post-pullprintprinters.md) | None | Create a new [pullPrintPrinter](../resources/pullprintprinter.md) object asynchronously. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|settings|[printSettings](printsettings.md)|Tenant-wide settings for the Universal Print service.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|connectors|[printConnector](printconnector.md) collection|The list of available print connectors.|
|printers|[printer](printer.md) collection|The list of printers registered in the tenant.|
|pullPrintPrinters|[pullPrintPrinter](pullprintprinter.md) collection|The list of pull print printers registered in the tenant.|
|services|[printService](printservice.md) collection|The list of available Universal Print service endpoints.|
|shares|[printerShare](printershare.md) collection|The list of printer shares registered in the tenant.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.print",
  "keyProperty": "settings"
}-->

```json
{
  "settings": {"@odata.type": "microsoft.graph.printSettings"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "print resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [ 
  ]
}-->
