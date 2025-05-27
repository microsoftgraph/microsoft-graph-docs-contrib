---
title: "offerShiftRequest resource type"
description: "Represents type of shift request to offer a shift to another user in the team."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# offerShiftRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents type of shift request to offer a shift to another user in the team.

Base type of [swapShiftsChangeRequest](swapshiftschangerequest.md).

Inherits from [scheduleChangeRequest](../resources/schedulechangerequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/offershiftrequest-post.md) | [offerShiftRequest](offershiftrequest.md) | Create an instance of an **offerShiftRequest** object. |
| [Get](../api/offershiftrequest-get.md) | [offerShiftRequest](offershiftrequest.md) | Read properties and relationships of **offerShiftRequest** object. |
| [List](../api/offershiftrequest-list.md) | Collection of [offerShiftRequest](offershiftrequest.md) | Read properties and relationships of all **offerShiftRequest** objects in a team. |
| [Approve](../api/offershiftrequest-approve.md)|None|Approve an **offerShiftRequest**. |
| [Approve for user](../api/schedulechangerequest-approveforuser.md)|None|Approve an [offerShiftRequest](../resources/offershiftrequest.md) object for a user. This action only supports application permissions.|
| [Decline](../api/offershiftrequest-decline.md)|None|Decline an **offerShiftRequest**. |
| [Decline for user](../api/schedulechangerequest-declineforuser.md)|None|Decline an [offerShiftRequest](../resources/offershiftrequest.md) object for a user. This action only supports application permissions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/intune-identityset.md)|The user who created the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|The user who last modified the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the entity was last modified. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerActionMessage|String|The message sent by the manager regarding the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerUserId|String|The user ID of the manager who approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|recipientActionDateTime|DateTimeOffset|The date and time when the recipient approved or declined the request.|
|recipientActionMessage|String|The message sent by the recipient regarding the request.|
|recipientUserId|String|The recipient's user ID.|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderMessage|String|The message sent by the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderShiftId|String|The sender's shift ID.|
|senderUserId|String|The user ID of the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|state|scheduleChangeState|The state of the entity. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|

## Relationships

None

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.offerShiftRequest",
  "baseType": "microsoft.graph.scheduleChangeRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.offerShiftRequest",
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
  "recipientUserId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "offerShiftRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


