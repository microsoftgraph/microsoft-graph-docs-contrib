---
title: "virtualEventPresenter resource type"
description: "Represents information about a presenter of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventPresenter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a presenter of a virtual event.

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Create](../api/virtualevent-post-presenters.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Create a new [virtualEventPresenter](../resources/virtualeventpresenter.md) object. |
| [Get](../api/virtualeventpresenter-get.md) | [virtualEventPresenter](../resources/virtualeventpresenter.md) | Read the properties and relationships of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object. |
| [Delete](../api/virtualeventpresenter-delete.md) | [virtualEventPresenter](../resources/virtualeventpresenter.md) | Delete a [virtualEventPresenter](../resources/virtualeventpresenter.md) object. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| email | String | Email address of the presenter. |
| id | String | Unique identifier of the presenter. Inherited from [entity](../resources/entity.md). |
| identity | [communicationsUserIdentity](../resources/communicationsuseridentity.md)| Identity information of the presenter. |
| presenterDetails | [virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)| Other detail information of the presenter. |

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
  "email": "String",
  "id": "String (identifier)",
  "identity": {"@odata.type": "microsoft.graph.communicationsUserIdentity"},
  "presenterDetails": {"@odata.type": "microsoft.graph.virtualEventPresenterDetails"}
}
```
