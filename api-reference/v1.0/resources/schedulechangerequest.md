---
title: "scheduleChangeRequest resource type"
description: "An abstract type that represents a schedule change request."
author: lemikeshifts
ms.date: 05/26/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# scheduleChangeRequest resource type

Namespace: microsoft.graph

An abstract type that represents a schedule change request.

Base type of [offerShiftRequest](../resources/offershiftrequest.md), [openShiftChangeRequest](../resources/openshiftchangerequest.md), and [timeOffRequest](../resources/timeoffrequest.md).

Inherits from [changeTrackedEntity](changetrackedentity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. The possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **scheduleChangeRequest**. Inherited from [changeTrackedEntity](changetrackedentity.md).|
|createdDateTime|DateTimeOffset|The date and time when the **scheduleChangeRequest** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md).|
|id|String|The unique identifier for the **scheduleChangeRequest**. Inherited from [changeTrackedEntity](changetrackedentity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the **scheduleChangeRequest**. Inherited from [changeTrackedEntity](changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the **scheduleChangeRequest** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md).|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the **scheduleChangeRequest**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`.|
|managerActionMessage|String|The message sent by the manager regarding the **scheduleChangeRequest**. Optional.|
|managerUserId|String|The user ID of the manager who approved or declined the **scheduleChangeRequest**.|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the **scheduleChangeRequest**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`.|
|senderMessage|String|The message sent by the sender of the **scheduleChangeRequest**. Optional.|
|senderUserId|String|The user ID of the sender of the **scheduleChangeRequest**.|
|state|scheduleChangeState|The state of the **scheduleChangeRequest**. The possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|

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
  "assignedTo": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "managerActionDateTime": "String (timestamp)",
  "managerActionMessage": "String",
  "managerUserId": "String",
  "senderDateTime": "String (timestamp)",
  "senderMessage": "String",
  "senderUserId": "String",
  "state": "String"
}
```