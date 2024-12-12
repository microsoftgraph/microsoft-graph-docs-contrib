---
title: "mailboxItemImportSession resource type"
description: "The mailboxItemImportSession resource provides information about how to import items into a user's mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# mailboxItemImportSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The mailboxItemImportSession resource provides information about how to import items into a user's mailbox.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date and time in UTC that the import session will expire.|
|importUrl|String|The URL endpoint that accepts POST requests for FTS format of the item.|

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
  "importUrl": "String",
  "expirationDateTime": "String (timestamp)"
}
```
