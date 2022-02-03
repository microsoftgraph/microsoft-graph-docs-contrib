---
title: "granularAdminAccessAssignment resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: resourcePageType
---

# granularAdminAccessAssignment resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List granularAdminAccessAssignments](../api/granularadminaccessassignment-list.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) collection|Get a list of the [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) objects and their properties.|
|[Create granularAdminAccessAssignment](../api/granularadminrelationship-post-accessassignments.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md)|Create a new [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.|
|[Get granularAdminAccessAssignment](../api/granularadminaccessassignment-get.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md)|Read the properties and relationships of a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.|
|[Update granularAdminAccessAssignment](../api/granularadminaccessassignment-update.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md)|Update the properties of a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.|
|[Delete granularAdminAccessAssignment](../api/granularadminaccessassignment-delete.md)|None|Deletes a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainer|[granularAdminAccessContainer](../resources/granularadminaccesscontainer.md)|**TODO: Add Description**|
|accessDetails|[granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.granularAdminAccessAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularAdminAccessAssignment",
  "id": "String (identifier)",
  "status": "String",
  "accessContainer": {
    "@odata.type": "microsoft.graph.granularAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

