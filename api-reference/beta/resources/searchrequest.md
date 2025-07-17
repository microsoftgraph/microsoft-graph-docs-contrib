---
title: "searchRequest resource type"
description: "The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request, and the actual search query."
ms.localizationpriority: medium
author: "njerigrevious"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# searchRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

A search request formatted in a JSON blob. 

The JSON blob contains the types of resources expected in the response, the underlying sources, paging parameters, sort options, requested aggregations and fields, and the actual search query. See [examples](#related-content) of search requests on various resources.

> [!NOTE]
> Be aware of [known limitations](search-api-overview.md#known-limitations) on searching specific combinations of entity types, and sorting or aggregating search results.

## Properties

| Property     | Type        | Description             
|:-------------|:------------|:------------
|aggregations|[aggregationOption](aggregationOption.md) collection|Specifies aggregations (also known as refiners) to be returned alongside search results. Optional.|
|aggregationFilters|String collection|Contains one or more filters to obtain search results aggregated and filtered to a specific value of a field. Optional.<br>Build this filter based on a prior search that aggregates by the same field. From the response of the prior search, identify the [searchBucket](searchBucket.md) that filters results to the specific value of the field, use the string in its **aggregationFilterToken** property, and build an aggregation filter string in the format **"{field}:\\"{aggregationFilterToken}\\""**. <br>If multiple values for the same field need to be provided, use the strings in its **aggregationFilterToken** property and build an aggregation filter string in the format **"{field}:or(\\"{aggregationFilterToken1}\\",\\"{aggregationFilterToken2}\\")"**. <br>For example, searching and aggregating drive items by file type returns a **searchBucket** for the file type `docx` in the response. You can conveniently use the **aggregationFilterToken** returned for this **searchBucket** in a subsequent search query and filter matches down to drive items of the `docx` file type. [Example 1](/graph/search-concept-aggregation#example-1-request-aggregations-by-string-fields) and [example 2](/graph/search-concept-aggregation#example-2-apply-an-aggregation-filter-based-on-a-previous-request) show the actual requests and responses.|
|collapseProperties|[collapseProperty](collapseproperty.md) collection|Contains the ordered collection of fields and limit to collapse results. Optional.|
|contentSources|String collection|Contains the connection to be targeted. <br>Respects the following format: `/external/connections/connectionid` where `connectionid` is the ConnectionId defined in the connectors administration. <br> Note: contentSource is only applicable when entityType=`externalItem`. Optional.|
|enableTopResults|Boolean|This triggers hybrid sort for messages: the first 3 messages are the most relevant. This property is only applicable to entityType=`message`. Optional.|
|entityTypes|entityType collection| One or more types of resources expected in the response. Possible values are: `list`, `site`, `listItem`, `message`, `event`, `drive`, `driveItem`, `person`, `externalItem`, `acronym`, `bookmark`, `chatMessage`. For details about combinations of two or more entity types that are supported in the same search request, see [known limitations](search-api-overview.md#known-limitations). Required.|
|fields|String collection |Contains the fields to be returned for each resource object specified in **entityTypes**, allowing customization of the fields returned by default otherwise, including additional fields such as custom managed properties from SharePoint and OneDrive, or custom fields in **externalItem** from content that Microsoft 365 Copilot connectors bring in. <br>The fields property can be using the [semantic labels](/microsoftsearch/configure-connector#step-5-assign-property-labels) applied to properties. For example, if a property is labeled as title, you can retrieve it using the following syntax : label_title.<br>Optional.|
|from|Int32|Specifies the offset for the search results. Offset 0 returns the very first result. Optional.|
|query|[searchQuery](searchquery.md)|Contains the query terms. Required.|
|queryAlterationOptions|[searchAlterationOptions](searchalterationoptions.md)|Provides query alteration options formatted as a JSON blob that contains two optional flags related to spelling correction. Optional. |
|region|string|Required for searches that use application permissions. Represents the geographic location for the search. For details, see [Get the region value](/graph/search-concept-searchAll). |
|resultTemplateOptions|[resultTemplateOption](resultTemplateOption.md) collection|Provides the search result templates options for rendering connectors search results.|
|sharePointOneDriveOptions|[sharePointOneDriveOptions](sharePointOneDriveOptions.md)|Indicates the kind of content to be searched when a search is performed using application permissions. Optional.|
|size|Int32|The size of the page to be retrieved. The maximum value is 500. Optional.|
|sortProperties|[sortProperty](sortProperty.md) collection|Contains the ordered collection of fields and direction to sort results. There can be at most 5 sort properties in the collection. Optional.|
|trimDuplicates|Boolean|Indicates whether to trim away the duplicate SharePoint files from search results. The default value is `false`. Optional.|
|stored_fields (deprecated)|String collection |This is now replaced by the **fields** property. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchRequest",
  "baseType": null
}-->

```json
{
  "aggregationFilters": ["String"],
  "aggregations": [{"@odata.type": "microsoft.graph.aggregationOption"}],
  "contentSources": ["String"],
  "enableTopResults": true,
  "entityTypes": ["String"],
  "fields": ["String"],
  "from": 1024,
  "query": {"@odata.type": "microsoft.graph.searchQuery"},
  "queryAlterationOptions": {"@odata.type": "microsoft.graph.searchAlterationOptions"},
  "region": "63128164-cbbf-4db4-896c-a7038417019c",
  "resultTemplateOptions": [{"@odata.type": "microsoft.graph.resultTemplateOption"}],
  "sharePointOneDriveOptions": {"@odata.type": "microsoft.graph.sharePointOneDriveOptions"},
  "size": 1024,
  "sortProperties": [{"@odata.type": "microsoft.graph.sortProperty"}],
  "collapseProperties": [{"@odata.type": "microsoft.graph.collapseProperty"}],
  "trimDuplicates": false
}
```

## Related content
- [Use query templates](/graph/search-concept-query-template)
- [Search mail messages](/graph/search-concept-messages)
- [Search calendar events](/graph/search-concept-events)
- [Search person](/graph/search-concept-person)
- [Search content in SharePoint and OneDrive](/graph/search-concept-files) (files, lists, and sites)
- [Search custom types imported using connectors](/graph/search-concept-custom-types)
- [Sort search results](/graph/search-concept-sort)
- [Collapse search results](/graph/search-concept-collapse)
- [Trim duplicate search results](/graph/search-concept-trim-duplicate) 
- [Use aggregations](/graph/search-concept-aggregation) to refine search results
- [Use display layout](/graph/search-concept-display-layout)
- [Enable spell corrections](/graph/search-concept-speller) in search results
- [Search SharePoint content with application permissions](/graph/search-concept-searchAll)


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
