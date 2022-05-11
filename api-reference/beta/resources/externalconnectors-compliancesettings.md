---
title: "complianceSettings resource type"
description: "Collects all configurable settings related to compliance over connector content."
author: "emzho"
ms.localizationpriority: normal
ms.prod: "search"
doc_type: resourcePageType
---

# complianceSettings resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Collects all configurable settings related to compliance over connector content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eDiscoveryResultTemplates|[microsoft.graph.externalConnectors.displayTemplate](../resources/externalconnectors-displaytemplate.md) collection|Enables the developer to define the appearance of the content and configure conditions that dictate when the template should be displayed.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.complianceSettings"
}
-->
``` json
{
  "eDiscoveryResultTemplates": [
    {
      "id": "String (identifier)",
      "rules": [
        {
          "property": "itemSeverity",
          "operation": "equals",
          "valuesJoinedBy": "and",
          "values": [
              "2"
          ]
        }
      ],
      "layout": {"type": "AdaptiveCard"},
      "priority": 2
    }
  ]
}
```

