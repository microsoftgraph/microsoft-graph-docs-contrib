---
title: "printerBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerBase resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printerBases](../api/printerbase-list.md)|[printerBase](../resources/printerbase.md) collection|Get a list of the [printerBase](../resources/printerbase.md) objects and their properties.|
|[Create printerBase](../api/printerbase-create.md)|[printerBase](../resources/printerbase.md)|Create a new [printerBase](../resources/printerbase.md) object.|
|[Get printerBase](../api/printerbase-get.md)|[printerBase](../resources/printerbase.md)|Read the properties and relationships of a [printerBase](../resources/printerbase.md) object.|
|[Update printerBase](../api/printerbase-update.md)|[printerBase](../resources/printerbase.md)|Update the properties of a [printerBase](../resources/printerbase.md) object.|
|[Delete printerBase](../api/printerbase-delete.md)|None|Deletes a [printerBase](../resources/printerbase.md) object.|
|[List jobs](../api/printerbase-list-jobs.md)|[printJob](../resources/printjob.md) collection|Get the printJob resources from the jobs navigation property.|
|[Create printJob](../api/printerbase-post-jobs.md)|[printJob](../resources/printjob.md)|Create a new printJob object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[printerCapabilities](../resources/printercapabilities.md)|**TODO: Add Description**|
|defaults|[printerDefaults](../resources/printerdefaults.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isAcceptingJobs|Boolean|**TODO: Add Description**|
|location|[printerLocation](../resources/printerlocation.md)|**TODO: Add Description**|
|manufacturer|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|status|[printerStatus](../resources/printerstatus.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[printJob](../resources/printjob.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerBase",
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
  }
}
```

