---
title: "virtualEventsRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventsRoot resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventsRoots](../api/solutionsroot-list-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md) collection|Get a list of the [virtualEventsRoot](../resources/virtualeventsroot.md) objects and their properties.|
|[Create virtualEventsRoot](../api/solutionsroot-post-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Create a new [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Get virtualEventsRoot](../api/virtualeventsroot-get.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Read the properties and relationships of a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Update virtualEventsRoot](../api/virtualeventsroot-update.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Update the properties of a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Delete virtualEventsRoot](../api/solutionsroot-delete-virtualevents.md)|None|Delete a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[List events](../api/virtualeventsroot-list-events.md)|[virtualEvent](../resources/virtualevent.md) collection|Get the virtualEvent resources from the events navigation property.|
|[Create virtualEvent](../api/virtualeventsroot-post-events.md)|[virtualEvent](../resources/virtualevent.md)|Create a new virtualEvent object.|
|[List webinars](../api/virtualeventsroot-list-webinars.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|Get the virtualEventWebinar resources from the webinars navigation property.|
|[Create virtualEventWebinar](../api/virtualeventsroot-post-webinars.md)|[virtualEventWebinar](../resources/virtualeventwebinar.md)|Create a new virtualEventWebinar object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|events|[virtualEvent](../resources/virtualevent.md) collection|**TODO: Add Description**|
|webinars|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventsRoot",
  "id": "String (identifier)"
}
```

