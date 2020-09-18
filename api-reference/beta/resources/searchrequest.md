---
title: "searchRequest resource type"
description: "The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

A search request formatted in a JSON blob. 

The JSON blob contains the types of resources expected in the response, the underlying sources, paging parameters, sort options, requested aggregations and fields, and actual search query. See [examples](#see-also) of search requests on various resources.

> [!NOTE]
> Be aware of [known limitations](search-api-overview.md#known-limitations) on searching specific combinations of entity types, and sorting or aggregating search results.


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|:------------|
|aggregations|[aggregationOption](aggregationOption.md) collection|Specifies which aggregations (also known as refiners) to be retuned alongside the search results. Optional.|
|aggregationFilters|String collection|Contains the list of **aggregationsFilterToken** obtained from the [searchBucket](searchBucket.md) which will filter search results to those contained in the specified bucket. Optional.|
|contentSources|String collection|Contains the connection to be targeted. <br>Respects the following format : `/external/connections/connectionid` where `connectionid` is the ConnectionId defined in the Connectors Administration. <br> Note : contentSource is only applicable when entityType=`externalItem`. Optional.|
|enableTopResults|Boolean|This triggers hybrid sort for messages : the first 3 messages are the most relevant. This property is only applicable to entityType=`message`. Optional.|
|entityTypes|entityType collection| One or more types of resources expected in the response. Possible values are: `list`, `site`, `listItem`, `message`, `event`, `drive`, `driveItem`, `externalItem`. See [known limitations](search-api-overview.md#known-limitations) for those combinations of two or more entity types that are supported in the same search request. Required.|
|fields|String collection |Contains the fields to be returned for earch resource object specified in **entityTypes**, allowing customization of the fields returned by default otherwise, including additional fields such as custom managed properties from SharePoint and OneDrive, or custom fields in **externalItem** from content ingested by Graph connectors. Optional.|
|from|Int32|Specifies the offset for the search results. Offset 0 returns the very first result. Optional.|
|query|[searchQuery](searchquery.md)|Contains the query terms. Required.|
|size|Int32|The size of the page to be retrieved. Optional.|
|sortProperties|[sortProperty](sortProperty.md) collection|Contains the ordered collection of fields and direction to sort results. There can be at most 5 sort properties in the collection. Optional.|
|stored_fields (deprecated)|String collection |This is now replaced by the **fields** property. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchRequest",
  "baseType": null
}-->

```json
{
  "entityTypes": ["String"],
  "contentSources": ["String"],
  "query": {"@odata.type": "microsoft.graph.searchQuery"},
  "from": 1024,
  "size": 1024,
  "fields": ["String"],
  "sortProperties": [{"@odata.type": "microsoft.graph.sortProperty"}],
  "aggregations": [{"@odata.type": "microsoft.graph.aggregationOption"}],
  "aggregationFilters": ["String"],
  "enableTopResults": true,
  "stored_fields": ["String"]
}
```

## See also
- Search [mail messages](/graph/search-concept-messages)
- Search [calendar events](/graph/search-concept-events)
- Search content in SharePoint and OneDrive ([files, lists and sites](/graph/search-concept-files))
- Search [custom types (Graph Connectors)](/graph/search-concept-custom-types) data
- [Sort](/graph/search-concept-sort) search results
- Use [aggregations](/graph/search-concept-aggregations) to refine search results


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


