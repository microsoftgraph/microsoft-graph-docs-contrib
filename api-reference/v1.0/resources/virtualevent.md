---
title: "virtualEvent resource type"
description: "Information about a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEvent resource type

Namespace: microsoft.graph

Represents a base virtual event. 

This is an abstract type. The base type of [virtualEventWebinar](virtualEventWebinar.md).

Inherits from [entity](../resources/entity.md).

> [!TIP]
> This is an abstract type and can't be used directly. Use the derived type [virtualEventWebinar](virtualEventWebinar.md) instead.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[communicationsIdentitySet](communicationsidentityset.md)|Identity information for the creator of the virtual event. Inherited from [virtualEvent](../resources/virtualevent.md).|
|description|[itemBody](../resources/itembody.md)|Description of the virtual event.|
|displayName|String|Display name of the virtual event.|
|endDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|End time of the virtual event. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. Reference this doc to get all available time zones: [Powershell: Get all available time zones](/powershell/module/microsoft.powershell.management/get-timezone?view=powershell-7.4#example-3-get-all-available-time-zones).|
|id|String|Unique identifier of the virtual event. Inherited from [entity](../resources/entity.md).|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|Start time of the virtual event. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. Reference this doc to get all available time zones: [Powershell: Get all available time zones](/powershell/module/microsoft.powershell.management/get-timezone?view=powershell-7.4#example-3-get-all-available-time-zones).|
|status|virtualEventStatus|Status of the virtual event. The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|Sessions for the virtual event.|

## JSON representation
The following JSON representation shows the resource type
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEvent",
  "id": "String (identifier)",
  "status": "String",
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  }
}
```

