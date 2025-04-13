---
title: "scheduleChangeRequest resource type"
description: "Represents a scheduleChangeRequest."
author: lemikeshifts
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# scheduleChangeRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a schedule change request.  
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[approve](../api/schedulechangerequest-approve.md)|None|Approve a scheduleChangeRequest (Delegated Permission).|
|[decline](../api/schedulechangerequest-decline.md)|None|Decline a scheduleChangeRequest (Delegated Permission).|
|[approveForUser](../api/schedulechangerequest-approveforuser.md)|None|Approve a scheduleChangeRequest for a user (Application Permission).|
|[declineForUser](../api/schedulechangerequest-declineforuser.md)|None|Approve a scheduleChangeRequest for a user (Application Permission).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. Possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the scheduleChangeRequest.|
|createdDateTime|DateTimeOffset|The date and time when the scheduleChangeRequest was created.|
|id|String|The ID of the scheduleChangeRequest.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the scheduleChangeRequest.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the scheduleChangeRequest was last modified.|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the scheduleChangeRequest.|
|managerActionMessage|String|The message sent by the manager regarding the scheduleChangeRequest. Optional.|
|managerUserId|String|The user ID of the manager who approved or declined the scheduleChangeRequest.|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the scheduleChangeRequest.|
|senderMessage|String|The message sent by the sender of the scheduleChangeRequest. Optional.|
|senderUserId|String|The user ID of the sender of the scheduleChangeRequest.|
|state|scheduleChangeState|The state of the scheduleChangeRequest. Possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.scheduleChangeRequest",
  "baseType": "microsoft.graph.changeTrackedEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.scheduleChangeRequest",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "assignedTo": "String",
  "state": "String",
  "senderMessage": "String",
  "senderDateTime": "String (timestamp)",
  "managerActionMessage": "String",
  "managerActionDateTime": "String (timestamp)",
  "senderUserId": "String",
  "managerUserId": "String"
}
```