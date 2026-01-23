---
title: "checkInClaim resource type"
description: "Represents the check-in status to a place for an Outlook calendar event."
author: "shijieyao"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
toc.title: "Check-in claim"
---

# checkInClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the check-in status to a place for an Outlook calendar event.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new [checkInClaim](../resources/checkinclaim.md) object to record the check-in status for a specific place, such as a [desk](../resources/desk.md), [room](../resources/room.md), or [workspace](../resources/workspace.md), associated with a specific calendar reservation.|
|[Get](../api/checkinclaim-get.md)|[checkInClaim](../resources/checkinclaim.md)|Read the properties and relationships of a [checkInClaim](../resources/checkinclaim.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String| The unique identifier for an Outlook calendar event associated with the **checkInClaim** object. For more information, see the **iCalUId** property in [event](../resources/event.md). |
|checkInMethod|[checkInMethod](../resources/checkinclaim.md#checkinmethod-values)| Indicates the method of check-in. The possible values are: `unspecified`, `manual`, `inferred`, `verified`, `unknownFutureValue`. The default value is `unspecified`.|
|createdDateTime|DateTimeOffset| The date and time when the **checkInClaim** object was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |

### checkInMethod values

|Member|Description|
|:---|:---|
|unspecified| Default value when no other check-in method is used. We recommend that you use a value other than `unspecified`. |
|manual| Manual check-in to a desk or room based on an email or Teams chat reminder.|
|inferred| Check-in based on wireless network, badge access, or GPS signal.|
|verified| Check-in via a device bound to a place.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use.  |

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

