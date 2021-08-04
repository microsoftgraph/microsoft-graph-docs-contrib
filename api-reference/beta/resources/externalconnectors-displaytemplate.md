---
title: "displayTemplate resource type"
description: "**TODO: Add Description**"
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# displayTemplate resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|layout|[microsoft.graph.Json](../resources/externalconnectors-intune-json.md)|**TODO: Add Description**|
|priority|Int32|**TODO: Add Description**|
|rules|[microsoft.graph.externalConnectors.propertyRule](../resources/externalconnectors-propertyrule.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.displayTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.displayTemplate",
  "id": "String (identifier)",
  "rules": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.propertyRule"
    }
  ],
  "layout": {
    "@odata.type": "microsoft.graph.Json"
  },
  "priority": "Integer"
}
```

