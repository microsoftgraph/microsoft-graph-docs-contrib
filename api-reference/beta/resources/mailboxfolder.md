---
title: "mailboxFolder resource type"
description: "A folder in a user's mailbox, such as Inbox, Drafts or other user created folders."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailboxFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A folder in a user's mailbox, such as Inbox, Drafts or other user created folders. Folders can contain various mailbox items like messages, events, contacts, 
other Outlook items, and child folders.

This resource supports using [delta query](https://docs.microsoft.com/en-us/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/mailboxfolder-delta.md) function. It also supports [single-value and multi-value extended properties](https://learn.microsoft.com/en-us/graph/api/resources/extended-properties-overview?view=graph-rest-1.0) for storing and accessing custom data that is not already exposed in the Microsoft Graph API metadata.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailbox folders](../api/mailbox-list-folders.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|Get all the folders in the specified user's mailbox, including any search folders.|
|[Create mailbox folder](../api/mailbox-post-folders.md)|[mailboxFolder](../resources/mailboxfolder.md)|Create a folder or a child folder within the mailbox.|
|[Get mailbox folder](../api/mailboxfolder-get.md)|[mailboxFolder](../resources/mailboxfolder.md)|Read the properties and relationships of a mailbox folder object.|
|[Update mailbox folder](../api/mailboxfolder-update.md)|[mailboxFolder](../resources/mailboxfolder.md)|Update folder properties such as displayName within the mailbox|
|[Delete mailbox folder](../api/mailbox-delete-folders.md)|None|Delete a folder or a child folder within the mailbox.|
|[Get mailbox folder delta](../api/mailboxfolder-delta.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|Get a set of mailbox folders that have been added, deleted, or removed from the user's mailbox.|
|[List child mailbox folders](../api/mailboxfolder-list-childfolders.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|Get the folder collection under the specified folder.|
|[List items in a folder](../api/mailboxfolder-list-items.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get the items within a specified folder in the mailbox.|
|**Extended properties**| | |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)|[mailboxFolder](../resources/mailboxfolder.md)|Get mailbox folders that contain a single-value extended property by using `$expand` or `$filter`.|
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md)|[mailboxFolder](../resources/mailboxfolder.md)|Create one or more single-value extended properties in a new or existing mailbox folder.|
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)|[mailboxFolder](../resources/mailboxfolder.md)|Get a mailbox folder that contains a multi-value extended property by using `$expand`.|
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md)|[mailboxFolder](../resources/mailboxfolder.md)|Create one or more multi-value extended properties in a new or existing mailbox folder.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childFolderCount|Int32|The number of immediate child folders in the current folder.|
|displayName|String|The folder's display name.|
|id|String|The folder's unique identifier.|
|parentFolderId|String|The unique identifier for the folder's parent folder.|
|parentMailboxUrl|String|The routing link to the actual underlying mailbox where the folder physically resides. The folder can be accessed using `GET {parentMailboxUrl}/folders/{id}`, treating the entire URL as an opaque string. <br><br> This is especially important when auto-expanding archiving is enabled for user's In-Place Archive mailbox. The user's archive content can span across multiple mailboxes in such cases. The `parentMailboxUrl` in such cases, provides the link to the actual underlying mailbox where the folder physically resides in.|
|totalItemCount|Int32|The number of items in the folder.|
|type|String|Describes the folder class type.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|childFolders|[mailboxFolder](../resources/mailboxfolder.md) collection|The collection of child folders in the folder.|
|items|[mailboxItem](../resources/mailboxitem.md) collection|The collection of items in the folder.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|The collection of multi-value extended properties defined for the mailboxFolder|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|The collection of single-value extended properties defined for the mailboxFolder.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxFolder",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxFolder",
  "displayName": "String",
  "parentFolderId": "String",
  "parentMailboxUrl": "String",
  "childFolderCount": "Integer",
  "totalItemCount": "Integer",
  "type": "String",
  "id": "String (identifier)"
}
```
