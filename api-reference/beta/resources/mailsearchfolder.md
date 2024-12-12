---
title: "mailSearchFolder resource type"
description: "A mailSearchFolder is a virtual folder in the user's mailbox that contains all the email items matching specified search criteria. mailSearchFolder inherits from mailFolder."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/21/2024
---

# mailSearchFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **mailSearchFolder** is a virtual folder in the user's mailbox that contains all the email items matching specified search criteria. **mailSearchFolder** inherits from [mailFolder](mailfolder.md). Search folders can be created in any folder in a user's Exchange Online mailbox. However, for a search folder to appear in Outlook, Outlook for the web, or Outlook Live, the folder must be created in the **WellKnownFolderName.SearchFolders** folder.

### Search folder lifecycle

Exchange Online can delete search folders created by your application for one of the following reasons:

1.	Search folders expire after 45 days of no usage.
2.	There are limits on the number of search folders that can be created per source folder. When this limit is breached, older search folders are deleted to make way for new ones.

When a search folder is deleted, your app should create a new search folder resource and use the same.


## Methods

| Method | Return Type  | Description |
|:---------------|:--------|:----------|
| [Create](../api/mailsearchfolder-post.md) | [mailSearchFolder](mailsearchfolder.md) | Create a search folder in this user's mailbox. |
| [Get](../api/mailfolder-get.md) | [mailSearchFolder](mailsearchfolder.md) | Get the specified search folder. |
| [Update](../api/mailsearchfolder-update.md) | [mailSearchFolder](mailsearchfolder.md) | Update the specified search folder. |
| [Delete](../api/mailfolder-delete.md) | None | Delete the specified search folder. |
| [Permanently delete](../api/mailsearchfolder-permanentdelete.md)|None|Permanently delete a mail search folder and remove its items from the user's mailbox.|
| [List child folders](../api/mailfolder-list-childfolders.md) | [mailFolder](mailfolder.md) collection | List all the folders in this user's mailbox, including search folders. |
| [List messages in folder](../api/mailfolder-list-messages.md) | [message](message.md) collection | List all the messages in the specified search folder. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| isSupported | Boolean | Indicates whether a search folder is editable using REST APIs. |
| includeNestedFolders | Boolean | Indicates how the mailbox folder hierarchy should be traversed in the search. `true` means that a deep search should be done to include child folders in the hierarchy of each folder explicitly specified in **sourceFolderIds**. `false` means a shallow search of only each of the folders explicitly specified in **sourceFolderIds**. |
| sourceFolderIds | String collection | The mailbox folders that should be mined. |
| filterQuery | String | The OData query to filter the messages. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailSearchFolder"
}-->

```json
{
  "isSupported": true,
  "includeNestedFolders": true,
  "sourceFolderIds": ["string"],
  "filterQuery": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2018-01-23 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mailSearchFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


