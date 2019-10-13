---
title: "Search messages"
description: "The query API is also able to surface external files ingested in Microsoft Search with the Index API."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Search Files
The Microsoft Search query API lets you search files stored in SharePoint or OneDrive. The relevance model exposed using signals from the Microsoft Graph to promote content users care about based on their relations, and activities. With the files query API you are able build an experience consistent with the the Sharepoint Search result files tab. 

The query API is also able to surface external files ingested in Microsoft Search with the Index API. 

## Search OneDrive or Sharepoint files
Request  

```http 
POST https://graph.microsoft.com/beta/search/query 

Content-Type: application/json 

Authorization: Bearer AAD_TOKEN 

``` 
``` 
{ 

  "requests": [ 

    { 

      "entityType": "microsoft.graph.event",        

       "query": { 

        "query_string": { 

          "query": "contoso" 

        } 

      }, 

      "from": 0, 

      "size": 25 

    } 

  ] 

} 
```
Response 

Here is an example of the response. 

Note: The response object shown here might be shortened for readability. All the properties will be returned from an actual call. 
```http 
POST https://graph.microsoft.com/beta/search/query 

Content-Type: application/json 

Authorization: Bearer AAD_TOKEN 
``` 
``` 
{ 

  "@odata.context": "https://graph.microsoft.com/beta/$metadata#search", 

  "value": [ 

      { 

          "searchTerms": [ 

              "test" 

          ], 

          "hitsContainers": [ 

              { 

                  "total": 350, 

                  "moreResultsAvailable": true, 

                  "hits": [ 

                      { 

                          "_id": "FlULeN/ui/1GjLx1rUfio5UAAEl", 

                          "_score": 1, 

                          "_sortField": "Relevance", 

                          "_summary": "<c0>test</c0>_long Notebook<ddd/>", 

                          "_source": { 

                              "@odata.type": "#microsoft.graph.driveItem", 

                              "createdDateTime": "2019-06-10T06:37:43Z", 

                              "lastModifiedDateTime": "2019-06-10T06:37:43Z", 

                              "name": "web_part_test_long Notebook", 

                              "webUrl": "https://contoso.sharepoint.com/sites/NewFeatureE2E201906100220/web_part_test_long/SiteAssets/web_part_test_long Notebook", 

                              "lastModifiedBy": { 

                                  "user": { 

                                      "displayName": "TEST_TEST_SPOProvHeartbeat_E3_15_1906092200_405" 

                                  } 

                              }, 

                              "fileSystemInfo": { 

                                  "createdDateTime": "2019-06-10T06:37:43Z", 

                                  "lastModifiedDateTime": "2019-06-10T06:37:43Z" 

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
- “query” : “contoso filetype:docx OR filetype:doc” will scope the queries to word documents 
- "query": "test path:\"https://contoso.sharepoint.com/sites/Team Site/Documents/Project\""will scope the query to a particular folder within a site 
In order to be valid, properties restriction should specify a valid Queryable managed property name in the condition. 

To learn more about the possibility, refer to the [KQL syntax reference]( https://docs.microsoft.com/en-us/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference) for files.
