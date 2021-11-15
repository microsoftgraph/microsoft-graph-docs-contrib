---
title: "teamworkPeripheral resource type"
description: "Details about the peripheral."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details about the peripherals attached to the device.

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the peripheral.|
|id|String|Id for the particular peripheral. Inherited from [entity](../resources/entity.md).|
|productId|String|Product Id for the device. Each product from the vendor has its own id.|
|vendorId|String|Id of the vendor of the device. Each vendor has a unique id.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkPeripheral",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkPeripheral",
  "id": "String (identifier)",
  "displayName": "String",
  "vendorId": "String",
  "productId": "String"
}
```

