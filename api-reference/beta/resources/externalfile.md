---
title: "externalFile resource type"
description: "A file indexed via a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# externalFile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item indexed via a Microsoft Search [connection](connection.md). This type derives from the [externalItem](externalitem.md) type.

## Methods

| Method                                                 | Return Type             | Description |
|:-------------------------------------------------------|:------------------------|:--|
| [Create externalFile](../api/connection-post-items.md) | externalFile            | Create an externalFile. |
| [List externalFile](../api/connection-list-items.md)   | externalFile collection | List externalFiles |
| [Get externalFile](../api/externalitem-get.md)         | externalFile            | Read properties of an externalFile. |
| [Update externalFile](../api/externalitem-update.md)   | externalFile            | Update an externalFile. |
| [Delete](../api/externalitem-delete.md)                | None                    | Delete an externalFile. |

## Properties

| Property         | Type                     | Description                    |
|:-----------------|:-------------------------|:-------------------------------|
| acl              | [acl](acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. |
| content          | String                   | A plain-text representation of the contents of the item. |
| id               | String                   | Developer-provided unique ID  of the item. Required. |
| createdBy        | String                   | The name of the user that created the file. |
| createdDateTime  | DateTimeOffset           | The date and time that the file was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| extension        | String                   | The file extension.            |
| lastModifiedBy   | String                   | The name of the user that last modified the file. |
| modifiedDateTime | DateTimeOffset           | The date and time that the file was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| name             | String                   | The file name.                 |
| size             | Int64                    | The size of the file in bytes. |
| title            | String                   | The title of the file.         |
| url              | String                   | The URL to access the file.    |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalFile",
  "baseType": ""
}-->

```json
{
  "acl": [{"@odata.type": "microsoft.graph.acl"}],
  "content": "String",
  "id": "String (identifier)",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "extension": "String",
  "lastModifiedBy": "String",
  "modifiedDateTime": "String (timestamp)",
  "name": "String",
  "size": 1024,
  "title": "String",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalFile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
