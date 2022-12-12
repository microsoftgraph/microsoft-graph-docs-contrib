---
title: "privilegedAccessRoot resource type"
description: "**TODO: Add Description**"
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessRoot resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegedAccessRoots](../api/identitygovernance-list-privilegedaccess.md)|[privilegedAccessRoot](../resources/privilegedaccessroot.md) collection|Get a list of the [privilegedAccessRoot](../resources/privilegedaccessroot.md) objects and their properties.|
|[Create privilegedAccessRoot](../api/identitygovernance-post-privilegedaccess.md)|[privilegedAccessRoot](../resources/privilegedaccessroot.md)|Create a new [privilegedAccessRoot](../resources/privilegedaccessroot.md) object.|
|[Get privilegedAccessRoot](../api/privilegedaccessroot-get.md)|[privilegedAccessRoot](../resources/privilegedaccessroot.md)|Read the properties and relationships of a [privilegedAccessRoot](../resources/privilegedaccessroot.md) object.|
|[Update privilegedAccessRoot](../api/privilegedaccessroot-update.md)|[privilegedAccessRoot](../resources/privilegedaccessroot.md)|Update the properties of a [privilegedAccessRoot](../resources/privilegedaccessroot.md) object.|
|[Delete privilegedAccessRoot](../api/identitygovernance-delete-privilegedaccess.md)|None|Delete a [privilegedAccessRoot](../resources/privilegedaccessroot.md) object.|
|[List privilegedAccessGroup](../api/privilegedaccessroot-list-group.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md) collection|Get the privilegedAccessGroup resources from the group navigation property.|
|[Create privilegedAccessGroup](../api/privilegedaccessroot-post-group.md)|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|Create a new privilegedAccessGroup object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessRoot",
  "id": "String (identifier)"
}
```

