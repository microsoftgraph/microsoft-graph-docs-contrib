---
title: "virtualEventSettings resource type"
description: "Represents the settings for a virtual event."
author: "benjaminlee"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a [virtual event](../resources/virtualevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAttendeeEmailNotificationEnabled|Boolean| Flag to determine if virtual event attendees should receive email notifications.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|virtualEvents|[virtualEvent](../resources/virtualevent.md)| Provides settings configuration for virtual event resource type|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSettings",
  "isAttendeeEmailNotificationEnabled": "Boolean"
}
```

## Related content
[Virtual event resource](../resources/virtualevent.md)
[Virtual event webinars](../resources/virtualeventwebinar.md)
[Virtual event townhalls](../resources/virtualeventtownhall.md)