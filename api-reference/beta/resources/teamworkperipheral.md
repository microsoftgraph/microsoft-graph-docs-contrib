---
title: "teamworkPeripheral resource type"
description: "Represents the details about the peripherals attached to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the peripherals attached to a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the peripheral.|
|id|String|Unique identifier for the particular peripheral. Inherited from [entity](../resources/entity.md).|
|productId|String|The product ID of the device. Each product from a vendor has its own ID.|
|vendorId|String|The unique identifier for the vendor of the device. Each vendor has a unique ID.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "displayName": "String",
  "id": "String (identifier)",
  "productId": "String",
  "vendorId": "String"
}
```

