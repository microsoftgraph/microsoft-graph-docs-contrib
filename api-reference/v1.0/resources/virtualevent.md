---
title: "virtualEvent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEvent resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventsroot-list-events.md)|[virtualEvent](../resources/virtualevent.md) collection|Get a list of the [virtualEvent](../resources/virtualevent.md) objects and their properties.|
|[Create](../api/virtualeventsroot-post-events.md)|[virtualEvent](../resources/virtualevent.md)|Create a new [virtualEvent](../resources/virtualevent.md) object.|
|[Get](../api/virtualevent-get.md)|[virtualEvent](../resources/virtualevent.md)|Read the properties and relationships of a [virtualEvent](../resources/virtualevent.md) object.|
|[Update](../api/virtualevent-update.md)|[virtualEvent](../resources/virtualevent.md)|Update the properties of a [virtualEvent](../resources/virtualevent.md) object.|
|[Delete](../api/virtualeventsroot-delete-events.md)|None|Delete a [virtualEvent](../resources/virtualevent.md) object.|
|[publish](../api/virtualevent-publish.md)|None|**TODO: Add Description**|
|[cancel](../api/virtualevent-cancel.md)|None|**TODO: Add Description**|
|[List presenters](../api/virtualevent-list-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|Get the virtualEventPresenter resources from the presenters navigation property.|
|[Create virtualEventPresenter](../api/virtualevent-post-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md)|Create a new virtualEventPresenter object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[communicationsIdentitySet](../resources/communicationsidentityset.md)|**TODO: Add Description**|
|description|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|status|virtualEventStatus|**TODO: Add Description**.The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|presenters|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|**TODO: Add Description**|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|**TODO: Add Description**|

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

