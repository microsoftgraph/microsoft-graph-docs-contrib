---
title: "note resource type"
description: "Represents a simple note in the user's Notes folder."
author: "rajeshvulla"
ms.date: 04/07/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
toc.title: "Note (preview)"
---

# note resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a simple note in the user's *Notes* folder. Notes support text content with optional inline image attachments, and are suitable for quick capture scenarios.

Inherits from [outlookItem](../resources/outlookitem.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/user-list-notes.md)|[note](../resources/note.md) collection|Get a list of the [note](../resources/note.md) objects in the user's *Notes* folder.|
|[Create](../api/user-post-notes.md)|[note](../resources/note.md)|Create a new [note](../resources/note.md) in the user's *Notes* folder.|
|[Get](../api/note-get.md)|[note](../resources/note.md)|Read the properties and relationships of a [note](../resources/note.md) object.|
|[Update](../api/note-update.md)|[note](../resources/note.md)|Update the properties of a [note](../resources/note.md) object.|
|[Delete](../api/note-delete.md)|None|Delete a [note](../resources/note.md) object.|
|[Get delta](../api/note-delta.md)|[note](../resources/note.md) collection|Get a set of [note](../resources/note.md) objects that were added, updated, or deleted in the user's *Notes* folder since the last delta query.|
|[List attachments](../api/note-list-attachments.md)|[attachment](../resources/attachment.md) collection|Get the list of file attachments associated with a [note](../resources/note.md).|
|[Create attachment](../api/note-post-attachments.md)|[attachment](../resources/attachment.md)|Create a [fileAttachment](../resources/fileattachment.md) object, which adds an inline image attachment to a [note](../resources/note.md).|
|[Delete attachment](../api/attachment-delete.md)|None|Delete an inline image attachment from a [note](../resources/note.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|The content of the note. Supports `text` or `html` content types.|
|bodyPreview|String|Auto-generated preview of the note body content (first ~255 characters, plain text). Read-only.|
|categories|String collection|The categories associated with the note. Inherited from [outlookItem](../resources/outlookitem.md).|
|changeKey|String|Version identifier used for optimistic concurrency control via the `If-Match` header. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|createdDateTime|DateTimeOffset|The date and time when the note was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ge`, `le`, `gt`, `lt`). Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|hasAttachments|Boolean|Indicates whether the note has file attachments. Supports `$filter` (`eq`). Read-only.|
|id|String|The unique identifier for the note. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|isDeleted|Boolean|Indicates whether the note is soft-deleted. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the note was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ge`, `le`, `gt`, `lt`) and `$orderby`. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|subject|String|The title of the note. Supports `$filter` (`eq`, `ne`, `startsWith`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attachments|[attachment](../resources/attachment.md) collection|The file attachments for the note. Only inline image attachments (image/png, image/jpeg, image/gif, or image/bmp) are supported, with a maximum size of 3 MB per attachment. Use `$expand` to retrieve attachments.|
|extensions|[extension](../resources/extension.md) collection|The collection of open extensions defined for the note.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|The collection of multi-value extended properties defined for the note.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|The collection of single-value extended properties defined for the note.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [
    "attachments",
    "extensions",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties"
  ],
  "@odata.type": "microsoft.graph.note",
  "baseType": "microsoft.graph.outlookItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.note",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "subject": "String",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "bodyPreview": "String",
  "isDeleted": "Boolean",
  "hasAttachments": "Boolean"
}
```

