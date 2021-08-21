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
|priority|Int32|An integer that determines the order of evaluation with respect to other templates. The evaluation is sequenced from least to greatest priority e.g. a priority of 4 will be evaluated before a priority of 7. Note: Gaps in priority are supported. For example, if a template has priority 1 and another template has priority 3, they will still be evaluated from least to greatest - regardless of whether a template exists with priority 2.|
|rules|[microsoft.graph.externalConnectors.propertyRule](../resources/externalconnectors-propertyrule.md) collection|These are a set of matching conditions that dictate when the template should be displayed. Rules are in the format of: "property (from the item schema)" + "operation" + "value(s)", with the option of specifying AND/OR in "valuesJoinedBy". For example, a rule could specify that "itemTitle" "contains" "contoso". Therefore, the template will not be displayed unless the item's "itemTitle" contained the value "contoso".|

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

