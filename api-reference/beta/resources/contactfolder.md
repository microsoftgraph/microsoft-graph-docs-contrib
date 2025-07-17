---
title: "contactFolder resource type"
description: "A folder that contains contacts."
author: "kevinbellinger"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/21/2024
---

# contactFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A folder that contains contacts.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, 
by providing a [delta](../api/contactfolder-delta.md) function.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/contactfolder-get.md) | [contactFolder](contactfolder.md) |Get a contact folder by using the contact folder ID.|
|[Update](../api/contactfolder-update.md) | [contactFolder](contactfolder.md) |Update **contactFolder** object. |
|[Delete](../api/contactfolder-delete.md) | None |Delete a **contactFolder** object. |
|[Permanently delete](../api/contactfolder-permanentdelete.md)|None|Permanently delete a contact folder and remove its items from the user's mailbox.|
|[List child folders](../api/contactfolder-list-childfolders.md) |[contactFolder](contactfolder.md) collection| Get a collection of child folders under the specified contact folder.|
|[Create child folder](../api/contactfolder-post-childfolders.md) |[contactFolder](contactfolder.md)| Create a new **contactFolder** as a child of a specified folder.|
|[Get contact delta](../api/contact-delta.md)|[contact](contact.md) collection| Get a set of contact folders that were added, deleted, or removed from the user's mailbox.|
|[List contacts in folder](../api/contactfolder-list-contacts.md) |[contact](contact.md) collection| Get a contact collection from the default contacts folder of the signed-in user (`.../me/contacts`), or from the specified contact folder.|
|[Create contact in folder](../api/contactfolder-post-contacts.md) |[contact](contact.md)| Add a contact to the root contacts folder or to the `contacts` endpoint of another contact folder.|
|**Extended properties**| | |
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[contactFolder](contactfolder.md)  |Create one or more single-value extended properties in a new or existing **contactFolder**.   |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)  | [contactFolder](contactfolder.md) | Get **contactFolders** that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [contactFolder](contactfolder.md) | Create one or more multi-value extended properties in a new or existing **contactFolder**.  |
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)  | [contactFolder](contactfolder.md) | Get a **contactFolder** that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The folder's display name.|
|id|String|Unique identifier of the contact folder. Read-only.|
|parentFolderId|String|The ID of the folder's parent folder.|
|wellKnownName|string|The name of the folder if the folder is a recognized folder. Currently `contacts` is the only recognized contacts folder.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[contactFolder](contactfolder.md) collection|The collection of child folders in the folder. Navigation property. Read-only. Nullable.|
|contacts|[contact](contact.md) collection|The contacts in the folder. Navigation property. Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the **contactFolder**. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the **contactFolder**. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "contacts",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contactFolder"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "parentFolderId": "String",
  "wellKnownName": "String"
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
  "description": "contactFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


