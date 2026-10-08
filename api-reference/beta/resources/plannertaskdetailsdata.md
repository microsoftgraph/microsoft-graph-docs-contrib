---
title: "plannerTaskDetailsData resource type"
description: "Represents a snapshot of additional details about a planner task at a specific point in time."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerTaskDetailsData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of additional [details](../resources/plannertaskdetails.md) about a [planner task](../resources/plannertask.md) at a specific point in time. This resource is used in [plannerTaskData](../resources/plannertaskdata.md) to capture extended task information before and after changes.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalAttachment|[plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md)|Detailed information about the approval that is attached to the task.|
|checklist|[plannerChecklistItems](../resources/plannerchecklistitems.md)|The collection of checklist items on the task.|
|completionRequirements|[plannerTaskCompletionRequirementDetails](../resources/plannertaskcompletionrequirementdetails.md)|Contains detailed information about requirements on the task.|
|description|String|Description of the task.|
|forms|[plannerFormsDictionary](../resources/plannerformsdictionary.md)|The collection of forms associated with the task.|
|notes|[itemBody](../resources/itembody.md)|Rich text description of the task for use by applications that support HTML content.|
|previewType|plannerPreviewType|The type of preview that shows up on the task. The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[plannerExternalReferences](../resources/plannerexternalreferences.md)|The collection of references on the task.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskDetailsData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskDetailsData",
  "description": "String",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "previewType": "String",
  "references": {
    "@odata.type": "microsoft.graph.plannerExternalReferences"
  },
  "checklist": {
    "@odata.type": "microsoft.graph.plannerChecklistItems"
  },
  "forms": {
    "@odata.type": "microsoft.graph.plannerFormsDictionary"
  },
  "completionRequirements": {
    "@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"
  },
  "approvalAttachment": {
    "@odata.type": "microsoft.graph.plannerBaseApprovalAttachment"
  }
}
```
