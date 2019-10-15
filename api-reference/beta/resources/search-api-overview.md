---
title: "Use the Microsoft Search query API (preview)"
description: "Microsoft Search query API in Graph enables developers to search their data within Office 365 in a unified way"
localization_priority: Priority
author: "nmoreau"
ms.prod: "search"
doc_type: resourcePageType
---

# Use the Microsoft Search query API (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Search API in Graph, developers can search data in Office 365 within their Apps, in the context of the end user.

## Common use cases

The Search query API provides a method (/query) to search across your data in Microsoft Search.

Search requests are executed on behalf of user. Search results are trimmed down to enforce any ACL applied to the items.  

<!---TODO nmoreauteam Fix the links below to the See also + to the /search/query-->

| Use Cases | <p align="center">Rest resource and action</p>| <p align="center">See also</p>|
|:------------------|:---------|:-----------|
|[Search for a specific entityType](#Entity-scoping)| <p align="center">/search/query </p> | <p align="center">EntityTypes</p> |
|[Page results](#Paging) | <p align="center">/search/query</p> | <p align="center">From and Size</p> |
|[Get the most relevant emails](#Most-relevant-emails) | <p align="center">/search/query</p> | <p align="center">EnableTopResults</p> |
|[Retrieve selected properties](#Stored_Fields) | <p align="center">/search/query</p> | <p align="center">stored_fieds</p> | <p align="center">  </p> |
|[Use KQL in query terms](#Keyword-Query-Language-(KQL)-support)| <p align="center">/search/query</p> | <p align="center">searchQueryString</p> |
|[Search external Files](https://fixme.org)| <p align="center">/search/query</p> | <p align="center">EntityTypes</p> | <!---TODO nmoreauteam Fix the links to the sample page --->
|[Search within a specific contentSource (Indexing API)](https://fixme.org)| <p align="center">/search/query</p> | <p align="center">contentSources</p> | <!---TODO nmoreauteam Fix the links to the sample page --->

### Entity scoping

The scope of the search request is defined in the entityTypes field in the Json request.
The possible values are availabl

### Paging

Pagination is exposed through following two fields in the API:

- from: To indicate the start point; takes an integer value

- size: To indicate the total number of results to be returned in the response; takes an integer value

- Defaults: from: 0 – size: 25

- Max page sizes:
  - Maximum results per page:
    - Event and message: 200
  - Maximum number of items which can be retrieved by paginating:
    - Event and message: 1000
  - Going beyond the limits doesn’t end up in BadRequest, the service returns best effort response in such cases.
- Ideal use-case:
  - Request for a smaller first page as the first request, eg: from: 0 and size: 25
  - Paginate for subsequent pages by just updating the from and size attributes, fine with increasing the page size in each subsequent request, ex:
    - Page 1: from – 0 and size – 25 
    - Page 2: from – 25 and size – 50
    - Page 3: from – 75 and size – 75
    - Page 4: from – 150 and size – 100
- Error cases:
  - It’s a 400 BadRequest error if the first page request comes with a non-zero offset for message/event 

### Most relevant emails

The search request lets you specify for message "EnableTopResults" which will returned a relevance sorted list of search results for your emails.

### Stored_Fields

This property is only applicable to externalItems.
This allows to specify which fields should be returned part of the response.
The names to be used should the name of the retrievable Managed Property configured for the connection.  

### Keyword Query Language (KQL) support

The API lets you specify a KQL clause in the query terms which lets you specify free text keywords, operators (AND, OR,…) and property restriction. The syntax and command you will be using will depend on the entityType you target in the searchRequest.

Depending on the entityType, the searchable property vary:  
  - [message properties](https://docs.microsoft.com/en-us/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)
  - [driveItem properties](https://docs.microsoft.com/en-us/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)
  
### Error Handling 

Microsoft Search returns error responses as defined by [OData error object definition](http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_ErrorResponse), which will contains a JSON object containing a code and a message.

<!---TODO Describe the know errors : bad requests.--->


## Known limitations

The query API has the following limitations during the preview

- The service support sending only a single searchRequest eventhough the API support passing a collection of searchRequest
<!--todo nmoreauteam Fix the link to searchRequest--->

- A given searchRequest supports passing multiple entityTypes. Currently the only supported combination is driveItem and externalFiles. Other combinations are invalid. 
<!--todo nmoreauteam Fix the link to searchRequest--->

- ContentSource is currently only applicable when entityType = ExternalItem to define the connection to use. 
<!--todo nmoreauteam Fix the link to ContentSource--->

- Sorting : the API currently does not expose different ways to sort results.  

  - Message and Event are sorted by date.  

  - DriveItems, ExternalFiles, and ExternalItems are sorted by relevance
