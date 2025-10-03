---
title: "ring resource type"
description: "Represents an entity that governs the update deployment ring. An update deployment ring supports only devices, and is used to phase a rollout strategy for windows updates."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# ring resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment ring. An update deployment ring supports only devices, and is used to phase a rollout strategy for windows updates.

This is an abstract type.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-policy-list-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection|Get a list of the ring objects and their properties.|
|[Create](../api/windowsupdates-policy-post-rings.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Create a new ring object.|
|[Get](../api/windowsupdates-ring-get.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) object.|
|[Update](../api/windowsupdates-ring-update.md)|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md)|Update the properties of a ring object.|
|[Delete](../api/windowsupdates-policy-delete-rings.md)|None|Delete a ring object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| The date and time the ring is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only|
|deferralInDays|Int32| The Quality Update deferral period (days). The value must be between 0 and 30. Optional.|
|description|String| The ring description. Required |
|displayName|String| The ring display name. Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups.|
|id|String| The unique identifier for the ring. Inherits from [entity](../resources/entity.md)|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Represents an entity that governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups.|
|isPaused|Boolean| Represents the pause action for the Quality Update ring policy. Required.|
|lastModifiedDateTime|DateTimeOffset| The date and time the ring was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only.|

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
  "displayName": "String",
  "description": "String",
  "includedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
  },
  "excludedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
  },
  "deferralInDays": "Integer",
  "isPaused": "Boolean",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

