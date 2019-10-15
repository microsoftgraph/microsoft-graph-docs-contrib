---
title: "search: query"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# search: query

Executes the query specified in the request body. The search results are provided in the response.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Mail.Read, Files.Read.All, Calendars.Read, ExternalItem.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /search/query
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|requests|[searchRequest collection](../resources/searchrequest.md)|The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query.|

## Response

If successful, this method returns `200, OK` response code and a new [searchResponse](../resources/searchresponse.md) collection object in the response body.

## Search capabilities and limitations 

### Paging

Pagination is exposed through following two fields in the API:
- from: To indicate the start point; takes an integer value 
- size: To indicate the total number of results to be returned in the response; takes an integer value
- Defaults: from: 0 – size: 25
- Max page sizes:
  - Maximum results per page:
    - Event and message: 200 
    - DriveItem:
    - ExternalFile: 
    - ExternalItem: 
  - Maximum number of items which can be retrieved by paginating: 
    - Event and message: 1000 
    - DriveItem: 
    - ExternalFile: 
    - ExternalItem:
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
  
### Stored_Fields

This allows to specify which fields should be returned part of the response. The names to be used should the name of the retrievable Managed Property configured for the connection.  This is only applicable to ExternalItems. 

### Keyword Query Language (KQL)support

The API lets you specify a KQL clause in the query terms which lets you specify free text keywords, operators (AND, OR,…) and property restriction. The syntax and command you will be using will depend on the entityType you target in the searchRequest. 

Depending on the entityType, the searchable property vary:  
  - [message properties](https://docs.microsoft.com/en-us/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)
  - [driveItem properties](https://docs.microsoft.com/en-us/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)
  
### Error Handling 

Microsoft Search returns error responses as defined by [OData error object definition](http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_ErrorResponse), which will contains a JSON object containing a code and a message. 
        
Describe the know errors : bad requests.

## Common use cases 

- Search mail messages 
- Search calendar events 
- Search files
- Search connectors data 

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "search_query"
}-->

```http
POST https://graph.microsoft.com/v1.0/search/query
Content-type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "entityTypes-value"
      ],
      "contentSources": [
        "contentSources-value"
      ],
      "query": {
        "query_string": {
          "query": "query-value"
        }
      },
      "from": 99,
      "size": 99,
      "stored_fields": [
        "stored_fields-value"
      ],
      "enableTopResults": true
    }
  ]
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.searchResponse",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "value": [
    {
      "searchTerms": [
        "searchTerms-value"
      ],
      "hitsContainers": [
        {
          "hits": [
            {
              "_id": "_id-value",
              "_score": 99,
              "_sortField": "_sortField-value",
              "_summary": "_summary-value"
            }
          ],
          "total": 99,
          "moreResultsAvailable": true
        }
      ]
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "search: query",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
