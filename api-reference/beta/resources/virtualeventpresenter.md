---
title: "virtualEventPresenter resource type"
description: "Represents information about a presenter of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventPresenter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a presenter of a virtual event.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|email|String|Email address of the presenter.|
|id|String|Unique identifier of the presenter. Inherited from [entity](../resources/entity.md).|
|identity|[identity](../resources/identity.md)|Identity information of the presenter. The supported identites are: [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|Other detail information of the presenter.|

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
  "identity": {"@odata.type": "microsoft.graph.identity"},
  "presenterDetails": {"@odata.type": "microsoft.graph.virtualEventPresenterDetails"}
}
```
