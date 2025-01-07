---
title: "exchangeSettings resource type"
description: "Represents the Exchange settings for mailbox discovery."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exchangeSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Exchange settings for mailbox discovery.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inPlaceArchiveMailboxId|String|The unique identifier for the user's in-place archive mailbox.|
|primaryMailboxId|String|The unique identifier for the user's primary mailbox.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exchangeSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeSettings",
  "inPlaceArchiveMailboxId": "String",
  "primaryMailboxId": "String"
}
```
