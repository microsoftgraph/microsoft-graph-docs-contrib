---
title: "request resource type"
description: "An abstract entity type to model the asynchronized request workflow to create, update, and delete an object."
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# request resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract entity type to model the asynchronized request workflow to create, update, and delete an object.

Inherits from [entity](entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|The identifier of the approval of the request.|
|completedDateTime|DateTimeOffset|The request completion date time.|
|createdBy|[identitySet](identityset.md)|The user who created this request.|
|createdDateTime|DateTimeOffset|The request creation date time.|
|customData|String|Free text field to define any custom data for the request. Not used.|
|status|String|The status of the request. Not nullable. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable.|
|id|String|Identifier of the request. Read-only. Not nullable. Inherited from [entity](entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|Represents the approval object that the request is linked to.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.request",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.request",
  "id": "String (identifier)",
  "approvalId": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "customData": "String",
  "status": "String",
}
```

