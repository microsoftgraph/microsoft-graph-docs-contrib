---
title: "timeOffRequest resource type"
description: "Represents a type of shift request to take timeoff."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# timeOffRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a type of shift request to take [timeOff](../resources/timeoff.md).

Inherits from [scheduleChangeRequest](../resources/schedulechangerequest.md).

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [List](../api/timeoffrequest-list.md) | [timeOffRequest](timeoffrequest.md) collection | Get the list of **timeOffRequest** objects in this schedule.|
| [Create](../api/timeoffrequest-post.md) | [timeOffRequest](timeoffrequest.md) | Create a **timeOffRequest** objects in this schedule.|
| [Get](../api/timeoffrequest-get.md) | [timeOffRequest](timeoffrequest.md) | Read the properties and relationships of a **timeOffRequest** object. |
| [Delete](../api/timeoffrequest-delete.md) | None | Delete a **timeOffRequest** object. |
| [Approve](../api/timeoffrequest-approve.md)|None|Approve a **timeOffRequest**. |
| [Approve for user](../api/schedulechangerequest-approveforuser.md)|None|Approve a [timeOffRequest](../resources/timeoffrequest.md) object for a user. This action only supports application permissions.|
| [Decline](../api/timeoffrequest-decline.md)|None|Decline a **timeOffRequest**. |
| [Decline for user](../api/schedulechangerequest-declineforuser.md)|None|Decline a [timeOffRequest](../resources/timeoffrequest.md) object for a user. This action only supports application permissions.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|endDateTime|DateTimeOffset|The date and time the time off ends in ISO 8601 format and in UTC time.|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the entity was last modified. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerActionMessage|String|The message sent by the manager regarding the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerUserId|String|The user ID of the manager who approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderMessage|String|The message sent by the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderUserId|String|The user ID of the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|startDateTime|DateTimeOffset|The date and time the time off starts in ISO 8601 format and in UTC time.|
|state|scheduleChangeState|The state of the entity. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|
|timeOffReasonId|String|The reason for the time off.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeOffRequest"
}-->

```json
{
  "@odata.type": "#microsoft.graph.timeOffRequest",
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
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "timeOffReasonId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeOffRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


