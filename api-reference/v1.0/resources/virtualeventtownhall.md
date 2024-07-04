---
title: "virtualEventTownhall resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventTownhall resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventsroot-list-townhalls.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md) collection|Get a list of the [virtualEventTownhall](../resources/virtualeventtownhall.md) objects and their properties.|
|[Create](../api/virtualeventsroot-post-townhalls.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md)|Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object.|
|[Get](../api/virtualeventtownhall-get.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md)|Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.|
|[Update](../api/virtualeventtownhall-update.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md)|Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.|
|[Delete](../api/virtualeventsroot-delete-townhalls.md)|None|Delete a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.|
|[publish](../api/virtualeventtownhall-publish.md)|None|**TODO: Add Description**|
|[cancel](../api/virtualeventtownhall-cancel.md)|None|**TODO: Add Description**|
|[List presenters](../api/virtualeventtownhall-list-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|Get the virtualEventPresenter resources from the presenters navigation property.|
|[Create virtualEventPresenter](../api/virtualeventtownhall-post-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md)|Create a new virtualEventPresenter object.|
|[List sessions](../api/virtualeventtownhall-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get the virtualEventSession resources from the sessions navigation property.|
|[Create virtualEventSession](../api/virtualeventtownhall-post-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md)|Create a new virtualEventSession object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audience|meetingAudience|**TODO: Add Description**.The possible values are: `everyone`, `organization`, `unknownFutureValue`.|
|coOrganizers|[communicationsUserIdentity](../resources/communicationsuseridentity.md) collection|**TODO: Add Description**|
|createdBy|[communicationsIdentitySet](../resources/communicationsidentityset.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|description|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|displayName|String|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|invitedAttendees|[identity](../resources/intune-identity.md) collection|**TODO: Add Description**|
|isInviteOnly|Boolean|**TODO: Add Description**|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|status|virtualEventStatus|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|presenters|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.virtualEvent](../resources/virtualevent.md)|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.virtualEvent](../resources/virtualevent.md)|

## JSON representation
The following JSON representation shows the resource type.
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
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.identity"
    }
  ],
  "isInviteOnly": "Boolean"
}
```

