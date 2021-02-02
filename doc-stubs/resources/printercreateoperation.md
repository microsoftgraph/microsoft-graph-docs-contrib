---
title: "printerCreateOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerCreateOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [printOperation](../resources/printoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printerCreateOperations](../api/printercreateoperation-list.md)|[printerCreateOperation](../resources/printercreateoperation.md) collection|Get a list of the [printerCreateOperation](../resources/printercreateoperation.md) objects and their properties.|
|[Create printerCreateOperation](../api/printercreateoperation-create.md)|[printerCreateOperation](../resources/printercreateoperation.md)|Create a new [printerCreateOperation](../resources/printercreateoperation.md) object.|
|[Get printerCreateOperation](../api/printercreateoperation-get.md)|[printerCreateOperation](../resources/printercreateoperation.md)|Read the properties and relationships of a [printerCreateOperation](../resources/printercreateoperation.md) object.|
|[Update printerCreateOperation](../api/printercreateoperation-update.md)|[printerCreateOperation](../resources/printercreateoperation.md)|Update the properties of a [printerCreateOperation](../resources/printercreateoperation.md) object.|
|[Delete printerCreateOperation](../api/printercreateoperation-delete.md)|None|Deletes a [printerCreateOperation](../resources/printercreateoperation.md) object.|
|[List printer](../api/printercreateoperation-list-printer.md)|[printer](../resources/printer.md) collection|Get the printer resources from the printer navigation property.|
|[Add printer](../api/printercreateoperation-post-printer.md)|[printer](../resources/printer.md)|Add printer by posting to the printer collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificate|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [printOperation](../resources/printoperation.md)|
|id|String|**TODO: Add Description** Inherited from [printOperation](../resources/printoperation.md)|
|status|[printOperationStatus](../resources/printoperationstatus.md)|**TODO: Add Description** Inherited from [printOperation](../resources/printoperation.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|printer|[printer](../resources/printer.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerCreateOperation",
  "baseType": "microsoft.graph.printOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerCreateOperation",
  "id": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.printOperationStatus"
  },
  "createdDateTime": "String (timestamp)",
  "certificate": "String"
}
```

