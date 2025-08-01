---
title: "mailboxItemImportSession resource type"
description: "Provides information about how to import items into a user's mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailboxItemImportSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information about how to import items into a user's mailbox.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date and time in UTC when the import session expires. The date and time information uses ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|importUrl|String|The URL endpoint that accepts POST requests for uploading a mailbox item exported using [exportItems](../api/mailbox-exportitems.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxItemImportSession"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxItemImportSession",
  "expirationDateTime": "String (timestamp)",  
  "importUrl": "String"
}
```
