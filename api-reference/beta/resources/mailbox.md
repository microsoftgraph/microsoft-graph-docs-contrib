---
title: "mailbox resource type"
description: "Represents a user's mailbox."
author: "cparker-msft"
ms.date: 01/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailbox resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's mailbox.

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create import session](../api/mailbox-createimportsession.md)|[mailboxItemImportSession](../resources/mailboxitemimportsession.md)|Create a session to [import an Exchange mailbox item](/graph/import-exchange-mailbox-item).|
|[Export items](../api/mailbox-exportitems.md)|[exportItemResponse](../resources/exportitemresponse.md) collection|Export Exchange [mailboxItem](../resources/mailboxitem.md) objects in full-fidelity.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object isn't deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier for the **mailbox**. Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|folders|[mailboxFolder](../resources/mailboxfolder.md) collection|The collection of folders in the mailbox.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailbox",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailbox",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)"
}
```
