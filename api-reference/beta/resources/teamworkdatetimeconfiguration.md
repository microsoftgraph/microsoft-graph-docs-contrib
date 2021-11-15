---
title: "teamworkDateTimeConfiguration resource type"
description: "Date & Time Configurations for device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDateTimeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Date & Time configurations for a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateFormat|String|Date time format of device.|
|officeHoursEndTime|TimeOfDay|Office hours end time of device.|
|officeHoursStartTime|TimeOfDay|Office hours start time of device|
|timeFormat|String|Time format.|
|timeZone|String|Timezone.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDateTimeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDateTimeConfiguration",
  "timeZone": "String",
  "dateFormat": "String",
  "timeFormat": "String",
  "officeHoursStartTime": "String (time of day)",
  "officeHoursEndTime": "String (time of day)"
}
```

