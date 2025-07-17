---
title: printTaskDefinition resource type
description: Represents a task that can be triggered when various events occur within Universal Print.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printTaskDefinition resource type

Namespace: microsoft.graph

Represents an abstract definition for a task that can be triggered when various events occur within Universal Print.

For details about how to use this resource to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

This resource supports:
* [Subscribing to change notifications](/graph/universal-print-webhook-notifications).

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/print-list-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) collection | Get a complete list of printTaskDefinitions created within Universal Print. |
| [Create](../api/print-post-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Create a new printTaskDefinition. |
| [Update](../api/print-update-taskdefinition.md) | [printTaskDefinition](printtaskdefinition.md) | Update a printTaskDefinition. |
| [Delete](../api/print-delete-taskdefinition.md) | None | Delete a printTaskDefinition. |
| [List tasks](../api/printtaskdefinition-list-tasks.md) | [printTask](printtask.md) | Get a list of tasks that have been created based on this definition. The list includes currently running tasks and recently completed tasks. |
| [Get task](../api/printtask-get.md) | [printTask](printtask.md) | Gets a task that has been created based on this definition. |
| [Update task](../api/printtaskdefinition-update-task.md) | [printTask](printtask.md) | Update a task that has been created based on this definition. **Applications that register task triggers are responsible for updating task status when processing is finished, unless the related printJob has been redirected to another printer.** Failure to report completion will result in the related print job being blocked from printing and eventually deleted. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[appIdentity](appidentity.md)|The application that created the printTaskDefinition. Read-only.|
|displayName|String|The name of the printTaskDefinition.|
|id|String|The printTaskDefinition's identifier. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[printTask](printtask.md) collection|A list of tasks that have been created based on this definition. The list includes currently running tasks and recently completed tasks. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printTaskDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTaskDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.appIdentity"
  }
}
```

