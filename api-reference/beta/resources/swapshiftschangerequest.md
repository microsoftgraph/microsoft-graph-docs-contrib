---
title: "swapShiftsChangeRequest resource type"
description: "Represents type of shift request to swap a shift with another user in the team."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# swapShiftsChangeRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a type of shift request to swap a [shift](../resources/shift.md) with another user in the [team](../resources/team.md).

Inherits from [offerShiftRequest](../resources/offershiftrequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/swapshiftschangerequest-list.md) | Collection of [swapShiftsChangeRequest](swapshiftschangerequest.md) | List the properties and relationships of **swapShiftsChangeRequest** objects in a team. |
| [Create](../api/swapshiftschangerequest-post.md) | [swapshiftschangerequest](swapshiftschangerequest.md) | Create an instance of an **swapShiftsChangeRequest** object. |
| [Get](../api/swapshiftschangerequest-get.md) | [swapShiftsChangeRequest](swapshiftschangerequest.md) | Read the properties and relationships of a **swapShiftsChangeRequest** object. |
| [Approve](../api/swapshiftschangerequest-approve.md)|None|Approve an **swapShiftsChangeRequest**. |
| [Approve for user](../api/schedulechangerequest-approveforuser.md)|None|Approve a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user. This action only supports application permissions.|
| [Decline](../api/swapshiftschangerequest-decline.md)|None|Decline an **swapShiftsChangeRequest**. |
| [Decline for user](../api/schedulechangerequest-declineforuser.md)|None|Decline a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user. This action only supports application permissions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the entity was last modified. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerActionMessage|String|The message sent by the manager regarding the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerUserId|String|The user ID of the manager who approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|recipientActionDateTime|DateTimeOffset|The date and time when the recipient approved or declined the request. Inherited from [offerShiftRequest](../resources/offershiftrequest.md).|
|recipientActionMessage|String|The message sent by the recipient regarding the request. Inherited from [offerShiftRequest](../resources/offershiftrequest.md).|
|recipientShiftId|String|The recipient's Shift ID|
|recipientUserId|String|The recipient's user ID. Inherited from [offerShiftRequest](../resources/offershiftrequest.md).|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderMessage|String|The message sent by the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderShiftId|String|The sender's shift ID. Inherited from [offerShiftRequest](../resources/offershiftrequest.md).|
|senderUserId|String|The user ID of the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|state|scheduleChangeState|The state of the entity. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.swapShiftsChangeRequest",
  "baseType": "microsoft.graph.offerShiftRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.swapShiftsChangeRequest",
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
  "managerUserId": "String",
  "recipientActionMessage": "String",
  "recipientActionDateTime": "String (timestamp)",
  "senderShiftId": "String",
  "recipientUserId": "String",
  "recipientShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "swapShiftsChangeRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


