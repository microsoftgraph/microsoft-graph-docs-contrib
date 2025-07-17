---
title: "plannerTaskDetails resource type"
description: "Represents the additional information about a task. Each task object has a details object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# plannerTaskDetails resource type

Namespace: microsoft.graph

Represents the additional information about a task. Each [task](plannertask.md) object has a details object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get task details](../api/plannertaskdetails-get.md) | [plannerTaskDetails](plannertaskdetails.md) |Read properties and relationships of **plannerTaskDetails** object.|
|[Update task details](../api/plannertaskdetails-update.md) | [plannerTaskDetails](plannertaskdetails.md)	|Update **plannerTaskDetails** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[plannerChecklistItems](plannerchecklistitems.md)|The collection of checklist items on the task.|
|description|String|Description of the task.|
|id|String| Read-only. ID of the task details. It's 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service.|
|previewType|string|This sets the type of preview that shows up on the task. The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`. When set to `automatic` the displayed preview is chosen by the app viewing the task.|
|references|[plannerExternalReferences](plannerexternalreferences.md)|The collection of references on the task.|

## Relationships
None.


## JSON representation
The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.plannerTaskDetails"
}-->

```json
{
  "checklist": {"@odata.type": "microsoft.graph.plannerChecklistItems"},
  "description": "String",
  "id": "String (identifier)",
  "previewType": "string",
  "references": {"@odata.type": "microsoft.graph.plannerExternalReferences"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

