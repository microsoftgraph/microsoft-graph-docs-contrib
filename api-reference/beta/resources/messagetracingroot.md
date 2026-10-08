---
title: "messageTracingRoot resource type"
description: "Represents a container for administrative resources to trace messages."
author: "Huajian-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# messageTracingRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for administrative resources to trace messages.


Inherits from [entity](../resources/entity.md).


## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|messageTraces|[exchangeMessageTrace](../resources/exchangemessagetrace.md) collection| Represents the trace information of messages that pass-through Exchange Online organizations. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.messageTracingRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageTracingRoot"
}
```

