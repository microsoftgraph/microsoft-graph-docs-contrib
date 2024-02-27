---
title: "delegatedAdminRelationshipRequest resource type"
description: "Represents a request specific to a delegated admin relationship between a partner and a customer."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
---

# delegatedAdminRelationshipRequest resource type

Namespace: microsoft.graph

Represents a request specific to a delegated admin relationship between a partner and a customer. It allows the Microsoft partner administrator to take actions on a relationship such as locking a relationship for approval or terminating a relationship. It also allows the Microsoft indirect reseller partner administrator to approve or reject a relationship created for them by a Microsoft indirect provider partner.

Base type of [resellerDelegatedAdminRelationship](resellerdelegatedadminrelationship.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationshipRequests](../api/delegatedadminrelationship-list-requests.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) collection|Get a list of the **delegatedAdminRelationshipRequest** objects and their properties.|
|[Create delegatedAdminRelationshipRequest](../api/delegatedadminrelationship-post-requests.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Create a new **delegatedAdminRelationshipRequest** object.|
|[Get delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-get.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Read the properties and relationships of a **delegatedAdminRelationshipRequest** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|delegatedAdminRelationshipRequestAction|The action to be performed on the delegated admin relationship. The possible values are: `lockForApproval`, `approve`, `terminate`, `unknownFutureValue`, `reject`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `reject`. For a partner to finalize a relationship in the `created` **status**, set the **action** to `lockForApproval`. For a partner to terminate a relationship in the `active` **status**, set the **action** to `terminate`. For an indirect reseller to approve a relationship created by an indirect provider in the `approvalPending` **status**, set the **action** to `approve`. For an indirect reseller to reject a relationship created by an indirect provider in the `approvalPending` **status**, set the **action** to `reject`.|
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
  "action": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```

