---
title: "delegatedAdminAccessAssignment resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminAccessAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminAccessAssignments](../api/delegatedadminaccessassignment-list.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|Get a list of the [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) objects and their properties.|
|[Create delegatedAdminAccessAssignment](../api/delegatedadminrelationship-post-accessassignments.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md)|Create a new [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.|
|[Get delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-get.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md)|Read the properties and relationships of a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.|
|[Update delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-update.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md)|Update the properties of a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.|
|[Delete delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-delete.md)|None|Deletes a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainer|[delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|**TODO: Add Description**|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminAccessAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "id": "String (identifier)",
  "status": "String",
  "accessContainer": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

