---
title: "plannerTaskDetails resource type"
description: "Represents the additional information about a task. Each task object has a details object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTaskDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the additional information about a task. Each [task](plannertask.md) object has a details object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerTaskDetails](../api/plannertaskdetails-get.md) | [plannerTaskDetails](plannertaskdetails.md) |Read properties and relationships of **plannerTaskDetails** object.|
|[Update](../api/plannertaskdetails-update.md) | [plannerTaskDetails](plannertaskdetails.md)	|Update **plannerTaskDetails** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[plannerChecklistItems](plannerchecklistitems.md)|The collection of checklist items on the task.|
|completionRequirements|[plannerTaskCompletionRequirementDetails](plannertaskcompletionrequirementdetails.md)|Contains detailed information about requirements on the task.|
|description|String|Description of the task.|
|id|String| Read-only. ID of the task details. It is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|notes|[itemBody](itembody.md)|Rich text description of the task. To be used by HTML-aware clients. For backwards compatibility, a plain-text version of the HTML description will be synced to the "description" field. If this field has not previously been set but "description" has been, the existing description will be synchronized to "notes" with minimal whitespace-preserving HTML markup. Setting both "description" and "notes" is an error and will result in an exception.|
|previewType|string|This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`. When set to `automatic` the displayed preview is chosen by the app viewing the task.|
|references|[plannerExternalReferences](plannerexternalreferences.md)|The collection of references on the task.|

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerTaskDetails"
}-->

```json
{
  "checklist": {"@odata.type": "microsoft.graph.plannerChecklistItems"},
  "completionRequirements": {"@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"},
  "description": "String",
  "id": "String (identifier)",
  "notes": {"@odata.type": "microsoft.graph.itemBody"},
  "previewType": "String",
  "references": {"@odata.type": "microsoft.graph.plannerExternalReferences"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerTaskDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


