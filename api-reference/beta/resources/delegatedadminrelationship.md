---
title: "delegatedAdminRelationship resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminRelationship resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationships](../api/delegatedadminrelationship-list.md)|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md) collection|Get a list of the [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects and their properties.|
|[Create delegatedAdminRelationship](../api/tenantrelationship-post-delegatedadminrelationships.md)|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md)|Create a new [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.|
|[Get delegatedAdminRelationship](../api/delegatedadminrelationship-get.md)|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md)|Read the properties and relationships of a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.|
|[Update delegatedAdminRelationship](../api/delegatedadminrelationship-update.md)|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md)|Update the properties of a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.|
|[Delete delegatedAdminRelationship](../api/delegatedadminrelationship-delete.md)|None|Deletes a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.|
|[List accessAssignments](../api/delegatedadminrelationship-list-accessassignments.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|Get the delegatedAdminAccessAssignment resources from the accessAssignments navigation property.|
|[Create delegatedAdminAccessAssignment](../api/delegatedadminrelationship-post-accessassignments.md)|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md)|Create a new delegatedAdminAccessAssignment object.|
|[List operations](../api/delegatedadminrelationship-list-operations.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md) collection|Get the delegatedAdminOperation resources from the operations navigation property.|
|[Create delegatedAdminOperation](../api/delegatedadminrelationship-post-operations.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md)|Create a new delegatedAdminOperation object.|
|[List requests](../api/delegatedadminrelationship-list-requests.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|Get the delegatedAdminRelationshipRequest resources from the requests navigation property.|
|[Create delegatedAdminRelationshipRequest](../api/delegatedadminrelationship-post-requests.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md)|Create a new delegatedAdminRelationshipRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|**TODO: Add Description**|
|activatedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customer|[delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|**TODO: Add Description**|
|duration|Duration|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|partner|[delegatedAdminRelationshipParticipant](../resources/delegatedadminrelationshipparticipant.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessAssignments|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|**TODO: Add Description**|
|operations|[delegatedAdminOperation](../resources/delegatedadminoperation.md) collection|**TODO: Add Description**|
|requests|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminRelationship",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
  "id": "String (identifier)",
  "displayName": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

