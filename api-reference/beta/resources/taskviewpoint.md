---
title: "taskViewpoint resource type"
description: Contains personal properties of a task"
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 04/22/2024
---

# taskViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains personal properties of a [task](task.md). When sharing or assigning a **task**, these properties won't be seen by other users.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reminderDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date and time for a reminder alert of the **task** to occur.|
|categories|String collection|The categories associated with the task. Each category corresponds to the **displayName** property of an [outlookCategory](../resources/outlookcategory.md) that the user has defined.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.taskViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskViewpoint",
  "reminderDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "categories": ["string"]
}
```

