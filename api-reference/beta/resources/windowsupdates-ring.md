---
title: "ring resource type"
description: "An abstract type that governs the update deployment ring."
author: "andredm7"
ms.date: 01/12/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# ring resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that governs the update deployment ring. An update deployment ring supports only devices and is used to phase a rollout strategy for Windows updates.

Base type of [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection|Get a list of the [ring](../resources/windowsupdates-ring.md) objects and their properties.|
|[Create](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new [ring](../resources/windowsupdates-ring.md) object.|
|[Get](../api/windowsupdates-ring-get.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Read the properties and relationships of [ring](../resources/windowsupdates-ring.md) object.|
|[Update](../api/windowsupdates-ring-update.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Update the properties of a [ring](../resources/windowsupdates-ring.md) object.|
|[Delete](../api/windowsupdates-ring-delete.md)|None|Delete a [ring](../resources/windowsupdates-ring.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| The date and time when the ring is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only|
|deferralInDays|Int32| The quality update deferral period in days. The value must be between `0` and `30`. Optional.|
|description|String| The ring description. Required |
|displayName|String| The ring display name. Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups.|
|id|String| The unique identifier for the **ring** object.|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups.|
|isPaused|Boolean| The pause action for the quality update ring policy. Required.|
|lastModifiedDateTime|DateTimeOffset| The date and time whenthe ring was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.ring",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.ring",
  "createdDateTime": "String (timestamp)",
  "deferralInDays": "Int32",
  "description": "String",
  "displayName": "String",
  "excludedGroupAssignment": {"@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"},
  "id": "String (identifier)",
  "includedGroupAssignment": {"@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"},
  "isPaused": "Boolean",
  "lastModifiedDateTime": "String (timestamp)"
}
```

