---
title: "mailboxItem resource type"
description: "Represents an item in a mailbox folder."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailboxItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in a mailbox folder. Items are Exchange mailbox items like message, task, event, contact, or note.

This resource supports [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a delta function. It also supports single-value and multi-value extended properties for filtering on custom data that isn't already exposed in the Microsoft Graph API metadata.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mailboxfolder-list-items.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get the [mailboxItem](../resources/mailboxitem.md) collection within a specified folder in a mailbox.|
|[Create](../api/mailboxfolder-post-items.md)|[mailboxItem](../resources/mailboxitem.md)|Create a new mailboxItem object.|
|[Get](../api/mailboxitem-get.md)|[mailboxItem](../resources/mailboxitem.md)|Read the properties and relationships of a [mailboxItem](../resources/mailboxitem.md) object.|
|[Update](../api/mailboxitem-update.md)|[mailboxItem](../resources/mailboxitem.md)|Update the properties of a mailboxItem object.|
|[Delete](../api/mailboxfolder-delete-items.md)|None|Delete a mailboxItem object.|
|[Get delta](../api/mailboxitem-delta.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get a set of [mailboxItem](../resources/mailboxitem.md) objects that have been added, deleted, or updated in a specified folder.|
|**Extended properties**| | |
|[Get singleValueExtendedProperty](../api/singlevaluelegacyextendedproperty-get.md)|[mailboxItem](../resources/mailboxitem.md)|Get mailbox items that contain a single-value extended property by using `$expand` or `$filter`.|
|[Get multiValueExtendedProperties](../api/multivaluelegacyextendedproperty-get.md)|[mailboxItem](../resources/mailboxitem.md)|Get a mailbox item that contains a multi-value extended property by using `$expand`.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|categories|String collection|The categories associated with the message.|
|changeKey|String|The version of the item.|
|createdDateTime|DateTimeOffset|The date and time when the item was created. The date and time information uses ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|id|String|The unique identifier for the item.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the item was last changed. The date and time information uses ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|size|Int64|The length of the item in bytes.|
|type|String|The message class ID of the item.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxItem",
  "baseType": "microsoft.graph.outlookItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxItem",
  "categories": ["String"],
  "changeKey": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "size": "Int64",
  "type": "String"
}
```
