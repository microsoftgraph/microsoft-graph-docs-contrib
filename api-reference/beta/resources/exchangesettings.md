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

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/usersettings-list-exchange.md)|[exchangeSettings](../resources/exchangesettings.md) collection|Get a list of mailboxes that belong to a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the **exchangeSettings** of the user.|
|inPlaceArchiveMailboxId|String|The unique identifier for the user's in-place archive mailbox.|
|primaryMailboxId|String|The unique identifier for the user's primary mailbox.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeSettings",
  "id": "String (identifier)",
  "inPlaceArchiveMailboxId": "String",
  "primaryMailboxId": "String"
}
```
