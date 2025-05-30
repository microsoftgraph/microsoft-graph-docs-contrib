---
title: "message resource type"
description: "A message in a mailFolder."
author: "SuryaLashmiS"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/23/2024
---

# message resource type

Namespace: microsoft.graph

A message in a mailFolder.

The maximum total number of recipients included in the **toRecipients**, **ccRecipients**, and **bccRecipients** properties for a single email message sent from an Exchange Online mailbox is 500. For more information, see [sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits).

This resource supports:

- Adding your own data as custom Internet message headers. Add custom headers only when creating a message, and name them starting with "x-". After the message is sent, you cannot modify the headers. To get the headers of a message, apply the `$select` query parameter in a [get message](../api/message-get.md) operation.
- Adding your own data as custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/message-delta.md) function.

## Methods

| Method       | Return type  |Description|
|:---------------|:--------|:----------|
|[List messages](../api/user-list-messages.md) |[message](message.md) collection | Get all the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). |
|[Create draft message](../api/user-post-messages.md) | [message](message.md) | [Create](../api/user-post-messages.md#request-1) a draft of a new message. |
|[Get message](../api/message-get.md) | [message](message.md) |Read properties and relationships of message object.|
|[Update message](../api/message-update.md) | [message](message.md) |Update message object.|
|[Delete message](../api/message-delete.md) | None |Delete message object. |
|[Copy message](../api/message-copy.md)|[Message](message.md)|Copy a message to a folder.|
|[Create draft to forward message](../api/message-createforward.md)|[Message](message.md)|Create a draft of the Forward message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Create draft to reply](../api/message-createreply.md)|[Message](message.md)|Create a draft of the Reply message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Create draft to reply-all](../api/message-createreplyall.md)|[Message](message.md)|Create a draft of the Reply All message. You can then [update](../api/message-update.md) or [send](../api/message-send.md) the draft.|
|[Get message delta](../api/message-delta.md)|[message](message.md) collection| Get a set of messages that were added, deleted, or updated in a specified folder.|
|[Forward message](../api/message-forward.md)|None|Forward a message. The message is then saved in the Sent Items folder.|
|[Move message](../api/message-move.md)|[Message](message.md)|Move the message to a folder. This creates a new copy of the message in the destination folder.|
|[Reply to a message](../api/message-reply.md)|None|Reply to the sender of a message. The message is then saved in the Sent Items folder.|
|[Reply-all to a message](../api/message-replyall.md)|None|Reply to all recipients of a message. The message is then saved in the Sent Items folder.|
|[Send draft message](../api/message-send.md)|None|Sends a previously created message draft. The message is then saved in the Sent Items folder.|
|[Permanently delete](../api/message-permanentdelete.md)|None|Permanently delete a message and place it in the purges folder in the recoverable Items folder in the user's mailbox.|
|**Attachments**| | |
|[List attachments](../api/message-list-attachments.md) |[Attachment](attachment.md) collection| Gets all attachments on a message.|
|[Add attachment](../api/message-post-attachments.md) |[Attachment](attachment.md)| Add a new attachment to a message by posting to the attachments collection.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties in a new or existing instance of a resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension object or objects identified by name or fully qualified name.|
|**Extended properties**| | |
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[message](message.md)  |Create one or more single-value extended properties in a new or existing message.   |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)  | [message](message.md) | Get messages that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [message](message.md) | Create one or more multi-value extended properties in a new or existing message.  |
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)  | [message](message.md) | Get a message that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|[recipient](recipient.md) collection|The Bcc: recipients for the message.|
|body|[itemBody](itembody.md)|The body of the message. It can be in HTML or text format. Find out about [safe HTML in a message body](/graph/outlook-create-send-messages#reading-messages-with-control-over-the-body-format-returned).|
|bodyPreview|String|The first 255 characters of the message body. It is in text format.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the message.|
|changeKey|String|The version of the message.|
|conversationId|String|The ID of the conversation the email belongs to.|
|conversationIndex|Edm.Binary|Indicates the position of the message within the conversation.|
|createdDateTime|DateTimeOffset|The date and time the message was created. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|flag|[followupFlag](followupflag.md)|Indicates the status, start date, due date, or completion date for the message.|
|from|[recipient](recipient.md)|The owner of the mailbox from which the message is sent. In most cases, this value is the same as the **sender** property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|hasAttachments|Boolean|Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the **body** property to look for a `src` attribute, such as `<IMG src="cid:image001.jpg@01D26CD8.6C05F070">`.|
|id|String|Unique identifier for the message. [!INCLUDE [outlook-beta-id](../../includes/outlook-immutable-id.md)] Read-only. |
|importance|importance| The importance of the message. The possible values are: `low`, `normal`, and `high`.|
|inferenceClassification | inferenceClassificationType | The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. The possible values are: `focused` or `other`. |
|internetMessageHeaders | [internetMessageHeader](internetmessageheader.md) collection | A collection of message headers defined by [RFC5322](https://www.ietf.org/rfc/rfc5322.txt). The set includes message headers indicating the network path taken by a message from the sender to the recipient. It can also contain custom message headers that hold app data for the message. <br><br> Returned only on applying a `$select` query option. Read-only. |
|internetMessageId |String |The message ID in the format specified by [RFC2822](https://www.ietf.org/rfc/rfc2822.txt). |
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isDraft|Boolean|Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|lastModifiedDateTime|DateTimeOffset|The date and time the message was last changed. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|parentFolderId|String|The unique identifier for the message's parent mailFolder.|
|receivedDateTime|DateTimeOffset|The date and time the message was received. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|replyTo|[recipient](recipient.md) collection|The email addresses to use when replying.|
|sender|[recipient](recipient.md)|The account that is used to generate the message. In most cases, this value is the same as the **from** property. You can set this property to a different value when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), [for a shared calendar, or as a delegate](/graph/outlook-share-or-delegate-calendar). In any case, the value must correspond to the actual mailbox used. Find out more about [setting the from and sender properties](/graph/outlook-create-send-messages#setting-the-from-and-sender-properties) of a message.|
|sentDateTime|DateTimeOffset|The date and time the message was sent. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|subject|String|The subject of the message.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the message.|
|uniqueBody|[itemBody](itembody.md)|The part of the body of the message that is unique to the current message. **uniqueBody** is not returned by default but can be retrieved for a given message by use of the `?$select=uniqueBody` query. It can be in HTML or text format.|
|webLink|String|The URL to open the message in Outlook on the web.<br><br>You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, the browser shows the message in the Outlook on the web review pane.<br><br>The message opens in the browser if you are signed in to your mailbox via Outlook on the web. You are prompted to sign in if you are not already signed in with the browser.<br><br>This URL cannot be accessed from within an iFrame.|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The [fileAttachment](fileattachment.md) and [itemAttachment](itemattachment.md) attachments for the message.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the message. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the message. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the message. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [
    "attachments",
    "extensions",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties",

    "internetMessageHeaders"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.message",
  "baseType": "microsoft.graph.outlookItem",
  "@odata.annotations": [
    {
      "property": "attachments",
      "capabilities": {
        "changeTracking": false,
        "searchable": false
      }
    },
    {
      "property": "extensions",
      "capabilities": {
        "changeTracking": false,
        "searchable": false
      }
    }
  ]
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
  "createdDateTime": "String (timestamp)",
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "String",
  "inferenceClassification": "String",
  "internetMessageHeaders": [{"@odata.type": "microsoft.graph.internetMessageHeader"}],
  "internetMessageId": "String",
  "isDeliveryReceiptRequested": true,
  "isDraft": true,
  "isRead": true,
  "isReadReceiptRequested": true,
  "lastModifiedDateTime": "String (timestamp)",
  "parentFolderId": "string",
  "receivedDateTime": "String (timestamp)",
  "replyTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "sender": {"@odata.type": "microsoft.graph.recipient"},
  "sentDateTime": "String (timestamp)",
  "subject": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "uniqueBody": {"@odata.type": "microsoft.graph.itemBody"},
  "webLink": "string",

  "attachments": [{"@odata.type": "microsoft.graph.attachment"}],
  "extensions": [{"@odata.type": "microsoft.graph.extension"}],
  "multiValueExtendedProperties": [{"@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty"}],
  "singleValueExtendedProperties": [{"@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty"}]
}

```

## Related content

- [Get mailbox settings](../api/user-get-mailboxsettings.md)
- [Update mailbox settings](../api/user-update-mailboxsettings.md)
- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)
- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

