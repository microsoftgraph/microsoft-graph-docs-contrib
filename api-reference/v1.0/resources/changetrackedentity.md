---
title: "changeTrackedEntity resource type"
description: "Represents an entity to track changes made to any supported Shifts resource"
ms.localizationpriority: medium
ms.date: 11/21/2024
author: "victorcheng"
ms.subservice: "teams"
doc_type: "resourcePageType"
---

# changeTrackedEntity resource type

Namespace: microsoft.graph

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
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the person who last modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|

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
  "@odata.type": "#microsoft.graph.changeTrackedEntity",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
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

