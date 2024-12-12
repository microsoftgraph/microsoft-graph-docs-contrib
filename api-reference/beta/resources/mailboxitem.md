---
title: "mailboxItem resource type"
description: "An item in a mailbox folder."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailboxItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item in a mailbox folder. Items are Exchange mailbox items like message, task, event, contact or note.

This resource supports using delta query to track incremental additions, deletions, and updates, by providing a delta function. It also supports single-value and multi-value extended properties for filtering on custom data that is not already exposed in the Microsoft Graph API metadata

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailbox items](../api/mailboxfolder-list-items.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get a list of the mailboxItem objects and their properties.|
|[Create mailbox item](../api/mailboxfolder-post-items.md)|[mailboxItem](../resources/mailboxitem.md)|Create a new mailboxItem object.|
|[Get mailbox item](../api/mailboxitem-get.md)|[mailboxItem](../resources/mailboxitem.md)|Read the properties and relationships of a mailboxItem object.|
|[Update mailbox item](../api/mailboxitem-update.md)|[mailboxItem](../resources/mailboxitem.md)|Update the properties of a mailboxItem object.|
|[Delete mailbox item](../api/mailboxfolder-delete-items.md)|None|Delete a mailboxItem object.|
|[Get mailbox item delta](../api/mailboxitem-delta.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get a set of mailbox items that were added, deleted, or updated in a specified folder.|
|**Extended properties**| | |
|[List singleValueExtendedProperties](../api/mailboxitem-list-singlevalueextendedproperties.md)|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|Get mailboxItems that contain a single-value extended property by using `$expand` or `$filter`.|
|[List multiValueExtendedProperties](../api/mailboxitem-list-multivalueextendedproperties.md)|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|Get a mailboxItem that contains a multi-value extended property by using `$expand`.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|categories|String collection|The categories associated with the message.|
|changeKey|String|The version of the item.|
|createdDateTime|DateTimeOffset|The date and time the item was created. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|id|String|The item's unique identifier.|
|lastModifiedDateTime|DateTimeOffset|The date and time the item was last changed. <br><br> The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|size|Int64|The length of the item in bytes.|
|type|String|Describes the message class ID of the item.|

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
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "id": "String (identifier)",
  "type": "String",
  "size": "Integer"
}
```
