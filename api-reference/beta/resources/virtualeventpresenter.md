---
title: "virtualEventPresenter resource type"
description: "Information about a virtual event presenter."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventPresenter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a presenter of a virtual event.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|email|String|Email address of the presenter.|
|id|String|Unique identifier of the presenter. Inherited from [entity](../resources/entity.md).|
|identity|[communicationsUserIdentity](../resources/communicationsuseridentity.md)|Identity information of the presenter.|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|Other detail information of the presenter.|

## JSON representation

The following is a JSON representation of the resource.
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
  "email": "String",
  "id": "String (identifier)",
  "identity": {
    "@odata.type": "microsoft.graph.communicationsUserIdentity"
  },
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  }
}
```
