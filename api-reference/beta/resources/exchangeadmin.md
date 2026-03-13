---
title: "exchangeAdmin resource type"
description: "Represents a container for the Exchange admin functionality."
author: "cparker-msft"
ms.date: 01/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exchangeAdmin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for the Exchange admin functionality.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mailboxes|[mailbox](../resources/mailbox.md) collection|Represents a user's mailboxes.|
|tracing|[messageTracingRoot](../resources/messagetracingroot.md)|Represents a container for administrative resources to trace messages.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exchangeAdmin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeAdmin"
}
```
