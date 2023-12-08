---
title: "plannerTaskDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [plannerDelta](../resources/plannerdelta.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerTaskDetails objects](../api/plannertask-list-details.md)|[plannerTaskDetails](../resources/plannertaskdetails.md) collection|Get a list of the [plannerTaskDetails](../resources/plannertaskdetails.md) objects and their properties.|
|[Create plannerTaskDetails](../api/plannertask-post-details.md)|[plannerTaskDetails](../resources/plannertaskdetails.md)|Create a new [plannerTaskDetails](../resources/plannertaskdetails.md) object.|
|[Get plannerTaskDetails](../api/plannertaskdetails-get.md)|[plannerTaskDetails](../resources/plannertaskdetails.md)|Read the properties and relationships of a [plannerTaskDetails](../resources/plannertaskdetails.md) object.|
|[Update plannerTaskDetails](../api/plannertaskdetails-update.md)|[plannerTaskDetails](../resources/plannertaskdetails.md)|Update the properties of a [plannerTaskDetails](../resources/plannertaskdetails.md) object.|
|[Delete plannerTaskDetails](../api/plannertask-delete-details.md)|None|Delete a [plannerTaskDetails](../resources/plannertaskdetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalAttachment|[plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md)|**TODO: Add Description**|
|checklist|[plannerChecklistItems](../resources/plannerchecklistitems.md)|**TODO: Add Description**|
|completionRequirements|[plannerTaskCompletionRequirementDetails](../resources/plannertaskcompletionrequirementdetails.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|notes|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|previewType|plannerPreviewType|**TODO: Add Description**.The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[plannerExternalReferences](../resources/plannerexternalreferences.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerTaskDetails",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskDetails",
  "id": "String (identifier)",
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
  "completionRequirements": {
    "@odata.type": "microsoft.graph.plannerTaskCompletionRequirementDetails"
  },
  "approvalAttachment": {
    "@odata.type": "microsoft.graph.plannerBaseApprovalAttachment"
  }
}
```

