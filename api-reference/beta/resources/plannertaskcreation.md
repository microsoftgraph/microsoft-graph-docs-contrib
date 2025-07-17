---
title: "plannerTaskCreation resource type"
description: "Contains information about the origin of the plannerTask."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerTaskCreation resource type

Namespace: microsoft.graph

The resources that derive from plannerPlanCreation contain information about the origin of the [plannerTask](plannerTask.md). Apps do not need to know the origin of the task to be able to work with it; however, some apps can use the additional information to provide specific experiences around these tasks. This is the base type of [plannerTeamsPublicationInfo](plannerTeamsPublicationInfo.md) and [plannerExternalTaskSource](plannerExternalTaskSource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamsPublicationInfo|[plannerTeamsPublicationInfo](../resources/plannerteamspublicationinfo.md)|Information about the publication process that created this task. This field is deprecated and clients should move to using the new inheritance model.|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the task is created with. The possible values are: `external`, `publication` and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskCreation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCreation",
  "teamsPublicationInfo": {
    "@odata.type": "microsoft.graph.plannerTeamsPublicationInfo"
  },
  "creationSourceKind": "String-value"
}
```

