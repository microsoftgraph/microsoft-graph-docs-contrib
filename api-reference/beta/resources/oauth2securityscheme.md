---
title: "oAuth2SecurityScheme resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# oAuth2SecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [securityScheme](../resources/securityscheme.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description** Inherited from [securityScheme](../resources/securityscheme.md).|
|flows|[oAuthFlows](../resources/oauthflows.md)|**TODO: Add Description**|
|type|String|**TODO: Add Description** Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuth2SecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuth2SecurityScheme",
  "type": "String",
  "description": "String",
  "flows": {
    "@odata.type": "microsoft.graph.oAuthFlows"
  }
}
```

