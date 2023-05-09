---
title: "displayTemplate resource type"
description: "Defines the appearance of the content and the conditions that dictate when the template should be displayed."
author: "emzho"
ms.localizationpriority: normal
ms.prod: "search"
doc_type: resourcePageType
---

# displayTemplate resource type

Namespace: microsoft.graph.externalConnectors

Defines the appearance of the content and the conditions that dictate when the template should be displayed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The text identifier for the display template; for example, `contosoTickets`. Maximum 16 characters. Only alphanumeric characters allowed. |
|layout|[microsoft.graph.Json](../resources/intune-mam-json.md)|The definition of the content's appearance, represented by an [Adaptive Card](/adaptive-cards/authoring-cards/getting-started), which is a JSON-serialized card object model.|
|priority|Int32|Defines the priority of a display template. A display template with priority 1 is evaluated before a template with priority 4. Gaps in priority values are supported. Must be positive value.|
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
      "id": "String",
      "layout": {"type": "AdaptiveCard","version": "1.0","body": [{"type": "TextBlock","text": "String"}]},
      "priority": 0,
      "rules": [
        {
          "property": "String",
          "operation": "String",
          "valuesJoinedBy": "String",
          "values": [
              "String",
              "String"
          ]
        }
      ]      
    }
```
