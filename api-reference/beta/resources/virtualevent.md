---
title: "virtualEvent resource type"
description: "Represents an abstract base type for a virtual event."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for a virtual event. Base type of [virtualEventTownhall](virtualeventtownhall.md) and [virtualEventWebinar](virtualeventwebinar.md).

Inherits from [entity](../resources/entity.md).

> [!TIP]
> This is an abstract type and can't be used directly. Use the derived types [virtualEventTownhall](virtualeventtownhall.md) or [virtualEventWebinar](virtualeventwebinar.md) instead.

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Set external event information](../api/virtualevent-setexternaleventinformation.md) | None | Link external event information to a [virtualEventTownhall](../resources/virtualeventtownhall.md) or [virtualEventWebinar](../resources/virtualeventwebinar.md) by setting an **externalEventId**. ]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[communicationsIdentitySet](communicationsidentityset.md)|The identity information for the creator of the virtual event. Inherited from [virtualEvent](../resources/virtualevent.md).|
|description|[itemBody](../resources/itembody.md)|A description of the virtual event.|
|displayName|String|The display name of the virtual event. |
|endDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The end time of the virtual event. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones).|
|externalEventInformation|[virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) collection|The external information of a virtual event. Returned only for event organizers or coorganizers. |
|id|String|The unique identifier of the virtual event. Inherited from [entity](../resources/entity.md).|
|settings|[virtualEventSettings](../resources/virtualeventsettings.md)| The virtual event settings. |
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|Start time of the virtual event. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones).|
|status|[virtualEventStatus](#virtualeventstatus-values)|The status of the virtual event. The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`.|

### virtualEventStatus values

| Value | Description |
| ----- | ----------- |
| draft | The virtual event is in draft and only visible to the organizer. |
| published | The organizer published the virtual event and it's visible to the audience. |
| canceled | The organizer canceled the virtual event. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|presenters|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|The virtual event presenters.|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|The sessions for the virtual event.|

## JSON representation

The following JSON representation shows the resource type.
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
  "createdBy": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "externalEventInformation" : [{"@odata.type": "microsoft.graph.virtualEventExternalInformation"}],
  "id": "String (identifier)",
  "settings": {"@odata.type": "microsoft.graph.virtualEventSettings"},
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}
```
