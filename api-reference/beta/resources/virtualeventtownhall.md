---
title: "virtualEventTownhall resource type"
description: "Contains information about a virtual event townhall."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventTownhall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a virtual event townhall.

Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Create](../api/virtualeventsroot-post-townhalls.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Get](../api/virtualeventtownhall-get.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Update](../api/virtualeventtownhall-update.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Publish](../api/virtualevent-publish.md) | None | Publish a [virtualEventTownhall](../resources/virtualeventtownhall.md).|
| [Cancel](../api/virtualevent-cancel.md) | None | Cancel a [virtualEventTownhall](../resources/virtualeventtownhall.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| audience | [meetingAudience](#meetingaudience-values) | To whom the townhall is visible. |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) collection | Identity information of coorganizers of the townhall. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information of who created the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). Read-only. |
| description | [itemBody](../resources/itembody.md) | Description of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| id | String | Unique identifier of the townhall. Inherited from [entity](../resources/entity.md). Read-only. |
| invitedAttendees | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | Invited people to the townhall. |
| isInviteOnly | Boolean | Indicates whether the townhall is only open to invited people and groups in your organization. Can only be `true` when the value of the **audience** property is `organization`. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| status | [virtualEventStatus](#virtualeventstatus-values) | Status of the townhall. |

### meetingAudience values

| Value | Description |
| ----- | ----------- |
| everyone | The townhall is open to anyone. Choose this if there will be attendees outside your organization. |
| organization | The townhall is open to people in your organization and guests of your organization. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
| presenters | [virtualEventPresenter](../resources/virtualeventpresenter.md) collection | Presenters' information of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md).|
| sessions | [virtualEventSession](../resources/virtualeventsession.md)  collection | Sessions of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventTownhall",
  "baseType": "microsoft.graph.virtualEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "String (identifier)",
  "status": "String",
  "displayName": "String",
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "createdBy": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "audience": "String",
  "coOrganizers": [{"@odata.type": "microsoft.graph.communicationsUserIdentity"}],
  "invitedAttendees": [{"@odata.type": "microsoft.graph.communicationsUserIdentity"}],
  "isInviteOnly": "Boolean"
}
```
