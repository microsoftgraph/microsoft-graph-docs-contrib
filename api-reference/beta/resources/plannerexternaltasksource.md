---
title: "plannerExternalTaskSource resource type"
description: "Contains information about the relationship of a plannerTask to a user experience outside of Planner."
author: "DanluCui"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerExternalTaskSource resource type

Namespace: microsoft.graph

Contains information about the relationship of a [plannerTask](plannerTask.md) to a user experience outside of Planner. Tasks in Planner can be surfaced in or synced with other experiences to track work in the context of that experience. Data in the plannerExternalTaskSource can be displayed in a user interface, used for sync information utilized by external services, or used to simply point to where a task was created in an external service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This will generally take the form of "com.contoso.myapp".|
|displayLinkType|plannerExternalTaskSourceDisplayType| Specifies how an application should display the link to the associated plannerExternalTaskSource. The possible values are: `none`, `default`. |
|externalObjectId|String| Nullable. The id of the entity that an external service associates with a task.|
|externalObjectVersion|String| Nullable. The external Item Version for the object specified by the externalObjectId.|
|externalContextId|String| Nullable. The id of the external entity's containing entity or context.|
|webUrl|String| Nullable. URL of the user experience represented by the associated plannerExternalTaskSource.|
|displayNameSegments|String collection| The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerExternalTaskSource"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.plannerExternalTaskSource",
    "externalObjectId": "String-value",
    "externalContextId": "String-value",
    "contextScenarioId": "String-value",
    "externalObjectVersion": "String-value",
    "webUrl": "String-value",
    "displayLinkType": "plannerExternalTaskSourceDisplayType value",
    "displayNameSegments": [String-Collection]
}
```



