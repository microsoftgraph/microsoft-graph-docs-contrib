---
title: "changeTrackedEntity resource type"
description: "Represents an entity to track changes made to any supported schedule and associated resource."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
---

# changeTrackedEntity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity to track changes made to any supported [schedule](schedule.md) and associated resource.

Base type of [openShift](../resources/openshift.md), [shift](../resources/shift.md), and [timeOff](../resources/timeoff.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Stage for deletion](../api/changetrackedentity-stagefordeletion.md)|None|Stage the deletion of an [openShift](../resources/openshift.md), [shift](../resources/shift.md), or [timeOff](../resources/timeoff.md) instance in a [schedule](../resources/schedule.md) in draft mode.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|[identitySet](identityset.md)|Identity of the user who created the entity.|
|createdDateTime|DateTimeOffset|The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| The unique identifier for the **changeTrackedEntity** object. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user who last modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.changeTrackedEntity",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "changeTrackedEntity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


