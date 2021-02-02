---
title: "print resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# print resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get print](../api/print-get.md)|[print](../resources/print.md)|Read the properties and relationships of a [print](../resources/print.md) object.|
|[Update print](../api/print-update.md)|[print](../resources/print.md)|Update the properties of a [print](../resources/print.md) object.|
|[List connectors](../api/print-list-connectors.md)|[printConnector](../resources/printconnector.md) collection|Get the printConnector resources from the connectors navigation property.|
|[Create printConnector](../api/print-post-connectors.md)|[printConnector](../resources/printconnector.md)|Create a new printConnector object.|
|[List operations](../api/print-list-operations.md)|[printOperation](../resources/printoperation.md) collection|Get the printOperation resources from the operations navigation property.|
|[Create printOperation](../api/print-post-operations.md)|[printOperation](../resources/printoperation.md)|Create a new printOperation object.|
|[List printers](../api/print-list-printers.md)|[printer](../resources/printer.md) collection|Get the printer resources from the printers navigation property.|
|[Create printer](../api/print-post-printers.md)|[printer](../resources/printer.md)|Create a new printer object.|
|[List services](../api/print-list-services.md)|[printService](../resources/printservice.md) collection|Get the printService resources from the services navigation property.|
|[Create printService](../api/print-post-services.md)|[printService](../resources/printservice.md)|Create a new printService object.|
|[List shares](../api/print-list-shares.md)|[printerShare](../resources/printershare.md) collection|Get the printerShare resources from the shares navigation property.|
|[Create printerShare](../api/print-post-shares.md)|[printerShare](../resources/printershare.md)|Create a new printerShare object.|
|[List taskDefinitions](../api/print-list-taskdefinitions.md)|[printTaskDefinition](../resources/printtaskdefinition.md) collection|Get the printTaskDefinition resources from the taskDefinitions navigation property.|
|[Create printTaskDefinition](../api/print-post-taskdefinitions.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Create a new printTaskDefinition object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingSummary|[printBillingSummary](../resources/printbillingsummary.md)|**TODO: Add Description**|
|settings|[printSettings](../resources/printsettings.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectors|[printConnector](../resources/printconnector.md) collection|**TODO: Add Description**|
|operations|[printOperation](../resources/printoperation.md) collection|**TODO: Add Description**|
|printers|[printer](../resources/printer.md) collection|**TODO: Add Description**|
|services|[printService](../resources/printservice.md) collection|**TODO: Add Description**|
|shares|[printerShare](../resources/printershare.md) collection|**TODO: Add Description**|
|taskDefinitions|[printTaskDefinition](../resources/printtaskdefinition.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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
  },
  "billingSummary": {
    "@odata.type": "microsoft.graph.printBillingSummary"
  }
}
```

