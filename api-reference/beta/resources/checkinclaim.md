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
|[Create](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new [checkInClaim](../resources/checkinclaim.md) object.|
|[Get](../api/checkinclaim-get.md)|[checkInClaim](../resources/checkinclaim.md)|Read the properties and relationships of [checkInClaim](../resources/checkinclaim.md) object.|

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
|manual| Manual check-ins to a building via Outlook calendar, Teams, Places, or to a desk via email reminder. |
|inferred| Building check-ins based on wireless network, badging data, or GPS signal. |
|verified| Check-ins via a device bound to a place. |
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

