---
title: "virtualEventPresenter resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventPresenter resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventwebinar-list-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md) collection|Get a list of the [virtualEventPresenter](../resources/virtualeventpresenter.md) objects and their properties.|
|[Create](../api/virtualeventwebinar-post-presenters.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md)|Create a new [virtualEventPresenter](../resources/virtualeventpresenter.md) object.|
|[Get](../api/virtualeventpresenter-get.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md)|Read the properties and relationships of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.|
|[Update](../api/virtualeventpresenter-update.md)|[virtualEventPresenter](../resources/virtualeventpresenter.md)|Update the properties of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.|
|[Delete](../api/virtualeventwebinar-delete-presenters.md)|None|Delete a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|identity|[identity](../resources/intune-identity.md)|**TODO: Add Description**|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventPresenter",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "id": "String (identifier)",
  "identity": {
    "@odata.type": "microsoft.graph.identity"
  },
  "email": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  }
}
```

