---
title: "search: query"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "apiPageType"
---

# Query

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Executes the query specified in the request body. Search results are provided in the response.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Mail.Read, Files.Read.All, Calendars.Read, ExternalItem.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

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
|requests|[searchRequest collection](../resources/searchrequest.md)|The search request to be sent to the query endpoint formatted in a Json blob. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query.|

## Response

If successful, this method returns `200, OK` response code and a [searchResponse](../resources/searchresponse.md) collection object in the response body.

## Common use cases 

- Search [mail messages](../../../concepts/search-concept-messages.md)
- Search [calendar events](../../../concepts/search-concept-events.md)
- Search [files](../../../concepts/search-concept-files.md)
- Search [custom types (Connectors)](../../../concepts/search-concept-custom-types.md) data

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "search_query"
}-->

```http
POST https://graph.microsoft.com/beta/search/query
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
      ]
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
              "_source": {
                //The source field will contain the underlying graph entity part of the response
              }
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
