---
title: "driverUpdateRing resource type"
description: "Represents a deployment ring that controls targeting, deferral, and pause settings for driver and firmware updates."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# driverUpdateRing resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a deployment ring that controls targeting, deferral, and pause settings for driver and firmware updates.

Inherits from [ring](../resources/windowsupdates-ring.md).

## Methods

This resource is part of a polymorphic collection managed by the [ring resource](../resources/windowsupdates-ring.md) base type. Operations are performed through the base type endpoints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the ring was created. Read-only. Inherited from [ring](../resources/windowsupdates-ring.md).|
|deferralInDays|Int32|The number of days to defer the update offer. Inherited from [ring](../resources/windowsupdates-ring.md).|
|description|String|The ring description. The maximum length is 1,500 characters. Inherited from [ring](../resources/windowsupdates-ring.md).|
|displayName|String|The ring display name. The maximum length is 200 characters. Inherited from [ring](../resources/windowsupdates-ring.md).|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)|The Microsoft Entra groups whose devices are excluded from the ring. Inherited from [ring](../resources/windowsupdates-ring.md).|
|id|String|The unique identifier for the ring. Read-only. Inherited from [ring](../resources/windowsupdates-ring.md).|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)|The Microsoft Entra groups whose devices are included in the ring. Inherited from [ring](../resources/windowsupdates-ring.md).|
|isPaused|Boolean|Indicates whether update offers for the ring are paused. Inherited from [ring](../resources/windowsupdates-ring.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the ring was last modified. Read-only. Inherited from [ring](../resources/windowsupdates-ring.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateRing",
  "baseType": "microsoft.graph.windowsUpdates.ring",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateRing",
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
