---
title: "search: searchHitsBucket"
description: "Provides for a specific aggregation in the response, the value of a particular bucket."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHitsBucket resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides for a specific aggregation in the response, the value of a particular bucket.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|key|String| The discrete value of the field|
|count|Int32| The number of matches where the field as the key value.
|aggregationsFilterToken|String| A token containing the encoded filter value to matching the field. In order to send the filter, the token should be passed in the `aggregationFilter` in the `searchRequest` with the format FieldName: aggregationsFilterToken TODOSEARCHAPI Clarify - We will need to add some examples of refiners in this page : searchrequest.md|

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "key": "String",
  "count": "10",  
  "aggregationFilter": "String"
}
```
