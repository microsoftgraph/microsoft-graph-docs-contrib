---
title: "plannerTeamsPublicationInfo resource type"
description: "Contains detailed information about the publication process that created a plannerTask."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerTeamsPublicationInfo resource type

Namespace: microsoft.graph

Contains detailed information about the publication process that created a [plannerTask](plannertask.md). A publication process creates copies of tasks based on a template. These tasks are created in multiple plans, and have restricted permissions for the users; for example, they can't be deleted and users might be blocked from editing certain fields. Publication is used to distribute tasks across an organization and track their progress centrally.

Inherited from [plannerTaskCreation](plannertaskcreation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the task is created with. The possible values are: `external`, `publication`, `unknownFutureValue`. The default value is `publication`. Inherited from [plannerTaskCreation](plannertaskcreation.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when this task was last modified by the publication process. Read-only. |
|publicationId|String|The identifier of the publication. Read-only.|
|publicationName|String|The name of the published task list. Read-only.|
|publishedToPlanId|String|The identifier of the **plannerPlan** this task was originally placed in. Read-only. |
|publishingTeamId|String|The identifier of the [team](team.md) that initiated the publication process. Read-only.|
|publishingTeamName|String|The display name of the team that initiated the publication process. This display name is for reference only, and might not represent the most up-to-date name of the team. Read-only. |
|teamsPublicationInfo|[plannerTeamsPublicationInfo](../resources/plannerteamspublicationinfo.md)|Information about the publication process that created this task. This field is deprecated and shouldn't be used in this resource type. Inherited from [plannerTaskCreation](plannertaskcreation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTeamsPublicationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTeamsPublicationInfo",
  "creationSourceKind": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "publicationId": "String",
  "publicationName": "String",
  "publishedToPlanId": "String",
  "publishingTeamId": "String",
  "publishingTeamName": "String",
  "teamsPublicationInfo": {"@odata.type": "microsoft.graph.plannerTeamsPublicationInfo"}
}
```
