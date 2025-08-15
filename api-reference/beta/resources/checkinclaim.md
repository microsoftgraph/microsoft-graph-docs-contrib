---
title: "checkInClaim resource type"
description: "**TODO: Add Description**"
author: "shijieyao"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# checkInClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new checkInClaim object.|
|[Get](../api/checkinclaim-get.md)|[checkInClaim](../resources/checkinclaim.md)|Read the properties and relationships of [checkInClaim](../resources/checkinclaim.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String| A unique identifier for a Calendar event to which the **checkInClaim** object is tied. For more, find iCalUId in [event](../resources/event.md). |
|checkInMethod|checkInMethod| The method of checking in. The possible values are: , `manual` (manual check-ins to a building via Calendar/Teams/Places or a desk via email reminder), `inferred` (Wi-Fi, badging data or GPS signal based building check-ins), `verified` (check-ins via device bounded to a place), `unspecified` (default value when no other check-in method is used; value other than unspecified is recommended).|
|createdDateTime|DateTimeOffset| The date and time the **checkInClaim** object was created. In UTC timezone. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "calendarEventId",
  "@odata.type": "microsoft.graph.checkInClaim",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.checkInClaim",
  "calendarEventId": "String (identifier)",
  "checkInMethod": "String",
  "createdDateTime": "String (timestamp)"
}
```

