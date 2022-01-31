---
title: "granularAdminRelationship resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# granularAdminRelationship resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List granularAdminRelationships](../api/granularadminrelationship-list.md)|[granularAdminRelationship](../resources/granularadminrelationship.md) collection|Get a list of the [granularAdminRelationship](../resources/granularadminrelationship.md) objects and their properties.|
|[Create granularAdminRelationship](../api/tenantrelationship-post-granularadminrelationships.md)|[granularAdminRelationship](../resources/granularadminrelationship.md)|Create a new [granularAdminRelationship](../resources/granularadminrelationship.md) object.|
|[Get granularAdminRelationship](../api/granularadminrelationship-get.md)|[granularAdminRelationship](../resources/granularadminrelationship.md)|Read the properties and relationships of a [granularAdminRelationship](../resources/granularadminrelationship.md) object.|
|[Update granularAdminRelationship](../api/granularadminrelationship-update.md)|[granularAdminRelationship](../resources/granularadminrelationship.md)|Update the properties of a [granularAdminRelationship](../resources/granularadminrelationship.md) object.|
|[Delete granularAdminRelationship](../api/granularadminrelationship-delete.md)|None|Deletes a [granularAdminRelationship](../resources/granularadminrelationship.md) object.|
|[List accessAssignments](../api/granularadminrelationship-list-accessassignments.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) collection|Get the granularAdminAccessAssignment resources from the accessAssignments navigation property.|
|[Create granularAdminAccessAssignment](../api/granularadminrelationship-post-accessassignments.md)|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md)|Create a new granularAdminAccessAssignment object.|
|[List operations](../api/granularadminrelationship-list-operations.md)|[granularAdminOperation](../resources/granularadminoperation.md) collection|Get the granularAdminOperation resources from the operations navigation property.|
|[Create granularAdminOperation](../api/granularadminrelationship-post-operations.md)|[granularAdminOperation](../resources/granularadminoperation.md)|Create a new granularAdminOperation object.|
|[List requests](../api/granularadminrelationship-list-requests.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) collection|Get the granularAdminRelationshipRequest resources from the requests navigation property.|
|[Create granularAdminRelationshipRequest](../api/granularadminrelationship-post-requests.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md)|Create a new granularAdminRelationshipRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description**|
|activatedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customer|[granularAdminRelationshipCustomerParticipant](../resources/granularadminrelationshipcustomerparticipant.md)|**TODO: Add Description**|
|duration|Duration|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|partner|[granularAdminRelationshipParticipant](../resources/granularadminrelationshipparticipant.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessAssignments|[granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) collection|**TODO: Add Description**|
|operations|[granularAdminOperation](../resources/granularadminoperation.md) collection|**TODO: Add Description**|
|requests|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularAdminRelationship",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularAdminRelationship",
  "id": "String (identifier)",
  "name": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

