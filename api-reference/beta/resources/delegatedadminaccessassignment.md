---
title: "delegatedAdminAccessAssignment resource type"
description: "Represents an assignment of access details to an access container."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminAccessAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an assignment of access details (containing unified roles) to an access container (like a security group). Once it's active, the members of the access container get access to the roles specified in the access details.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-post.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Create a new **delegatedAdminAccessAssignment** object.|
|[List delegatedAdminAccessAssignments](../api/delegatedadminaccessassignment-list.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md) collection|Get a list of the **delegatedAdminAccessAssignment** objects and their properties.|
|[Get delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-get.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Read the properties and relationships of a **delegatedAdminAccessAssignment** object.|
|[Update delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-update.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Update the properties of a **delegatedAdminAccessAssignment** object.|
|[Delete delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-delete.md)|None|Delete a **delegatedAdminAccessAssignment** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainer|[delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|The access container of the access assignment.|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the access assignment.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which the access assignment was created in UTC. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the access assignment. This is set by the system and cannot be set by the caller.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this access assignment was last modified in UTC. This is set by the system and cannot be set by the caller.|
|status|delegatedAdminAccessAssignmentStatus|The status of the access assignment. The possible values are: `pending`, `active`, `deleting`, `deleted`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminAccessAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "id": "a9d6cf90-083a-47dc-ace2-1da98be3f344",
  "status": "active",
  "accessContainer": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "createdDateTime": "2022-02-13T10:33:52.3182097Z",
  "lastModifiedDateTime": "2022-03-09T20:34:59.3282097Z"
}
```

