---
title: "Use the Microsoft Search API in Microsoft Graph refine queries with aggregations"
description: "You can use the Microsoft Search API to retrieve aggreations"
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Refine search results using aggregations

TODOSEARCHAPI@TingTing Can you please take a stab at this page describing the key scenario for Sharepoint---
- One example from sharepoint
- Document the known limitations
- The whole page below was copied from the Sharepoint File sample page. You should use the same structure. https://docs.microsoft.com/graph/search-concept-files
ENDTODO

TODO : Define aggregations and the various possibilities
Note that this page will be containing all the API details. So we should focus here on the key scenarios, not the specific API properties.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

## Examples - TODO

### Example 1 : Request aggregations for a string property - TODO

### Example 2 : Request aggregations for a numeric value

### Example 3 : Request aggregations for a custom numeric ranges

#### Request

```HTTP
POST /search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
      "entityTypes": [
        "driveItem"
      ],
      "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

<!---TODO nmoreau team Include one example of externalItem response.-->
```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "test"
      ],
      "hitsContainers": [
        {
          "total": 350,
          "moreResultsAvailable": true,
          "hits": [
            {
              "_id": "FlULeN/ui/1GjLx1rUfio5UAAEl",
              "_score": 1,
              "_summary": "<c0>Contoso</c0> Detailed Design <ddd/>",
              "_source": {
                "@odata.type": "#microsoft.graph.driveItem",
                "createdDateTime": "2019-06-10T06:37:43Z",
                "lastModifiedDateTime": "2019-06-10T06:37:43Z",
                "name": "web_part_test_long Notebook",
                "webUrl": "https://contoso.sharepoint.com/sites/contoso-team/contoso-designs.docx",
                "lastModifiedBy": {
                  "user": {
                    "displayName": "Richard Mayer"
                  }
                },
                "fileSystemInfo": {
                  "createdDateTime": "2019-06-10T06:37:43Z",
                  "lastModifiedDateTime": "2019-06-10T06:37:43Z"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}
```

## Known limitations

TODOSEARCHAPI

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
