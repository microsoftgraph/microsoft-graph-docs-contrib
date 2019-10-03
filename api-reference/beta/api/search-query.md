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
| Delegated (work or school account)     | Not supported. |
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
|requests|[searchRequest collection](../resources/searchrequest.md)||

## Response

If successful, this method returns `200, OK` response code and a new [searchResponse](../resources/searchresponse.md) collection object in the response body.

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
      "entityType": "entityType-value",
      "entityTypes": [
        "entityTypes-value"
      ],
      "contentSources": [
        "contentSources-value"
      ],
      "query": {
        "query_string": {
          "query": "query-value"
        },
        "filter": {
          "bool": [

          ],
          "should": [

          ],
          "term": {
          },
          "range": {
          }
        }
      },
      "from": 99,
      "size": 99,
      "_sources": [
        "_sources-value"
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
