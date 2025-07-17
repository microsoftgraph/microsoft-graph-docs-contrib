---
title: printTaskTrigger resource type
description: Determines the conditions under which a new printTask will be executed based on the associated printTaskDefinition.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 05/23/2024
---

# printTaskTrigger resource type

Namespace: microsoft.graph

Determines the condition under which a new [printTask](printtask.md) will be triggered based on the associated [printTaskDefinition](printtaskdefinition.md).

For details about how to use this resource to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List task triggers](../api/printer-list-tasktriggers.md) | [printTaskTrigger](printtasktrigger.md) collection | Get a list of printTaskTriggers associated with a particular [printer](printer.md). |
| [Get task trigger](../api/printtasktrigger-get.md) | [printTaskTrigger](printtasktrigger.md) | Get the printTaskTrigger associated with a particular [printTask](printtask.md). |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|event|printEvent|The Universal Print event that causes a new [printTask](printtask.md) to be triggered. Valid values are described in the following table.|
|id|String|The printTaskTrigger's identifier. Read-only.|


### printEvent values

|Member|Value|Description|
|:---|:---|:---|
|jobStarted|0|Represents an event that occurs when a new print job is started.|
|unknownFutureValue|1|Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definition|[printTaskDefinition](printtaskdefinition.md)|An abstract definition that is used to create a [printTask](printtask.md) when triggered by a print event. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printTaskTrigger",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTaskTrigger",
  "id": "String (identifier)",
  "event": "String"
}
```

