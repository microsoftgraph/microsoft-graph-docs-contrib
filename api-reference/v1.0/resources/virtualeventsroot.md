---
title: "virtualEventsRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventsRoot resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/solutionsroot-list-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md) collection|Get a list of the [virtualEventsRoot](../resources/virtualeventsroot.md) objects and their properties.|
|[Create](../api/solutionsroot-post-virtualevents.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Create a new [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Get](../api/virtualeventsroot-get.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Read the properties and relationships of a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Update](../api/virtualeventsroot-update.md)|[virtualEventsRoot](../resources/virtualeventsroot.md)|Update the properties of a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[Delete](../api/solutionsroot-delete-virtualevents.md)|None|Delete a [virtualEventsRoot](../resources/virtualeventsroot.md) object.|
|[List townhalls](../api/virtualeventsroot-list-townhalls.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md) collection|Get the virtualEventTownhall resources from the townhalls navigation property.|
|[Create virtualEventTownhall](../api/virtualeventsroot-post-townhalls.md)|[virtualEventTownhall](../resources/virtualeventtownhall.md)|Create a new virtualEventTownhall object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|events|[virtualEvent](../resources/virtualevent.md) collection|**TODO: Add Description**|
|townhalls|[virtualEventTownhall](../resources/virtualeventtownhall.md) collection|**TODO: Add Description**|
|webinars|[virtualEventWebinar](../resources/virtualeventwebinar.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
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

