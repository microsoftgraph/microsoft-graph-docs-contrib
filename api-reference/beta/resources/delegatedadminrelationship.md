---
title: "delegatedAdminRelationship resource type"
description: "Represents the partner view of a delegated admin relationship between a partner and customer."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminRelationship resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the partner view of a delegated admin relationship between a partner and customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationships](../api/tenantrelationship-list-delegatedadminrelationships.md)|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md) collection|Get a list of the [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects and their properties.|
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
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the relationship.|
|activatedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship became active in UTC. This is set by the system and cannot be set by the caller.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship was created in UTC. This is set by the system and cannot be set by the caller.|
|customer|[delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The information of the customer of the relationship. This is set either by the partner during relationship creation, or by the system after customer approval of the relationship, and cannot be changed by the customer, and by the partner once the relationship is in the "approvalPending" status or beyond.|
|duration|Duration|The duration (ISO 8601) of the relationship. This is set by the partner and cannot be changed by the customer, and once the relationship is in the "approvalPending" status or beyond. Must be a value between P1D and P2Y inclusive.|
|endDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship either terminated or expired, or in the case of an active relationship, the date and time at which it is *scheduled* to expire (i.e., endDateTime = activatedDateTime + duration) in UTC. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the relationship. This is set by the system and cannot be set by the caller.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship was last modified in UTC. This is set by the system and cannot be set by the caller.|
|displayName|String|The display name of the relationship. This is primarily meant for ease of identification. This is set by the partner and cannot be changed by the customer, and cannot be changed by the caller once the relationship is in the "approvalPending" status or beyond. Must be unique across all relationships from the partner for the customer.|
|partner|[delegatedAdminRelationshipParticipant](../resources/delegatedadminrelationshipparticipant.md)|The information of the partner of the relationship. This is set by the partner and cannot be changed by the customer.|
|status|String|The status of the relationship.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessAssignments|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|The access assignments associated with the Delegated Admin relationship.|
|operations|[delegatedAdminOperation](../resources/delegatedadminoperation.md) collection|The long running operations associated with the Delegated Admin relationship.|
|requests|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|The requests associated with the Delegated Admin relationship.|

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

