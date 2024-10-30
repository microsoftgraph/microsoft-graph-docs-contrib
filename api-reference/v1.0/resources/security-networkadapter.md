---
title: "networkAdapter resource type"
description: "Represents the network adapter from which the Microsoft Defender for Identity sensor analyzes network traffic."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 10/29/2024
---

# networkAdapter resource type

Namespace: microsoft.graph.security

Represents the network adapter from which the Microsoft Defender for Identity sensor analyzes network traffic.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier that represents the network adapter.|
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
