---
title: "delegatedAdminRelationshipRequest resource type"
description: "Represents a request specific to a delegated admin relationship between a partner and a customer."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipRequest resource type

Namespace: microsoft.graph

Represents a request specific to a delegated admin relationship between a partner and a customer. It allows the Microsoft partner admin to take actions on a relationship such as locking a relationship for approval or terminating a relationship.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminRelationshipRequest](../api/delegatedadminrelationship-post-requests.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Create a new **delegatedAdminRelationshipRequest** object.|
|[List delegatedAdminRelationshipRequests](../api/delegatedadminrelationship-list-requests.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) collection|Get a list of the **delegatedAdminRelationshipRequest** objects and their properties.|
|[Get delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-get.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Read the properties and relationships of a **delegatedAdminRelationshipRequest** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|delegatedAdminRelationshipRequestAction|The action to be performed on the delegated admin relationship.|
|createdDateTime|DateTimeOffset|The date and time in ISO 8601 format and in UTC time when the relationship request was created. Read-only. |
|id|String|The unique identifier of the relationship request. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time in ISO 8601 format and UTC time when this relationship request was last modified. Read-only.|
|status|delegatedAdminRelationshipRequestStatus|The status of the request. Read-only. The possible values are: `created`, `pending`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
  "id": "String (identifier)",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

