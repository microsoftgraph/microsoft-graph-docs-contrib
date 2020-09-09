---
title: "searchHit resource type"
description: "Description of searchHit entity"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!WARNING]
> some properties below were renamed. See [more details here](search-api-overview?view=graph-rest-beta#schema-change-deprecation-warning). See [more details here](search-api-overview?view=graph-rest-beta#schema-change-deprecation-warning).

Represent a single result within the list of search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|_id|String|**Deprecated** . Renamed as **hitId**. The internal identifier for the item.|
|hitId|String|The internal identifier for the item.|
|_score|Int32|**Deprecated**. Renamed as **rank**. The score or the order of the result.|
|rank|Int32|The rank or the order of the result.|
|_summary|String|**Deprecated**. Renamed as **summary**. A summary of the result (if summary is available).|
|summary|String|A summary of the result (if summary is available).|
|contentSource|String|The name of the contentSource which the **externalItem** is part of .|
|_source|[entity](entity.md)|**Deprecated**. Renamed as **resource**. The underlying Graph representation of the search result.|
|resource|[entity](entity.md)|The underlying Graph representation of the search result.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchHit",
  "baseType": null
}-->

```json
{
  "hitId": "String",
  "rank": 1,
  "summary": "String",
  "contentSource": "String",
  "resource": { "@odata.type": "microsoft.graph.entity" }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchHit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->