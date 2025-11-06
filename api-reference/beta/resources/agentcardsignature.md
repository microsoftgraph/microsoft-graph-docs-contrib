---
title: "agentCardSignature resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentCardSignature resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|header|[jwsHeader](../resources/jwsheader.md)|**TODO: Add Description**|
|protected|String|**TODO: Add Description**|
|signature|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentCardSignature"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCardSignature",
  "protected": "String",
  "signature": "String",
  "header": {
    "@odata.type": "microsoft.graph.jwsHeader"
  }
}
```

