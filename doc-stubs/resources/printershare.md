---
title: "printerShare resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerShare resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [printerBase](../resources/printerbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printerShares](../api/printershare-list.md)|[printerShare](../resources/printershare.md) collection|Get a list of the [printerShare](../resources/printershare.md) objects and their properties.|
|[Create printerShare](../api/printershare-create.md)|[printerShare](../resources/printershare.md)|Create a new [printerShare](../resources/printershare.md) object.|
|[Get printerShare](../api/printershare-get.md)|[printerShare](../resources/printershare.md)|Read the properties and relationships of a [printerShare](../resources/printershare.md) object.|
|[Update printerShare](../api/printershare-update.md)|[printerShare](../resources/printershare.md)|Update the properties of a [printerShare](../resources/printershare.md) object.|
|[Delete printerShare](../api/printershare-delete.md)|None|Deletes a [printerShare](../resources/printershare.md) object.|
|[List allowedGroups](../api/printershare-list-allowedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the allowedGroups navigation property.|
|[Add group](../api/printershare-post-allowedgroups.md)|[group](../resources/group.md)|Add allowedGroups by posting to the allowedGroups collection.|
|[List allowedUsers](../api/printershare-list-allowedusers.md)|[user](../resources/user.md) collection|Get the user resources from the allowedUsers navigation property.|
|[Add user](../api/printershare-post-allowedusers.md)|[user](../resources/user.md)|Add allowedUsers by posting to the allowedUsers collection.|
|[List jobs](../api/printershare-list-jobs.md)|[printJob](../resources/printjob.md) collection|Get the printJob resources from the jobs navigation property.|
|[Create printJob](../api/printershare-post-jobs.md)|[printJob](../resources/printjob.md)|Create a new printJob object.|
|[List printer](../api/printershare-list-printer.md)|[printer](../resources/printer.md) collection|Get the printer resources from the printer navigation property.|
|[Add printer](../api/printershare-post-printer.md)|[printer](../resources/printer.md)|Add printer by posting to the printer collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAllUsers|Boolean|**TODO: Add Description**|
|capabilities|[printerCapabilities](../resources/printercapabilities.md)|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|defaults|[printerDefaults](../resources/printerdefaults.md)|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|displayName|String|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|id|String|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|isAcceptingJobs|Boolean|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|location|[printerLocation](../resources/printerlocation.md)|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|manufacturer|String|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|model|String|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|status|[printerStatus](../resources/printerstatus.md)|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allowedGroups|[group](../resources/group.md) collection|**TODO: Add Description**|
|allowedUsers|[user](../resources/user.md) collection|**TODO: Add Description**|
|jobs|[printJob](../resources/printjob.md) collection|**TODO: Add Description** Inherited from [printerBase](../resources/printerbase.md)|
|printer|[printer](../resources/printer.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerShare",
  "baseType": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerShare",
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
  "allowAllUsers": "Boolean",
  "createdDateTime": "String (timestamp)"
}
```

