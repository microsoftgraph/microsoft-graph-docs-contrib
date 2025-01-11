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
|[exportItems](../api/mailbox-exportitems.md)|[exportItemResponse](../resources/exportitemresponse.md) collection|Export Exchange mailboxItem objects in full fidelity FTS format for the purpose of backup.|
|[createImportSession](../api/mailbox-createimportsession.md)|[mailboxItemImportSession](../resources/mailboxitemimportsession.md)|Create a session for importing an Exchange mailbox item using its FTS format.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The id of the mailbox.|

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
  "id": "String (identifier)"
}
```
