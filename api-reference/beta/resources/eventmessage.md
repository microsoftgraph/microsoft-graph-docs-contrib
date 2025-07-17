---
title: "eventMessage resource type"
description: "A message that represents a meeting request, cancellation, or response. Can be one of the following values: acceptance, tentative acceptance, or decline."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/24/2024
---

# eventMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A message that represents a meeting request, cancellation, or response. Can be one of the following values: acceptance, tentative acceptance, or decline.

The **eventMessage** entity is derived from [message](message.md). **eventMessage** is the base type for [eventMessageRequest](eventmessagerequest.md) and
[eventMessageResponse](eventmessageresponse.md). The **meetingMessageType** property identifies the type of the event message.

When an organizer or app sends a meeting request, the meeting request arrives in an invitee's mailbox as an **eventMessage** instance with the **meetingMessageType** of **meetingRequest**. In addition, Outlook automatically creates an **event** instance in the invitee's calendar, with the **showAs** property as **tentative**.

To get the properties of the associated event in the invitee's mailbox, the app can use the **event** navigation property of the **eventMessage**, as shown in
this [get event message example](../api/eventmessage-get.md#example-2). The app can also respond to the event on behalf of the invitee programmatically, by [accepting](../api/event-accept.md), [tentatively accepting](../api/event-tentativelyaccept.md), or [declining](../api/event-decline.md) the event.

Aside from a meeting request, an **eventMessage** instance can be found in an invitee's mailbox as the result of an event organizer cancelling a meeting, or in the organizer's mailbox as a result of an invitee responding to the meeting request. An app can act on event messages in the same way as on messages with minor differences.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/eventmessage-get.md) | [eventMessage](eventmessage.md) |Read properties and relationships of eventMessage object.|
|[Update](../api/eventmessage-update.md) | [eventMessage](eventmessage.md)  |Update eventMessage object.|
|[Delete](../api/eventmessage-delete.md) | None |Delete eventMessage object.|
|[Copy message](../api/message-copy.md)|[message](message.md)|Copy a message to a folder.|
|[Create draft to forward message](../api/message-createforward.md)|[message](message.md)|Create a draft of the Forward message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Create draft to reply](../api/message-createreply.md)|[message](message.md)|Create a draft of the Reply message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Create draft to reply-all](../api/message-createreplyall.md)|[message](message.md)|Create a draft of the Reply All message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Forward message](../api/message-forward.md)|None|Forward a message. The message is then saved in the Sent Items folder.|
|[Move message](../api/message-move.md)|[message](message.md)|Move a message to a folder. This creates a new copy of the message in the destination folder.|
|[Reply to message](../api/message-reply.md)|None|Reply to the sender of a message. The message is then saved in the Sent Items folder.|
|[Reply-all to message](../api/message-replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[Send draft message](../api/message-send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[Recall message](../api/message-recall.md)|[message](message.md)|Recall a message in the specified user's mailbox Sent Items folder.|
|[Unsubscribe](../api/message-unsubscribe.md)|None|Send a message using the data and address specified in the first mailto command in the List-Unsubscribe header.|
|[Permanently delete](../api/eventmessage-permanentdelete.md)|None|Permanently delete an event message and place it in the Purges folder in the Recoverable Items folder in the user's mailbox.|
|**Attachments**| | |
|[List attachments](../api/eventmessage-list-attachments.md) |[attachment](attachment.md) collection| Get all attachments on an eventMessage.|
|[Add attachment](../api/eventmessage-post-attachments.md) |[attachment](attachment.md)| Add a new attachment to an eventMessage by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by name.|
|**Extended properties**| | |
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[eventMessage](eventmessage.md)  |Create one or more single-value extended properties in a new or existing eventMessage.   |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)  | [eventMessage](eventmessage.md) | Get eventMessages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [eventMessage](eventmessage.md) | Create one or more multi-value extended properties in a new or existing eventMessage.  |
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)  | [eventMessage](eventmessage.md) | Get an eventMessage that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format.|
|bodyPreview|String|The first 255 characters of the message body. It is in text format. |
|categories|String collection|The categories associated with the message.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Edm.Binary|Indicates the position of the message within the conversation.|
|createdDateTime|DateTimeOffset|The date and time the message was created.|
|endDateTime|[dateTimeTimeZone](datetimetimezone.md)|The end time of the requested meeting.|
|flag|[followupFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The owner of the mailbox from which the message is sent. In most cases, this value is the same as the **sender** property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|hasAttachments|Boolean|Indicates whether the message has attachments.|
|id|String| Unique identifier for the message. [!INCLUDE [outlook-beta-id](../../includes/outlook-immutable-id.md)] Read-only. |
|importance|String| The importance of the message: `low`, `normal`, `high`.|
|inferenceClassification|String| Possible values are: `focused`, `other`.|
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | The collection of message headers, defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt), that provide details of the network path taken by a message from the sender to the recipient. Read-only.|
|internetMessageId |String |The message ID in the format specified by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). |
|isAllDay |Boolean|Indicates whether the event lasts the entire day. Adjusting this property requires adjusting the **startDateTime** and **endDateTime** properties of the event as well.|
|isDelegated|Boolean|True if this meeting request is accessible to a delegate, false otherwise. Default is false.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isOutOfDate|Boolean|Indicates whether this meeting request has been made out-of-date by a more recent request.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed.|
|location|[location](location.md)|The location of the requested meeting.|
|meetingMessageType|String| The type of event message: `none`, `meetingRequest`, `meetingCancelled`, `meetingAccepted`, `meetingTentativelyAccepted`, `meetingDeclined`.|
|mentionsPreview|[mentionsPreview](mentionspreview.md)|Information about mentions in the message. When processing a `GET` /messages request, the server sets this property and includes it in the response by default. The server returns null if there are no mentions in the message. Optional. |
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern of the requested meeting.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is used to generate the message. In most cases, this value is the same as the **from** property. You can set this property to a different value when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), [for a shared calendar, or as a delegate](/graph/outlook-share-or-delegate-calendar). In any case, the value must correspond to the actual mailbox used. For more information, see [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties).|
|sentDateTime|DateTimeOffset|The date and time the message was sent.|
|startDateTime|[dateTimeTimeZone](datetimetimezone.md)|The start time of the requested meeting.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|type|String|The type of requested meeting: `singleInstance`, `occurence`, `exception`, `seriesMaster`.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message.|
|UnsubscribeData|String|The valid entries parsed from the List-Unsubscribe header.  This is the data for the mail command in the List-Unsubscribe header if UnsubscribeEnabled property is true.|
|UnsubscribeEnabled|Boolean|Indicates whether the message is enabled for unsubscribe.  Its valueTrue if the list-Unsubscribe header conforms to rfc-2369.|
|webLink|String|The URL to open the message in Outlook on the web.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout isn't present or if it's set to 1, then the message is shown in a popout window. If ispopout is set to 0, then the browser shows the message in the Outlook on the web review pane.<br><br>The message opens in the browser if you're logged in to your mailbox via Outlook on the web. You are prompted to login if you aren't already logged in with the browser.<br><br>This URL can't be accessed from within an iFrame.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the message. Read-only. Nullable.|
|event|[event](event.md)| The event associated with the event message. The assumption for attendees or room resources is that the Calendar Attendant is set to automatically update the calendar with an event when meeting request event messages arrive. Navigation property.  Read-only.|
|extensions|[extension](extension.md) collection| The collection of open extensions defined for the eventMessage. Read-only. Nullable.|
|mentions|[mention](mention.md) collection | A collection of mentions in the message, ordered by the **createdDateTime** from the newest to the oldest. By default, a `GET` /messages doesn't return this property unless you apply `$expand` on the property.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the eventMessage. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the eventMessage. Read-only. Nullable.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.message",
  "optionalProperties": [
    "attachments",
    "event",
    "extensions",
    "mentions",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.eventMessage"
}-->

```json
{
  "bccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "categories": ["string"],
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "changeKey": "string",
  "conversationId": "string",
  "conversationIndex": "String (binary)",
  "createdDateTime": "DateTimeOffset",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "internetMessageHeaders": [{"@odata.type": "microsoft.graph.internetMessageHeader"}],
  "internetMessageId": "String",
  "isAllDay": "Boolean",
  "isDelegated": true,
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isOutOfDate": "Boolean",
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "DateTimeOffset",
  "location": {"@odata.type": "microsoft.graph.location"},
  "meetingMessageType": {"@odata.type": "microsoft.graph.meetingMessageType"},
  "mentionsPreview": {"@odata.type": "microsoft.graph.mentionsPreview"},
  "parentFolderId": "string",
  "receivedDateTime": "DateTimeOffset",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "DateTimeOffset",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "type": "string",
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "UnsubscribeData": "string",
  "UnsubscribeEnabled": true,
  "webLink": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "eventMessage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


