---
title: "delegatedAdminAccessAssignment resource type"
description: "Represents an assignment of administrative roles to a Microsoft partner's access container."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminAccessAssignment resource type

Namespace: microsoft.graph

Represents an assignment of administrative roles to a Microsoft partner using delegated administration. The administrative roles are assigned to the Microsoft partner through an access container (like a security group). Once it's active, the members of the access container get access to the roles specified in the access details.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminAccessAssignment](../api/delegatedadminrelationship-post-accessassignments.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Create a new **delegatedAdminAccessAssignment** object.|
|[List delegatedAdminAccessAssignments](../api/delegatedadminrelationship-list-accessassignments.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md) collection|Get a list of the **delegatedAdminAccessAssignment** objects and their properties.|
|[Get delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-get.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Read the properties and relationships of a **delegatedAdminAccessAssignment** object.|
|[Update delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-update.md)|[delegatedAdminAccessAssignment](delegatedadminaccessassignment.md)|Update the properties of a **delegatedAdminAccessAssignment** object.|
|[Delete delegatedAdminAccessAssignment](../api/delegatedadminaccessassignment-delete.md)|None|Delete a **delegatedAdminAccessAssignment** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainer|[delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|The access container through which members are assigned access. For example, a security group.|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details containing the identifiers of the administrative roles that the partner is assigned in the customer tenant.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the access assignment was created. Read-only.|
|id|String|The unique identifier of the access assignment. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time in ISO 8601 and in UTC time when this access assignment was last modified. Read-only.|
|status|delegatedAdminAccessAssignmentStatus|The status of the access assignment. Read-only. The possible values are: `pending`, `active`, `deleting`, `deleted`, `error`, `unknownFutureValue`.|

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

