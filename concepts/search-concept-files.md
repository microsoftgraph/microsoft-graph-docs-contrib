---
title: "Search Custom types"
description: "The query API lets you search accross Custom types ingested via the Connectors Indexing API."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Search files

The search API lets you search files stored in SharePoint or OneDrive.

The relevance model exposed using signals from the Microsoft Graph to promote content users care about based on their relations, and activities.

With the files search API you are able build an experience consistent with the the Sharepoint Search result files tab.
The search API is also able to surface external files ingested in via the indexing API.


## Search OneDrive or SharePoint files

Request  

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```Json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.driveItem"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25,
    }
  ]
}
```

Response

Here is an example of the response.

Note: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!---TODO nmoreau team Include one example of externalItem response.--> 
```Json
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
                          "_sortField": "Relevance",
                          "_summary": "<c0>test</c0>_long Notebook<ddd/>",
                          "_source": {
                              "@odata.type": "#microsoft.graph.driveItem",
                              "createdDateTime": "2019-06-10T06:37:43Z",
                              "lastModifiedDateTime": "2019-06-10T06:37:43Z",
                              "name": "web_part_test_long Notebook",
                              "webUrl": "https://contoso.sharepoint.com/sites/NewFeatureE2E201906100220/web_part_test_long/SiteAssets/web_part_test_long Notebook",
                              "lastModifiedBy": {
                                  "user": {
                                      "displayName": "TEST_TEST_SPOProvHeartbeat_E3_15_1906092200_405"
                                  }
                              },
                              "fileSystemInfo": {
                                  "createdDateTime": "2019-06-10T06:37:43Z",
                                  "lastModifiedDateTime": "2019-06-10T06:37:43Z"
                              }
                          }
                      },
                      {
                      }
                  ]
              }
          ]
      }
  ]
}
```

Queries against SharePoint and OneDrive can use KQL in the search terms to scope the queries.
-	“query” : “contoso filetype:docx OR filetype:doc” will scope the queries to word documents
-	"query": "test path:\\"https://contoso.sharepoint.com/sites/Team Site/Documents/Project\\""will scope the query to a particular folder within a site.
In order to be valid, properties restriction should specify a valid Queryable managed property name in the condition.

## Search External Files (Well known types)

The indexing API lets you use an build in Connector for external file shares. You can use the query API to query all external files.

Request  

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```Json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.externalFile"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25,
    }
  ]
}
```

Response

```Json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
    "value": [{
        "searchTerms": [
            "contoso"
        ],
        "hitsContainers": [{
            "total": 4,
            "moreResultsAvailable": true,
            // Hits represent the search results
            "hits": [
                     {
                     "_id": "FsHvoeTuRRVLnuEZLEVBfSQAAWTp",
                     "_score": 1,
                     "_sortField": "Relevance",
                     "_source": { 
                            "@odata.type": "#microsoft.graph.externalFile",
                            "id": "FsHvoeTuRRVLnuEZLEVBfSQAAWTp",
                            "extension": "pptx",
                            "name": "Contoso-Overview.pptx",
                            "lastModifiedTime": "2018-05-09T04:01:14Z",
                            "modifiedBy": "Sean Smith",
                            "title": "Contoso Overview 2018",
                            "url": "file://fileshare01/External Presentations/Contoso-Overview.pptx",
                            }
                     }
                     ,
                     {
                            ///Another searchHit
                     }
            ]
        }]
    }]
}
```

This query will return all configured externalFile Connector for the tenant.

Results are sorted by relevance.

## Search all files (including External)

You can search all files in the tenant, including driveItem and all external files by specifying two entityTypes in the request.

The response will provide a blend of driveItem and externalItems in the _sources field of each [searchHit](/graph/api/resources/searchhit?view=graph-rest-beta).


Request  

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```Json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.driveItem","microsoft.graph.externalFile"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25,
    }
  ]
}
```

This query will return all configured externalFile Connector and driveItems for the tenant.

Results are sorted by relevance.

## Known limitations

- You cannot scope a query to a particular ConnectionId


## Next steps

Find out more about:

- The [search API](/graph/api/search-query?view=graph-rest-beta)