---
title: "displayTemplate resource type"
description: "A display template enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed."
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# displayTemplate resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A display template enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The text identifier for the display template. Example: contosoTickets|
|layout|[microsoft.graph.Json](../resources/externalconnectors-intune-json.md)|The definition of the content's appearance, represented by an [Adaptive Card](https://docs.microsoft.com/en-us/adaptive-cards/authoring-cards/getting-started), which is a JSON-serialized card object model.|
|priority|Int32|The integer priority of this display template. A display template with priority 1 is evaluated before that of a template of priority 4. Gaps in priority values are supported.|
|rules|[microsoft.graph.externalConnectors.propertyRule](../resources/externalconnectors-propertyrule.md) collection|Specifies additional rules for selecting this display template based on the item schema. Optional.|

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

