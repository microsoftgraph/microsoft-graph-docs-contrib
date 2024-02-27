---
title: "delegatedAdminRelationship resource type"
description: "Represents the details of the delegated administrative privileges that a Microsoft partner has in a customer tenant."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
---

# delegatedAdminRelationship resource type

Namespace: microsoft.graph

Represents a delegated admin relationship between a partner and customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminRelationship](../api/tenantrelationship-post-delegatedadminrelationships.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Create a new **delegatedAdminRelationship** object.|
|[List delegatedAdminRelationships](../api/tenantrelationship-list-delegatedadminrelationships.md)|[delegatedAdminRelationship](delegatedadminrelationship.md) collection|Get a list of the **delegatedAdminRelationship** objects and their properties.|
|[Get delegatedAdminRelationship](../api/delegatedadminrelationship-get.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Read the properties and relationships of a **delegatedAdminRelationship** object.|
|[Update delegatedAdminRelationship](../api/delegatedadminrelationship-update.md)|[delegatedAdminRelationship](delegatedadminrelationship.md)|Update the properties of a **delegatedAdminRelationship** object.|
|[Delete delegatedAdminRelationship](../api/delegatedadminrelationship-delete.md)|None|Delete a **delegatedAdminRelationship** object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details that contain the identifiers of the administrative roles that the partner admin is requesting in the customer tenant.|
|activatedDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship became active. Read-only.|
|autoExtendDuration|Duration| The duration by which the validity of the relationship is automatically extended, denoted in ISO 8601 format. Supported values are: `P0D`, `PT0S`, `P180D`. The default value is `PT0S`. `PT0S` indicates that the relationship expires when the **endDateTime** is reached and it isn't automatically extended.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship was created. Read-only.|
|customer|[delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The display name and unique identifier of the customer of the relationship. This is configured either by the partner at the time the relationship is created or by the system after the customer approves the relationship. Can't be changed by the customer.|
|displayName|String|The display name of the relationship used for ease of identification. Must be unique across *all* delegated admin relationships of the partner and is set by the partner only when the relationship is in the `created` status and can't be changed by the customer. Maximum length is 50 characters.|
|duration|Duration|The duration of the relationship in ISO 8601 format. Must be a value between `P1D` and `P2Y` inclusive. This is set by the partner only when the relationship is in the `created` status and can't be changed by the customer.|
|endDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the **status** of relationship changes to either `terminated` or `expired`. Calculated as `endDateTime = activatedDateTime + duration`. Read-only.|
|id|String|The unique identifier of the relationship. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship was last modified. Read-only.|
|status|delegatedAdminRelationshipStatus|The status of the relationship. Read Only. The possible values are: `activating`, `active`, `approvalPending`, `approved`, `created`, `expired`, `expiring`, `terminated`, `terminating`, `terminationRequested`, `unknownFutureValue`. Supports `$orderby`.|

### delegatedAdminRelationshipStatus values 
| Member | Description |
| --- | --- |
| created | The partner has created a new relationship. In this state, the relationship can be modified. |
| approvalPending | The partner has finalized the relationship through the `lockForApproval` action of a [delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) object. |
| approved | The customer has approved the relationship through the `approve` action of a [delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) object. |
| activating | The system starts provisioning of the relationship. |
| active | The system completes the provisioning of the relationship. |
| expiring | The relationship has passed its expiration date. |
| expired | The system completes the deprovisioning of the relationship. |
| terminationRequested | The partner or customer has requested termination of the relationship through the `terminate` action of a [delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) object. |
| terminating | The system starts deprovisioning the relationship. |
| terminated | The system has completed deprovisioning the relationship. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessAssignments|[delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) collection|The access assignments associated with the delegated admin relationship.|
|operations|[delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) collection|The long running operations associated with the delegated admin relationship.|
|requests|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|The requests associated with the delegated admin relationship.|

## JSON representation
Here's a JSON representation of the resource.
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
  "accessDetails": {"@odata.type": "microsoft.graph.delegatedAdminAccessDetails"},
  "activatedDateTime": "String (timestamp)",
  "autoExtendDuration": "String (duration)",
  "createdDateTime": "String (timestamp)",
  "customer": {"@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"},
  "displayName": "String",
  "duration": "String (duration)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```
