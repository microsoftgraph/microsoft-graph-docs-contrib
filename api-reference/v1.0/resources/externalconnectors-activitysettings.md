---
title: "activitySettings resource type"
description: "Collects configurable settings related to activities involving connector content."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# activitySettings resource type

Namespace: microsoft.graph.externalConnectors

Collects configurable settings related to activities involving connector content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|urlToItemResolvers|[microsoft.graph.externalConnectors.urlToItemResolverBase](../resources/externalconnectors-urltoitemresolverbase.md) collection|Specifies configurations to identify an **externalItem** based on a shared URL.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.activitySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.activitySettings",
  "urlToItemResolvers": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.urlToItemResolverBase"
    }
  ]
}
```
