---
title: "networkAdapter resource type"
description: "Network adapters that are used for communication"
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# networkAdapter resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the network adapter from which the Microsoft Defender for Identity sensor analyzes network traffic.

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier that represents the network adapter. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the network adapter is selected for capturing and analyzing network traffic.|
|name|String|The name of the network adapter.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.networkAdapter",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.networkAdapter",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "name": "String"
}
```
