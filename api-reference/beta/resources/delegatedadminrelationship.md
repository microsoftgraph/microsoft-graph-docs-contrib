---
title: "delegatedAdminRelationship resource type"
description: "Represents the details of the delegated administrative privileges that a Microsoft partner has in a customer tenant."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminRelationship resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a delegated admin relationship between a partner and customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminRelationship](../api/tenantrelationship-post-delegatedadminrelationships.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Create a new **delegatedAdminRelationship** object.|
|[List delegatedAdminRelationships](../api/tenantrelationship-list-delegatedadminrelationships.md)|[delegatedAdminRelationship](delegatedadminrelationship.md) collection|Get a list of the **delegatedAdminRelationship** objects and their properties.|
|[Get delegatedAdminRelationship](../api/delegatedadminrelationship-get.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Read the properties and relationships of a **delegatedAdminRelationship** object.|
|[Update delegatedAdminRelationship](../api/delegatedadminrelationship-update.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Update the properties of a **delegatedAdminRelationship** object.|
|[Delete delegatedAdminRelationship](../api/delegatedadminrelationship-delete.md)|None|Deletes a **delegatedAdminRelationship** object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details containing the identifiers of the administrative roles that the partner admin is requesting in the customer tenant.|
|activatedDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship became active. Read-only.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship was created. Read-only.|
|customer|[delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The display name and unique identifier of the customer of the relationship. This is configured either by the partner at the time the relationship is created or by the system after the customer approves the relationship. Cannot be changed by the customer.|
|displayName|String|The display name of the relationship used for ease of identification. Must be unique across *all* delegated admin relationships of the partner. This is set by the partner only when the relationship is in the `created` status and cannot be changed by the customer.|
|duration|Duration|The duration of the relationship in ISO 8601 format. Must be a value between `P1D` and `P2Y` inclusive. This is set by the partner only when the relationship is in the `created` status and cannot be changed by the customer.|
|endDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the **status** of relationship will either be `terminated` or `expired`. Calculated as `endDateTime = activatedDateTime + duration`. Read-only.|
|id|String|The unique identifier of the relationship. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship was last modified. Read-only.|
|status|delegatedAdminRelationshipStatus|The status of the relationship. The possible values are: `activating`, `active`, `approvalPending`, `approved`, `created`, `expired`, `expiring`, `terminated`, `terminating`, `terminationRequested`, `unknownFutureValue`. This is set by the system and cannot be set by the caller. Supports `$orderBy`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessAssignments|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|The access assignments associated with the delegated admin relationship.|
|operations|[delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) collection|The long running operations associated with the delegated admin relationship.|
|requests|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|The requests associated with the delegated admin relationship. Supports `$expand`|

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
  "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
  "displayName": "Contoso admin relationship",
  "duration": "P730D",
  "customer": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "status": "active",
  "createdDateTime": "2022-02-10T11:24:42.3148266Z",
  "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
  "activatedDateTime": "2022-02-10T11:26:44.9941884Z",
  "endDateTime": "2024-02-10T11:24:42.3148266Z"
}
```

