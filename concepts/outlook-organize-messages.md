---
title: "Organize Outlook messages using the Outlook mail API"
description: "Organize your Outlook messages the way you like them. Conveniently filter, search, or sort messages in your entire mailbox or in specific folders."
author: "SuryaLashmiS"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.date: 11/07/2024
---

# Organize Outlook messages

Outlook lets customers organize their messages the way they like it, be it leaving all messages in the same Inbox folder, or organizing messages in a tree-like folder structure under the Inbox to fit their specific needs. You can conveniently [filter, search, or sort](query-parameters.md) messages in the user's entire mailbox or in specific folders.

## Access mail folders

Programmatically, message folders are represented by the [mailFolder](/graph/api/resources/mailfolder) resource, and the Inbox is one of the folders at the root of the folder structure.

Each **mailFolder** is identified by its folder ID, and has a writable **displayName** property. Outlook creates a few other folders for customers by default. You can reference these default folders by their folder IDs, or by their well-known names. For a list of available well-known folder names, see [mailFolder resource type](/graph/api/resources/mailfolder).

For a custom, non-default folder, if you know its folder path, you can access the folder by first using the `/users/{id}/mailfolders` shortcut to get to the root level and get all the top level folders:

```http
GET https://graph.microsoft.com/v1.0/users/{id}/mailFolders
```

Then, specify the appropriate folder ID (`{folder_id}`) as you navigate each level of the folder tree:

```http
GET https://graph.microsoft.com/v1.0/users/{id}/mailFolders/{folder_id}/childfolders
```

Repeat until you finally get to the custom folder in the tree.

## Create and organize the folder tree

You can [create mail folders under the Inbox](/graph/api/user-post-mailfolders) or as [child folders of other folders](/graph/api/mailfolder-post-childfolders). When you create, [copy](/graph/api/mailfolder-copy), or [move](/graph/api/mailfolder-move) a folder and its contents, Outlook updates the read-only **parentFolderId** and **childFolderCount** properties of the involved folders. When the contents of a folder are copied or moved to another folder, by default, the individual entry IDs of the contents also change.

At the contents level, **totalItemCount** and **unreadItemCount** respectively tell you the number of items and number of unread items in a mail folder.
At the child folders level, you can [list the child folders](/graph/api/user-list-mailfolders) under the Inbox or any other folder.
The **childFolderCount** property represents the number of immediate child folders.

Be aware that Outlook mail folders can contain messages and non-message items such as events and contacts. In general, Outlook folders can contain heterogeneous items.

## Use rules to automate copying or moving messages

Outlook lets customers set up rules to automate specific actions on incoming messages when some pre-determined conditions are met. You can [create a rule](/graph/api/mailfolder-post-messagerules) for the
Inbox as a [messageRule](/graph/api/resources/messagerule) to copy or move a message to a specific folder upon certain conditions.
Conditions are [messageRulePredicates](/graph/api/resources/messagerulepredicates). They can include the message subject or body containing certain text,the message sent from certain email addresses, or the message marked important, and so on.

## Direct only the messages you care about to the Focused Inbox

Focused Inbox lets customers train Outlook to show only the incoming messages from senders that you care about on the **Focused** tab, and the rest on the **Other** tab.
Initially, Outlook's classification system organizes Inbox messages in a default way. Over time, you can correct and train the system through the user interface or
programmatically. The more you use the Focused Inbox, the better the classification system can infer which incoming message you want to see on the **Focused** tab.

Programmatically, you can update the **inferenceClassification** property of a [message](/graph/api/resources/message) to indicate whether you want to see the message in the **Focused** or **Other** tab. This is a one-off designation for a specific message. If, on the other hand, you want to see messages from a specific sender always in the **Focused** tab or **Other** tab, you can [set an instruction](/graph/api/inferenceclassification-post-overrides) for Outlook. Each instruction is an [inferenceClassificationOverride](/graph/api/resources/inferenceclassificationoverride) instance specifying the sender's name and your designation for messages from that sender to be always `focused` or `other`. Each user's instructions for the user's Focused Inbox are stored as a collection of [inferenceClassificationOverride](/graph/api/resources/inferenceclassificationoverride) instances on the [user](/graph/api/resources/user) object.

## Keep messages and mail folders up to date in apps

Apps often have to synchronize and keep a user's mail data up-to-date in the app local store. Microsoft Graph lets you subscribe to change notifications to get notified when data changes, and query for actual changes as soon as they happen.

Notifications are delivered via [webhooks](/graph/api/resources/webhooks) asynchronously when the changes happen, saving apps the overhead to poll frequently. You can [subscribe to change notifications](/graph/api/subscription-post-subscriptions) about additions,
updates, or deletions to a user's mail data. For example, you can create a subscription to messages in a specific folder (i.e., `/me/mailFolders('{folderId'}')`),
or at the root level (i.e., `/me/messages`). The subscription specifies a **notificationUrl** where Microsoft Graph notifies the app when the requested types of changes happen.

To initially synchronize a user's mailbox, first do [delta query for mail folders starting at the root level](/graph/api/mailfolder-delta) to synchronize all mail folders, followed by [delta query for messages in each folder](/graph/api/message-delta) to synchronize individual messages.

To find the exact entities that have been changed without reading the entire resource with every notification, you can use [delta query](delta-query-overview.md) to track those changes that matter to you, and synchronize your local store with those changes. You can [track changes to messages in a specific folder](delta-query-messages.md). You can also track changes to mail folders at the root level (i.e., `/me/mailfolders`).

## Next steps

- [Why integrate with Outlook mail](outlook-mail-concept-overview.md)
- [Use the mail API](/graph/api/resources/mail-api-overview) and its [use cases](/graph/api/resources/mail-api-overview#common-use-cases) in Microsoft Graph v1.0
