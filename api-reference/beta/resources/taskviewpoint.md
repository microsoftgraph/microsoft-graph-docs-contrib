---
title: "taskViewpoint resource type"
description: Contains personal properties of a task"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# taskViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains personal properties of a [task](task.md). When sharing or assigning a **task**, these properties will not be seen by other users.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reminderDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time for a reminder alert of the **task** to occur.|
|categories|String collection|The categories associated with the task. Each category corresponds to the **displayName** property of an [outlookCategory](../resources/outlookcategory.md) that the user has defined.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.taskViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskViewpoint",
  "reminderDatetime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "categories": ["string"]
}
```

