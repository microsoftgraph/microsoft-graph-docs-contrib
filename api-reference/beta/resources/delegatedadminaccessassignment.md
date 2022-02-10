---
title: "delegatedAdminAccessAssignment resource type"
description: "Represents an assignment of access details to an access container."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminAccessAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an assignment of access details (containing roles) to an access container (like a security group). Once it's active, the members of the access container get access to the roles specified in the access details.

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
|accessContainer|[delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|The access container of the access assignment.|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the access assignment.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which the access assignment was created in UTC. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the access assignment. This is set by the system and cannot be set by the caller.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this access assignment was last modified in UTC. This is set by the system and cannot be set by the caller.|
|status|String|The status of the assignment.|

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

