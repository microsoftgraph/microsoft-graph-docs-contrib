---
title: "qualityUpdateRing resource type"
description: "Represents an entity that governs the update deployment ring specifically for quality updates."
author: "andredm7"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# qualityUpdateRing resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment ring specifically for quality updates. An update deployment ring supports only devices and is used to phase the rollout strategy for quality updates.

Inherits from [ring](../resources/windowsupdates-ring.md).

## Methods
For the list of supported methods, see [ring](../resources/windowsupdates-ring.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| The date and time when the quality updates ring is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [ring](../resources/windowsupdates-ring.md).|
|deferralInDays|Int32| The quality update deferral period in days. The value must be between `0` and `30`. Inherited from [ring](../resources/windowsupdates-ring.md).|
|description|String| The quality update ring description. The maximum length is 1,500 characters. Inherited from [ring](../resources/windowsupdates-ring.md).|
|displayName|String| The quality update ring display name. The maximum length is 200 characters. Inherited from [ring](../resources/windowsupdates-ring.md).|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [ring](../resources/windowsupdates-ring.md).|
|id|String| The unique identifier for the quality update ring. Inherited from [ring](../resources/windowsupdates-ring.md).|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [ring](../resources/windowsupdates-ring.md).|
|isHotpatchEnabled|Boolean| Identifies whether a hotpatch update is available.|
|isPaused|Boolean| Represents the pause action for the quality update ring policy. Inherited from [ring](../resources/windowsupdates-ring.md).|
|lastModifiedDateTime|DateTimeOffset| The date and time the quality updates ring was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [ring](../resources/windowsupdates-ring.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateRing",
  "baseType": "microsoft.graph.windowsUpdates.ring",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
  "createdDateTime": "String (timestamp)",
  "deferralInDays": "Integer",
  "description": "String",
  "displayName": "String",
  "excludedGroupAssignment": {"@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"},
  "id": "String (identifier)",
  "includedGroupAssignment": {"@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"},
  "isHotpatchEnabled": "Boolean",
  "isPaused": "Boolean",
  "lastModifiedDateTime": "String (timestamp)"
}
```

