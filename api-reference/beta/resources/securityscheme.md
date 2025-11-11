---
title: "securityScheme resource type"
description: "Defines a security scheme that can be used by the operations."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# securityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a security scheme that can be used by the operations.
This is an abstract type.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description for security scheme.|
|type|String|The type of the security scheme. Valid values are "apiKey", "http", "mutualTLS", "oauth2", "openIdConnect".|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.securityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityScheme",
  "type": "String",
  "description": "String"
}
```

