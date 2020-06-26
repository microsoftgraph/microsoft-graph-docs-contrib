---
title: printTaskDefinition resource type
description: Represents a task that can be triggered when various events occur within Universal Print.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTaskDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a task that can be triggered when various events occur within Universal Print. See the [Pull Print Overview](/graph/universal-print-concept-overview.md#extending-universal-print-to-support-pull-printing) to understand how you can use this API to add Pull Print support to Universal Print.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/print-list-taskDefinitions.md) | [printTaskDefinition](printtaskdefinition.md) collection | Get a complete list of printTaskDefinitions created within Universal Print. |
| [Create](../api/print-post-taskDefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Create a new printTaskDefinition. |
| [Update](../api/print-update-taskDefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Update a printTaskDefinition. |
| [Delete](../api/print-delete-taskDefinitions.md) | None | Delete a printTaskDefinition. |
| [List tasks](../api/printtaskdefinition-list-tasks.md) | [printTask](printtask.md) | Get a list of tasks that have been created based on this definition. The list includes currently running tasks and recently completed tasks. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printTaskDefinition's identifier. Read-only.|
|displayName|String|The name of the printTaskDefinition.|
|createdBy|[appIdentity](appidentity.md)|The application that created the printTaskDefinition. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|tasks|[printTask](printtask.md) collection|A list of tasks that have been created based on this definition. The list includes currently running tasks and recently completed tasks. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTaskDefinition",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {"@odata.type": "microsoft.graph.appIdentity"},
  "tasks": [{"@odata.type": "microsoft.graph.printTask"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTaskDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->