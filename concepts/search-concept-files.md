---
title: "Use the Microsoft Search API in Microsoft Graph to search files"
description: "You can use the Microsoft Search API to search files stored in SharePoint or OneDrive."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search content in OneDrive and SharePoint

You can use the Microsoft Search API to search content stored in SharePoint or OneDrive. The Microsoft Search API uses a relevance model that makes use of signals from Microsoft Graph about users' relationships and activities. This enables you to return and promote the content that users care about, in a search experience that is consistent with search results in SharePoint.

The Search API lets you scope what content you want to retrieve in Sharepoint.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

## Scope your search in SharePoint and OneDrive

You can control the scope of your request to SharepPoint and OneDrive by specifying the **entityType** on the [searchRequest](/graph/api/resources/searchRequest?view=graph-rest-beta).

### Example - Search Files

#### Request

```HTTP
POST /search/query
Content-Type: application/json

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
      "size": 1
    }
  ]
}
```

#### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

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
                "createdBy": {
                 "user": {
                   "displayName": "Michaelvincent Santos;Provisioning User"
                  }
                },
                "lastModifiedBy": {
                  "user": {
                    "displayName": "Richard Mayer"
                  }
                },
                "parentReference": {
                  "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0"
                }
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

### Example - Search Sites
TODOMSSEARCHAPI@Nmoreau
### Example - Search Lists
TODOMSSEARCHAPI@Nmoreau



## Specify select properties
See commments in the Api over page.
@TODOSEARCHAPI@Lan could you help me pull one sample

## Use filters in search queries

You can use KQL in search terms of queries for SharePoint and OneDrive. For example:

- `"query": "contoso filetype:docx OR filetype:doc"` scopes the query to Word documents.
- `"query": "test path:\"https://contoso.sharepoint.com/sites/Team Site/Documents/Project\\""` scopes the query to a particular folder within a site.
- `"query": "contoso AND isDocument=true"` scopes the query to only return documents. Any container (folder, document library) will not be returned.
- `"query": "contoso contentclass:STS_List_Events"` scopes the query to Calendar events stored in SharePoint.

In order to be valid, properties restriction should specify a valid, queryable managed property name in the condition.



## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
