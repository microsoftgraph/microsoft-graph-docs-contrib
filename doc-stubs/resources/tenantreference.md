---
title: "tenantReference resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tenantReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantReferences](../api/tenantreference-list.md)|[tenantReference](../resources/tenantreference.md) collection|Get a list of the [tenantReference](../resources/tenantreference.md) objects and their properties.|
|[Create tenantReference](../api/tenantreference-create.md)|[tenantReference](../resources/tenantreference.md)|Create a new [tenantReference](../resources/tenantreference.md) object.|
|[Get tenantReference](../api/tenantreference-get.md)|[tenantReference](../resources/tenantreference.md)|Read the properties and relationships of a [tenantReference](../resources/tenantreference.md) object.|
|[Update tenantReference](../api/tenantreference-update.md)|[tenantReference](../resources/tenantreference.md)|Update the properties of a [tenantReference](../resources/tenantreference.md) object.|
|[Delete tenantReference](../api/tenantreference-delete.md)|None|Deletes a [tenantReference](../resources/tenantreference.md) object.|
|[checkMemberGroups](../api/tenantreference-checkmembergroups.md)|String collection|**TODO: Add Description**|
|[checkMemberObjects](../api/tenantreference-checkmemberobjects.md)|String collection|**TODO: Add Description**|
|[getMemberGroups](../api/tenantreference-getmembergroups.md)|String collection|**TODO: Add Description**|
|[getMemberObjects](../api/tenantreference-getmemberobjects.md)|String collection|**TODO: Add Description**|
|[restore](../api/tenantreference-restore.md)|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|tenantId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantReference",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantReference",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "tenantId": "String"
}
```

