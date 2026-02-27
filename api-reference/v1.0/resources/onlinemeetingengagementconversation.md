---
title: "onlineMeetingEngagementConversation resource type"
description: "Represents a structured question-and-answer (Q&A) thread in Teams that is directly associated with an online meeting."
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# onlineMeetingEngagementConversation resource type

Namespace: microsoft.graph


Represents a structured question-and-answer (Q&A) thread in Teams that is directly associated with an online meeting.

Inherits from [engagementConversation](../resources/engagementconversation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get all online meeting messages](../api/cloudcommunications-getallonlinemeetingmessages.md)|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|Get all Teams question and answer (Q&A) conversation messages in a tenant.|
|[List reactions](../api/engagementconversationdiscussionmessage-list-reactions.md)|[engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection|Get a list of the [engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) objects and their properties for an [engagementConversationMessage](../resources/engagementconversationmessage.md) in an online meeting.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationMode|[engagementCreationMode](../resources/engagementconversationmessage.md#engagementcreationmode-values)|Don't use. This property is managed at [engagementConversationMessage](../resources/engagementconversationmessage.md) level. Inherited from [engagementConversation](../resources/engagementconversation.md).|
| id | String | The unique identifier for the conversation object. Inherited from [engagementConversation](../resources/engagementconversation.md). |
|moderationState|[engagementConversationModerationState](#engagementconversationmoderationstate-values)|The moderation status of the conversation. The possible values are: `published`, `pendingReview`, `dismissed`, `unknownFutureValue`.|
|onlineMeetingId|String|The unique identifier of the online meeting associated with this conversation. The online meeting ID links the conversation to a specific meeting instance.|
|organizer|[engagementIdentitySet](../resources/engagementidentityset.md)|Unique identifier of the online meeting organizer.|
|starterId|String|The ID of the first message that initiated the Q&A conversation. Use this property to trace the origin of the thread. Inherited from [engagementConversation](../resources/engagementconversation.md).|
|upvoteCount|Int32|The number of upvotes the conversation received.|

### engagementConversationModerationState values

| Member | Description |
|:---------------|:----------|
| published | 	The Q&A conversation is published and visible to all attendees. |
| pendingReview | The Q&A conversation awaits a moderator's review. |
| dismissed | A moderator reviewed and removed the Q&A conversation without publishing it to attendees. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|messages|[engagementConversationMessage](../resources/engagementconversationmessage.md) collection|The collection of messages posted within the conversation. Inherited from [engagementConversation](../resources/engagementconversation.md).|
|onlineMeeting|[onlineMeeting](../resources/onlinemeeting.md)|The online meeting associated with the conversation.|
|starter|[engagementConversationMessage](../resources/engagementconversationmessage.md)|The initial message that started the conversation thread. Inherited from [engagementConversation](../resources/engagementconversation.md).|

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
  "moderationState": "String",
  "onlineMeetingId": "String",
  "organizer": {"@odata.type": "microsoft.graph.engagementIdentitySet"},
  "starterId": "String",
  "upvoteCount": "Int32"
}
```
