---
title: "qualityUpdateRing resource type"
description: "Represents an entity that governs the update deployment ring specifically for Quality Updates. An update deployment ring supports only devices, and is used to phase a rollout strategy for Quality Updates."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# qualityUpdateRing resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the update deployment ring specifically for Quality Updates. An update deployment ring supports only devices, and is used to phase a rollout strategy for Quality Updates.

Inherits from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/windowsupdates-qualityupdatering-list.md)|[microsoft.graph.windowsUpdates.qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md) collection|Get a list of the qualityUpdateRing objects and their properties.|
|[Get](../api/windowsupdates-qualityupdatering-get.md)|[microsoft.graph.windowsUpdates.qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md) object.|
|[Update](../api/windowsupdates-qualityupdatering-update.md)|[microsoft.graph.windowsUpdates.qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md)|Update the properties of a qualityUpdateRing object.|
|[Delete](../api/windowsupdates-qualityupdatering-delete.md)|None|Delete a qualityUpdateRing object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset| The date and time the Quality Updates ring is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|deferralInDays|Int32| The Quality Update deferral period (days). The value must be between 0 and 30. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|description|String| The Quality Update ring description. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|displayName|String| The Quality Update ring display name. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|id|String| The unique identifier for the Quality Update ring. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Inherits from [entity](../resources/entity.md)|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Represents an entity that governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|isHotpatchEnabled|Boolean| Identifies whether a hotpatch update is available or not.|
|isPaused|Boolean| Represents the pause action for the Quality Update ring policy. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|
|lastModifiedDateTime|DateTimeOffset| The date and time the Quality Updates ring was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md).|

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
  "lastModifiedDateTime": "String (timestamp)",
  "isHotpatchEnabled": "Boolean"
}
```

