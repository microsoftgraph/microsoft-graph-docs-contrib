---
title: "mailFolder resource type"
description: "Represents a mail folder in a user's mailbox, such as Inbox or Drafts. Mail folders can contain messages, other Outlook items, and child mail folders."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/21/2024
---

# mailFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mail folder in a user's mailbox, such as Inbox or Drafts. Mail folders can contain messages, other Outlook items, and child mail folders.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/mailfolder-delta.md) function.

**Well-known folder names**

Outlook creates certain folders for users by default. Instead of using the corresponding folder **id** value, for convenience, you can use the well-known folder names from the following table when accessing these folders. For example, you can get the Drafts folder using its well-known name with the following query.

<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/drafts
```

Well-known names work regardless of the locale of the user's mailbox, so the previous query always returns the user's Drafts folder regardless of its name.

| Well-known folder name | Description |
|:-----------------------|:------------|
| archive | The archive folder messages are sent to when using the One-Click Archive feature in Outlook clients that support it. **Note:** This property is different from the Archive Mailbox feature of Exchange online. |
| clutter | The clutter folder low-priority messages are moved to when using the Clutter feature. |
| conflicts | The folder that contains conflicting items in the mailbox. |
| conversationhistory | The folder where Skype saves IM conversations (if Skype is configured to do so). |
| deleteditems | The folder items are moved to when they're deleted. |
| drafts | The folder that contains unsent messages. |
| inbox | The inbox folder. |
| junkemail | The junk email folder. |
| localfailures | The folder that contains items that exist on the local client but couldn't be uploaded to the server. |
| msgfolderroot | The "Top of Information Store" folder. This folder is the parent folder for folders that are displayed in normal mail clients, such as the inbox. |
| outbox | The outbox folder. |
| recoverableitemsdeletions | The folder that contains soft-deleted items: deleted either from the Deleted Items folder, or by pressing shift+delete in Outlook. This folder isn't visible in any Outlook email client, but end users can interact with it through the **Recover Deleted Items from Server** feature in Outlook or Outlook on the web. |
| scheduled | The folder that contains messages that are scheduled to reappear in the inbox using the Schedule feature in Outlook for iOS. |
| searchfolders | The parent folder for all search folders defined in the user's mailbox. |
| sentitems | The sent items folder. |
| serverfailures | The folder that contains items that exist on the server but couldn't be synchronized to the local client. |
| syncissues | The folder that contains synchronization logs created by Outlook. |

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
|[List mail search folders](../api/user-list-mailfolders.md) | [mailFolder](mailfolder.md) collection|Get all the mail folders in the specified user's mailbox, including any mail search folders.|
|[Get mail search folder](../api/mailfolder-get.md) | [mailFolder](mailfolder.md) |Read properties and relationships of mailFolder object.|
|[Create mail folder](../api/user-post-mailfolders.md) |[mailFolder](mailfolder.md)| Create a new mail folder in the root folder of the user's mailbox.|
|[List child folders](../api/mailfolder-list-childfolders.md) |[mailFolder](mailfolder.md) collection| Get the folder collection under the specified folder. You can use the `.../me/MailFolders` shortcut to get the top-level folder collection and navigate to another folder.|
|[Create child folder](../api/mailfolder-post-childfolders.md) |[mailFolder](mailfolder.md)| Create a new mailFolder under the current one by posting to the childFolders collection.|
|[Create message in folder](../api/mailfolder-post-messages.md) |[message](message.md)| Create a new message in the current mailFolder by posting to the messages collection.|
|[List messages in folder](../api/mailfolder-list-messages.md) |[message](message.md) collection| Get all the messages in the signed-in user's mailbox, or those messages in a specified folder in the mailbox.|
|[Update mail folder](../api/mailfolder-update.md) | [mailFolder](mailfolder.md)|Update the specified mailFolder object. |
|[Delete mail search folder](../api/mailfolder-delete.md) | None |Delete the specified mailFolder object. |
|[Copy mail folder](../api/mailfolder-copy.md)|[mailFolder](mailfolder.md)|Copy a mailFolder and its contents to another mailFolder.|
|[Get folder delta](../api/mailfolder-delta.md)|[mailFolder](mailfolder.md) collection|Get a set of mail folders that have been added, deleted, or removed from the user's mailbox.|
|[Move mail folder](../api/mailfolder-move.md)|[mailFolder](mailfolder.md)|Move a mailFolder and its contents to another mailFolder.|
|[Permanently delete](../api/mailfolder-permanentdelete.md)|None|Permanently delete a mail folder and remove its items from the user's mailbox.|
|[Update all messages read state](../api/mailfolder-updateallmessagesreadstate.md) |[mailFolder](mailfolder.md)|Update the read state of all messages in a [mailFolder](../resources/mailfolder.md) object.|
|[List operations](../api/mailfolder-list-operations.md)|[mailFolderOperation](mailfolderoperation.md) collection|List the long-running folder operations of a [mailFolder](../resources/mailfolder.md) object.|
|**Extended properties**| | |
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[mailFolder](mailfolder.md)  |Create one or more single-value extended properties in a new or existing mailFolder.   |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)  | [mailFolder](mailfolder.md) | Get mailFolders that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [mailFolder](mailfolder.md) | Create one or more multi-value extended properties in a new or existing mailFolder.  |
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)  | [mailFolder](mailfolder.md) | Get a mailFolder that contains a multi-value extended property by using `$expand`. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|childFolderCount|Int32|The number of immediate child mailFolders in the current mailFolder.|
|displayName|String|The mailFolder's display name.|
|id|String|The mailFolder's unique identifier.|
|isHidden|Boolean|Indicates whether the mailFolder is hidden. This property can be set only when creating the folder. Find more information in [Hidden mail folders](#hidden-mail-folders).|
|parentFolderId|String|The unique identifier for the mailFolder's parent mailFolder.|
|totalItemCount|Int32|The number of items in the mailFolder.|
|unreadItemCount|Int32|The number of items in the mailFolder marked as unread.|
|wellKnownName|String|The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is **null**.|

**Access item counts efficiently**

The `TotalItemCount` and `UnreadItemCount` properties of a folder allow you to conveniently compute the number of read items in the folder.
They let you avoid queries like the following that can incur significant latency:

```http
https://outlook.office.com/api/beta/me/folders/inbox/messages?$count=true&$filter=isread%20eq%20false
```

Mail folders in Outlook can contain more than one type of items, for example, the Inbox can contain meeting request items that are distinct from mail items. `TotalItemCount` and `UnreadItemCount` include items in a mail folder irrespective of their item types.

### Hidden mail folders
The default value of the `isHidden` property is `false`. You can set **isHidden** only once when [creating the mailFolder](../api/user-post-mailfolders.md). You can't update the property using a PATCH operation. To change the **isHidden** property of a folder, delete the existing folder and create a new one with the desired value.

Hidden mail folders support all operations that are supported by a regular mail folder.

By default, [listing mailFolders](../api/user-list-mailfolders.md) returns only mail folders that aren't hidden. To include hidden mail folders in the response, use the query parameter `includeHiddenFolders=true`. Then use the **isHidden** property to identify whether a mail folder is hidden.

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
|childFolders|[mailFolder](mailfolder.md) collection|The collection of child folders in the **mailFolder**.|
|messageRules | [messageRule](messagerule.md) collection | The collection of rules that apply to the user's Inbox folder. |
|messages|[message](message.md) collection|The collection of messages in the **mailFolder**.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the **mailFolder**. Read-only. Nullable.|
|operations|[mailFolderOperation](mailfolderoperation.md) collection|The collection of long-running operations in the **mailFolder**.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the **mailFolder**. Read-only. Nullable.|
|userConfigurations|[userConfiguration](userconfiguration.md) collection|The user configuration objects associated to the **mailFolder**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "messageRules",
    "messages",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailFolder"
}-->

```json
{
  "childFolderCount": 1024,
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string",
  "totalItemCount": 1024,
  "unreadItemCount": 1024,
  "wellKnownName": "string",
  "isHidden": false,
  "childFolders": [ { "@odata.type": "microsoft.graph.mailFolder" } ],
  "messageRules": [ { "@odata.type": "microsoft.graph.messageRule" } ],
  "messages": [ { "@odata.type": "microsoft.graph.message" } ],
  "multiValueExtendedProperties": [ { "@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty" }],
  "singleValueExtendedProperties": [ { "@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty" }]
}
```

## Related content

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mailFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


