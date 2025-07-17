---
title: "teamworkDateTimeConfiguration resource type"
description: "Represents date and time configuration details for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkDateTimeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents date and time configuration details for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateFormat|String|The date format for the device.|
|officeHoursEndTime|TimeOfDay|The time of the day when the device is turned off.|
|officeHoursStartTime|TimeOfDay|The time of the day when the device is turned on.|
|timeFormat|String|The time format for the device.|
|timeZone|String|The time zone to which the office hours apply.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDateTimeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDateTimeConfiguration",
  "dateFormat": "String",
  "officeHoursEndTime": "String (time of day)",
  "officeHoursStartTime": "String (time of day)",
  "timeFormat": "String",
  "timeZone": "String"
}
```

