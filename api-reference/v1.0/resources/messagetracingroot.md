---
title: "messageTracingRoot resource type"
description: "Represents a container for administrative resources to trace messages."
author: "Huajian-MSIT"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# messageTracingRoot resource type

Namespace: microsoft.graph

Represents a container for administrative resources to trace messages.

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|messageTraces|[exchangeMessageTrace](../resources/exchangemessagetrace.md) collection| Represents the trace information of messages that pass through Exchange Online organizations. |

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