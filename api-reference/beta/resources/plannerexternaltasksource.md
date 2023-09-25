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

Contains information about the relationship of a [plannerTask](plannerTask.md) to a user experience outside of Planner. This allows surfacing or syncing tasks in Planner with other experiences to track work in the context of that experience. 

You can display data in a **plannerExternalTaskSource** in a user interface to sync information for an external service, or to simply point to where a task was created in the external service. 

The combination of the **contextScenarioId** and **externalObjectId** properties is unique within a tenant. If creation is called with existing **contextScenarioId** and **externalObjectId** values, the existing object is returned with no modifications. 

This type is derived from [plannerTaskCreation](plannerTaskCreation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamsPublicationInfo|[plannerTeamsPublicationInfo](../resources/plannerteamspublicationinfo.md)|Information about the publication process that created this task. This field is deprecated and should not be used in this resource type. Inherited from [plannerTaskCreation](plannerTaskCreation.md).|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the task is created with. The possible values are: `external`, `publication` and `unknownFutureValue`. The value of this property will be `external`. Inherited from [plannerTaskCreation](plannerTaskCreation.md).|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like "com.constoso.customerSupport".|
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
  "creationSourceKind": "String-value",
  "externalObjectId": "String-value",
  "externalContextId": "String-value",
  "contextScenarioId": "String-value",
  "externalObjectVersion": "String-value",
  "webUrl": "String-value",
  "displayLinkType": "plannerExternalTaskSourceDisplayType value",
  "displayNameSegments": "String Collection"
}
```



