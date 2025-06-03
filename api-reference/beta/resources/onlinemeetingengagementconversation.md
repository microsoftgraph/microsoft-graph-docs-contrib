---
title: "onlineMeetingEngagementConversation resource type"
description: "The onlineMeetingEngagementConversation resource type represents a structured Q&A thread that is directly tied to an online meeting."
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# onlineMeetingEngagementConversation resource type

Namespace: microsoft.graph

Represents a structured questions-and-answers based conversation that is directly tied to an online meeting.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Inherits from [engagementConversation](../resources/engagementconversation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get all Q&A messages](../api/employeeexperience-getallonlinemeetingmessages.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|Retrieves all Teams Q&A messages in a tenant|
|[Get all Q&A message reactions](../api/employeeexperience-getallonlinemeetingmessagereactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|Retrieves all reactions for a Q&A message|


## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | The unique identifier for the conversation object. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md) |
|moderationState|[engagementConversationModerationState](#engagementconversationmoderationstate-values)|Represents the moderation status of the conversation. The possible values are: `published`, `pendingReview`, `dismissed`, `unknownFutureValue`.|
|onlineMeetingId|String|The unique identifier of the online meeting associated with this conversation. This links the conversation to a specific meeting instance.|
|organizer|[engagementIdentitySet](../resources/engagementidentityset.md)|Unique identifier of the online meeting organizer|
|starterId|String|The ID of the first message that initiated the Q&A conversation. Useful for tracing the origin of the thread.  Inherited from [engagementConversation](../resources/engagementconversation.md).|
|upvoteCount|Int32|The number of upvotes received by the conversation. |
|creationMode|engagementCreationMode|Indicates how the conversation was created. Inherited from [engagementConversation](../resources/engagementconversation.md).The possible values are: `none`, `migration`, `unknownFutureValue`.|

### engagementConversationModerationState values
| Member | Description |
|:---------------|:----------|
| published | The Q&A conversation was published and visible to all attendees.  |
| pendingReview | The Q&A conversation is awaiting a moderator's review. |
| dismissed | The Q&A conversation was reviewed and removed by a moderator without being published to attendees. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|messages|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|Represents the collection of messages posted within the conversation. Inherited from [microsoft.graph.engagementConversation](../resources/engagementconversation.md)|
|onlineMeeting|[onlineMeeting](../resources/onlinemeeting.md)|Refers to the online meeting associated with the conversation.|
|starter|[engagementConversationMessage](../resources/engagementconversationmessage.md)|Represents the initial message that started the conversation thread. Inherited from [microsoft.graph.engagementConversation](../resources/engagementconversation.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onlineMeetingEngagementConversation",
  "baseType": "microsoft.graph.engagementConversation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onlineMeetingEngagementConversation",
  "id": "String (identifier)",
  "creationMode": "String",
  "starterId": "String",
  "moderationState": "String",
  "upvoteCount": "Integer",
  "organizer": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  },
  "onlineMeetingId": "String"
}
```

