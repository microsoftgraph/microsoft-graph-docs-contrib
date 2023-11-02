---
title: "virtualEventWebinar resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventWebinar resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventWebinars](../api/virtualeventsroot-list-webinars.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|Get a list of the [virtualEventWebinar](../resources/virtualeventwebinar.md) objects and their properties.|
|[Create virtualEventWebinar](../api/virtualeventsroot-post-webinars.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md)|Create a new [virtualEventWebinar](../resources/virtualeventwebinar.md) object.|
|[Get virtualEventWebinar](../api/virtualeventwebinar-get.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md)|Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.|
|[Update virtualEventWebinar](../api/virtualeventwebinar-update.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md)|Update the properties of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.|
|[Delete virtualEventWebinar](../api/virtualeventsroot-delete-webinars.md)|None|Delete a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.|
|[getByUserIdAndRole](../api/virtualeventwebinar-getbyuseridandrole.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|**TODO: Add Description**|
|[getByUserRole](../api/virtualeventwebinar-getbyuserrole.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|**TODO: Add Description**|
|[List registrations](../api/virtualeventwebinar-list-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|Get the virtualEventRegistration resources from the registrations navigation property.|
|[Create virtualEventRegistration](../api/virtualeventwebinar-post-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Create a new virtualEventRegistration object.|
|[List sessions](../api/virtualeventwebinar-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get the virtualEventSession resources from the sessions navigation property.|
|[Create virtualEventSession](../api/virtualeventwebinar-post-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md)|Create a new virtualEventSession object.|

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
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).|
|status|virtualEventStatus|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md).The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|registrations|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|**TODO: Add Description**|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.virtualEvent](../resources/virtualevent.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinar",
  "baseType": "microsoft.graph.virtualEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinar",
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
  ]
}
```

