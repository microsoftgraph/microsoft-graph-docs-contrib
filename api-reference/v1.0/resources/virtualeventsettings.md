---
title: "virtualEventSettings resource type"
description: "Represents the settings for a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# virtualEventSettings resource type

Namespace: microsoft.graph

Represents the settings for a [virtual event](../resources/virtualevent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isAttendeeEmailNotificationEnabled|Boolean| Indicates whether virtual event attendees receive email notifications.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|virtualEvents|[virtualEvent](../resources/virtualevent.md)| Provides configuration settings for a [virtual event](../resources/virtualevent.md).|

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

- [Virtual event](../resources/virtualevent.md)
- [Virtual event webinars](../resources/virtualeventwebinar.md)
