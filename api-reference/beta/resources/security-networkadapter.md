---
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

For Defender for Identity sensors, network adapters that are used for communication with other computers in your organization.
For Defender for Identity standalone sensor on a dedicated server, network adapters that are configured as the destination mirror port. These network adapters receive the mirrored domain controller traffic.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier that represents the network adapter.|
|isEnabled|Boolean|Is the network adapter enabled.|
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