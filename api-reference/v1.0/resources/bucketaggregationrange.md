---
title: "search: bucketaggregationrange"
description: "Enables to specify some manual ranges in the aggregation request. This in only applicable to non string refiners : numeric and dates. SEARCHAPI1.0"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# bucketaggregationrange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enables to specify some manual ranges in the aggregation request. This in only applicable to non string refiners : numeric and dates.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|from|String| Defines the lower bound from which the aggregation will be computed. This can be a numeric value or a date specified in this format TODOSEARCHAPI |
|to|String| Defines the lower bound from which the aggregation will be computed. This can be a numeric value or a date specified in this format TODOSEARCHAPI|

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "from": "String",
  "to": "String",  
}
```
