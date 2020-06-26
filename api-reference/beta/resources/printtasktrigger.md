---
title: printTaskTrigger resource type
description: Determines the conditions under which a new printTask will be executed based on the associated printTaskDefinition.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTaskTrigger resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Determines the conditions under which a new [printTask](printtask.md) will be executed based on the associated [printTaskDefinition](printtaskdefinition.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printtasktrigger-get.md) | [printTaskTrigger](printtasktrigger.md) | Get the printTaskTrigger associated with a particular [printTask](printtask.md). |
| [List](../api/printer-list-tasktriggers.md) | [printTaskTrigger](printtasktrigger.md) collection | Get a list of printTaskTriggers associated with a particular [printer](printer.md). |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printTaskTrigger's identifier. Read-only.|
|event|[printEvent](printevent.md)|The Universal Print event that will cause a new [printTask](printtask.md) to be executed.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|definition|[printTaskDefinition](printtaskdefinition.md)|The [printTaskDefinition](printtaskdefinition.md) that defines how a new [printTask](printTask.md) will be executed. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTaskTrigger",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "event": {"@odata.type": "microsoft.graph.printEvent"},
  "definition": {"@odata.type": "microsoft.graph.printTaskDefinition"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTaskTrigger resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->