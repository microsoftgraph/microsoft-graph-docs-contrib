---
title: "openShift resource type"
description: "Represents an unassigned open shift in a schedule."
ms.localizationpriority: medium
ms.date: 11/21/2024
author: "victorcheng"
ms.subservice: "teams"
doc_type: "resourcePageType"
---

# openShift resource type

Namespace: microsoft.graph


Represents an unassigned, open shift in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/openshift-list.md) | Collection of [openShift](openshift.md) | List the properties and relationships of **openShift** objects in a team.|
| [Create](../api/openshift-post.md) | [openShift](openshift.md) | Create an instance of an **openShift** object. |
| [Get](../api/openshift-get.md) | [openShift](openshift.md) | Read the properties and relationships of an **openShift** object. |
| [Update](../api/openshift-update.md) | [openShift](openshift.md) | Update an **openShift** object. |
| [Delete](../api/openshift-delete.md) | None | Delete an **openShift** object. |
| [Stage for deletion](../api/changetrackedentity-stagefordeletion.md) | None | Stage the deletion of an [openShift](../resources/openshift.md) instance in a [schedule](../resources/schedule.md) in draft mode. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| createdDateTime       | DateTimeOffset                    | Date and time when the **openShift** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md).                               |
| draftOpenShift        | [openShiftItem](openshiftitem.md) | Draft changes in the **openShift** are only visible to managers until they're [shared](../api/schedule-share.md).              |
| id                    | String                            | Unique identifier for the **openShift** object. Read-only. Inherited from [changeTrackedEntity](changetrackedentity.md).        |
| isStagedForDeletion   | Boolean                           | The **openShift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).     |
| lastModifiedBy        | [identitySet](identityset.md)     | Identity of the user who last modified the **openShift** object. Inherited from [changeTrackedEntity](changetrackedentity.md). |
| lastModifiedDateTime  | DateTimeOffset                    | Date and time when the **openShift** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [changeTrackedEntity](changetrackedentity.md). |
| schedulingGroupId     | String                            | The ID of the [schedulingGroup](schedulinggroup.md) that contains the **openShift**.  |
| sharedOpenShift       | [openShiftItem](openshiftitem.md) | The shared version of this **openShift** that is viewable by both employees and managers. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShift"
}-->

```json
{
  "@odata.type": "#microsoft.graph.openShift",
  "createdDateTime": "String (timestamp)",
  "draftOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"},
  "id": "String (identifier)",
  "isStagedForDeletion": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "schedulingGroupId": "String",
  "sharedOpenShift": {"@odata.type": "microsoft.graph.openShiftItem"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShift resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

