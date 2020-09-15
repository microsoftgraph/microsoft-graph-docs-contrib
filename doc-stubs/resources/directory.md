---
title: "directory resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directory resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List directories](../api/directory-list.md)|[directory](../resources/directory.md) collection|Get a list of the [directory](../resources/directory.md) objects and their properties.|
|[Create directory](../api/directory-create.md)|[directory](../resources/directory.md)|Create a new [directory](../resources/directory.md) object.|
|[Get directory](../api/directory-get.md)|[directory](../resources/directory.md)|Read the properties and relationships of a [directory](../resources/directory.md) object.|
|[Update directory](../api/directory-update.md)|[directory](../resources/directory.md)|Update the properties of a [directory](../resources/directory.md) object.|
|[Delete directory](../api/directory-delete.md)|None|Deletes a [directory](../resources/directory.md) object.|
|[List administrativeUnits](../api/directory-list-administrativeunits.md)|[administrativeUnit](../resources/administrativeunit.md) collection|Get the administrativeUnit resources from the administrativeUnits navigation property.|
|[Create administrativeUnits](../api/directory-post-administrativeunits.md)|[administrativeUnit](../resources/administrativeunit.md)|Create a new administrativeUnit object.|
|[Get administrativeUnits](../api/directory-get-administrativeunit.md)|[administrativeUnit](../resources/administrativeunit.md)|Read the properties and relationships of an [administrativeUnit](../resources/administrativeunit.md) object.|
|[Update administrativeUnits](../api/directory-update-administrativeunits.md)|[administrativeUnit](../resources/administrativeunit.md)|Update the properties of an administrativeUnits object.|
|[Delete administrativeUnits](../api/directory-delete-administrativeunits.md)|None|Delete an [administrativeUnit](../resources/administrativeunit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|administrativeUnits|[administrativeUnit](../resources/administrativeunit.md) collection|**TODO: Add Description**|
|deletedItems|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directory",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directory"
}
```

