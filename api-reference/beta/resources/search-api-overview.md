---
title: "Use the Microsoft Search API to query data"
description: "Using the search API, apps can search Microsoft 365 data in the context of the authenticated user"
localization_priority: Priority
author: "nmoreau"
ms.prod: "search"
doc_type: resourcePageType
---

# Use the Microsoft Search API to query data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the Microsoft Search API to query Microsoft 365 data in your apps.

Search requests run in the context of the signed-in user, identified using an [access token with delegated permissions](/graph/auth-v2-user).

>[!WARNING]
>The API Schema has changed : some properties in the request and response are deprecated. See [more details here].(search-api-overview#schema-change-deprecation-warning).

## Common use cases

The Microsoft Search API provides a [query](../api/search-query.md) method to search across your data in Microsoft Search, where you pass in the request Body a [searchRequest](searchRequest.md) which defines the specific of your search query.

This section lists the common use cases, based on the properties and parameters you set in the **query** [searchRequest](searchRequest.md) body.

Search requests run on behalf of the user. Search results are scoped to enforce any access control applied to the items.  For example, in the context of files, permissions on the files are evaluated as part of the search request. Users cannot access more items in a search than they can from the enumeration API.

| Use cases | Properties to define in the query request body |
|:------------------|:---------|
|[Scope search results based on entity types](#scope-search-based-on-entity-types)| **entityTypes** |
|[Page results](#page-search-results) | **from** and **size** |
|[Get the most relevant emails](#get-the-most-relevant-emails) | **enableTopResults** |
|[Get selected properties](#get-selected-properties) | **fields** |
|[Use KQL in query terms](#keyword-query-language-kql-support) | **query** |
|[Sort search results](#sort-search-results)| **sort** |
|[Refine results using aggregations](#refine-results-using-aggregations)| **aggregations** |
|[Search across Graph connectors](/graph/search-concept-custom-types)| **contentSources** |

## Scope search based on entity types

Define the scope of the search request using the **entityTypes** property in the **query** request payload.
The following table describes the types available to query and any of the permission required to access the data .

| EntityType | Permission scope required to access the items| Source| Comment|
|:------------------|:---------|:---------|:---------|
|[message](message.md)|Mail.Read, Mail.ReadWrite| Exchange| emails|
|[event](event.md) |Calendars.Read, Calendars.ReadWrite| Exchange|calendar events |
|[driveItem](driveitem.md)|Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | files, folders, pages, news |
|[drive](drive.md)|Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All| SharePoint | Document Libraries|
|[list](list.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | Lists. Note that Document Libraries will also be returned under **list** |
|[listItem](listitem.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | ListItems. Note that Files and folders will also be returned under **listItem** since this is the super class of **driveItem**. In that case |
|[site](site.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint | Sites in SharePoint|
|[externalItem](externalitem.md)|ExternalItem.Read.All| Connectors| All content ingested with the Graph Connectors Platform|

## Page search results

Control pagination of the search results by specifying the following two properties in the **query** request body:

- **from** - An integer that indicates the 0-based starting point to list search results on the page. The default value is 0.

- **size** - An integer that indicates the number of results to be returned for a page. The default value is 25.

Note the following limits if you're searching the **event** or **message** entity:

- **from** must start at zero in the first page request; otherwise, the request results in an HTTP 400 `Bad request`.
- The maximum results per page (**size**) is 200.
- The maximum total number of items that can be returned by paginating is 1000.
- Going beyond the limits returns a best effort response. The request does not result in an HTTP 400.

Best practices:

- Specify a smaller first page in the initial request. For example, specify **from** as 0, **size** as 25.
- Paginate subsequent pages by updating the **from** and **size** properties. You can increase the page size in each subsequent request. The following table shows an example.

    | Page | from | size |
    |:-----|:-----|:-----|
    | 1    | 0 | 25 |
    | 2    | 25 | 50 |
    | 3    | 75 | 75 |
    | 4    | 150 | 100 |

## Get the most relevant emails

When searching the **message** entity, specifying **enableTopResults** as `true` returns a hybrid list of messages: the first three messages in the response are sorted by relevance; the remaining messages are sorted by date.

## Get selected properties

When searching each kind of entity type, such as `list`, `site`, `listItem`, `message`, `event`, `drive`, `driveItem`, `externalItem`, you can specify the **fields** property to specify the fields to be returned in the response. This is equivalent to the [select parameter](/graph/query-parameters#select-parameter) in the REST calls. For search does not support any of those parameters since the behavior is expressed in the POST Body.

For all these entity types, this will enable to trim down the fields returned in the response (typically to optimize the over the wire payload).

For **externalItem** and **listItem** entity, they are the only entities which enable you to retrieve extended fields configured in the schema. For example, if you created a field for **externalItem** in the search schema, or if you have a custom column on a **listItem**, you will be able to retrieve these properties from search. You will not be able to retrieve the extended properties from all other entities. If you need to retrieve an extended property on a file, then you will have to specify the listItem type in the request to do so.

if the **fields** don't exist, they will be returned as empty in the **fields** in the response.

## Keyword Query Language (KQL) support

Specify free text keywords, operators (such as `AND`, `OR`), and property restrictions in KQL syntax in the actual search query string (**query** property of the **query** request body). The syntax and command depend on the entity types (in the **entityTypes** property) you target in the same **query** request body.

Depending on the entity type, the searchable properties vary. For details, see:

- [Email properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-email-properties)
- [Site properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)

## Sort search results

Search results in the response are sorted with the following default sort order :
  - **message** and **event** are sorted by date
  - All SharePoint, OneDrive and Connectors types are sorted by relevance

The search API call let you customize the search order by specifying the **sortProperties** on the [searchRequest](./searchrequest.md).
You will be able to specify a list one or many sortable properties, and the sort order.

Note that sorting results is currently only supported on the following SharePoint and OneDrive types : [driveItem](driveitem.md), [listItem](listitem.md), [list](list.md), [site](site.md)

The properties on which the sort clause are applied need to be sortable in the SharePoint [search schema](https://docs.microsoft.com/sharepoint/manage-search-schema). If the property is not sortable, the response will return a Bad Request. Note that **relevance** is not a valid [sortProperty](sortproperty.md) name.

When specifying a the [sortProperty](sortproperty.md) name, you can either provide the property name from the Microsoft Graph type (ex : [driveItem](driveitem.md)), or the name of the managed property in the search index.

This [page](/graph/search-concept-sort) provides several examples how to sort results.

## Refine results using aggregations

Aggregations (aka Refiners in the SharePoint semantic) are a very popular way to enhance a search experience. They provide, in addition to the results, some level of aggregate information on the matching set of search results. For example, you are able to provide information on who are the most represented authors of documents matching the query, or what are the most represented file types, etc.

In the [searchRequest](./searchrequest.md), you are able to express which aggregations should be returned, in addition to the search results. The description of each aggregation is defined in the the [aggregationOption](./aggregationoption.md), which specifies on which property the aggregation should be computed, the number of [searchHitsBucket](searchHitsBucket.md) to be returned in the response.

Once the response is returned containing the collection of [searchHitsBucket](searchHitsBucket.md), it is possible to refine the search request to only the matching elements contained in one [searchHitsBucket](searchHitsBucket.md). This is achieved by passing back the  **aggregationsFilterToken** value in the subsequent [searchRequest](./searchrequest.md)  **aggregationFilters**

Aggregations are currently only supported on the following SharePoint and OneDrive types : [driveItem](driveitem.md), [listItem](listitem.md), [list](list.md), [site](site.md). They will soon be supported for Graph Connectors[externalItem](externalItem.md) refinable properties.

The properties on which the aggregation is requested need to be refinable in the SharePoint [search schema](https://docs.microsoft.com/sharepoint/manage-search-schema). If the property is not sortable, the response will return a Bad Request. Note that **relevance** is a valid [sortProperty](sortproperty.md) name.

This [page](/graph/search-concept-aggregation) provides several examples how to use aggregation to enhance search results, and to narrow down search results.

## Error handling

The search API returns error responses as defined by [OData error object definition](http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_ErrorResponse), each of which is a JSON object containing a code and a message.

<!---TODOSEARCHAPI Describe the know errors : bad requests.--->

## Known limitations

The search API has the following limitations:

- The **query** method is defined to allow passing a collection of one or more **searchRequest** instances at once. However, the service currently supports only a single [searchRequest](./searchrequest.md) at a time.

- The [searchRequest](./searchrequest.md) resource supports passing multiple types of entities at a time. However, currently the only supported combination is for Sharepoint and OneDrive entityTypes : **driveItem**, **drive**, **site**, **list**, **listItem**.
Any combination involving **messages**, **events**, Sharepoint and OneDrive types , or **externalItem** is currently not supported.  

- The **contentSource** property, which defines the connection to use, is only applicable when **entityType** is specified as `externalItem`.

- The search API does not support custom sort for **message**, **event** or  **externalItem**.

- The search API does not support aggregations for **message**, **event**, **drive**, or **externalItem**.

## Schema change deprecation warning

Some properties in the request and response have been renamed and are deprecated.

The schema changes for the request are :  
- [searchRequest](./searchrequest.md) **stored_fields** property becomes **fields**. 

- [searchQuery](./searchquery.md) now has a new string property **queryString** which contains the query string you want to pass. The **query_string** property on [searchQuery](./searchquery.md) and the [searchQueryString](./searchquerystring.md)  type are be deprecated.

The schema changes for the response are :

- [searchHit](./searchhit.md) following properties **_id**, **_score**, **_summary** and **_sources** have been renamed respectively to **hitId**, **rank**, **summary** and **resource**. 

In order to ensure a backward compatibility, the older schema will still be functional until end of 2020.
You will need to use the new property names and types in the request to get the new property names in the response.
The older properties names and types will be  removed by the end of calendar year 2020.


## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.