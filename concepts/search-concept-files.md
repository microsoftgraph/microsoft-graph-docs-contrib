---
title: "Use the Microsoft Search API to search OneDrive and SharePoint content"
description: "Use the Microsoft Search API in Microsoft Graph to search content stored in OneDrive or SharePoint: files, folders, lists, list items, or sites."
author: "njerigrevious"
ms.localizationpriority: medium
ms.subservice: "search"
---

# Use the Microsoft Search API to search OneDrive and SharePoint content

Use the Microsoft Search API in Microsoft Graph to search content stored in OneDrive or SharePoint: files, folders, lists, list items, or sites.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

The Search API lets you scope the types of content to retrieve in OneDrive or SharePoint by specifying the **entityTypes** property on the [searchRequest](/graph/api/resources/searchRequest). This article describes some examples.

## Example 1: Search files

### Request

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
        "queryString": "contoso"
      }
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "FlULeN/ui/1GjLx1rUfio5UAAEl",
              "rank": 1,
              "summary": "<c0>Contoso</c0> Detailed Design <ddd/>",
              "resource": {
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
                  "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0",
                  "driveId": "da61a2b0-4120-4a3f-812b-0fc0d79bf16b",
                  "sharepointIds": {
                      "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                      "listItemId": "1027",
                      "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
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

## Example 2: Search list items

### Request

```HTTP
POST /search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "listItem"
      ],
      "query": {
        "queryString": "contoso"
      }
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "FlULeN/ui/1GjLx1rUfio5UAAEl",
              "rank": 1,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.listItem",
                "createdDateTime": "2019-06-10T06:37:43Z",
                "lastModifiedDateTime": "2019-06-10T06:37:43Z",
                "name": "web_part_test_long Notebook",
                "webUrl": "https://contoso.sharepoint.com/sites/contoso-team/Lists/Issue tracker list/DispForm.aspx?ID=1",
                "sharepointIds": {
                    "listId": "33498de0-d695-4d23-ac26-e1bf95a3206e",
                    "listItemId": "13"
                },
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
                  "sharepointIds":{
                    "listId":"da61a2b0-4120-4a3f-812b-0fc0d79bf16b"  
                  },
                  "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0"
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

## Example 3: Search sites

### Request

```HTTP
POST /search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "site"
      ],
      "query": {
        "queryString": "contoso"
      }
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "contoso.sharepoint.com,6598ee0b-0f5f-4416-a0ae-66d864efb43a,60024ce8-e74d-4d63-a939-ad00cd738670",
              "rank": 1,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.site",
                "id": "contoso.sharepoint.com,6598ee0b-0f5f-4416-a0ae-66d864efb43a,60024ce8-e74d-4d63-a939-ad00cd738670",
                "createdDateTime": "2019-06-10T06:37:43Z",
                "description": "Contoso Communication Site",
                "lastModifiedDateTime": "2020-08-30T06:41:56Z",
                "webUrl": "https://contoso.sharepoint.com/sites/contoso-team/"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

## Example 4: Search all content in OneDrive and SharePoint

This example queries all the content in OneDrive and SharePoint sites to which the signed-in user has read access. The **resource** property in the response returns matches that are files and folders as **driveItem** objects, matches that are containers (SharePoint lists) as **list**, and all other matches as **listItem**.

### Request

```HTTP
POST /search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "driveItem", "listItem", "list"
      ],
      "query": {
        "queryString": "contoso"
      }
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "@odata.type": "#microsoft.graph.searchHitsContainer",
              "hitId": "FlULeN/ui/1GjLx1rUfio5UAAEl",
              "rank": 1,
              "summary": "<c0>Contoso</c0> Detailed Design <ddd/>",
              "resource": {
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
                  "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0",
                  "driveId": "da61a2b0-4120-4a3f-812b-0fc0d79bf16b",
                  "sharepointIds": {
                      "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                      "listItemId": "1027",
                      "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
                  }
                },
                "fileSystemInfo": {
                  "createdDateTime": "2019-06-10T06:37:43Z",
                  "lastModifiedDateTime": "2019-06-10T06:37:43Z"
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.searchHit",
              "hitId": "51eef59e-5d49-4d28-96f0-864cf90765e0",
              "rank": 2,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.list",
                "displayName": "Contoso - Documents",
                "id": "51eef59e-5d49-4d28-96f0-864cf90765e0",
                "description": "",
                "lastModifiedDateTime": "2020-07-08T18:17:59+00:00",
                "name": "Shared Documents",
                "parentReference": {
                  "siteId": "microsoft.sharepoint-df.com,220fd155-0ea2-477c-a816-5c08fdc45f5d,fad16ab6-0736-4fbc-a053-087296b47c99"
                },
                "webUrl": "https://microsoft.sharepoint-df.com/teams/spoppe/collab/TaskBoard/Contoso/Shared Documents/Forms/AllItems.aspx"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

## Example 5: Use filters in search queries

You can use KQL in search terms of queries for OneDrive and SharePoint. For example:

- `"query": "contoso filetype:docx OR filetype:doc"` scopes the query to Word documents.
- `"query": "test path:\"https://contoso.sharepoint.com/sites/Team Site/Documents/Project\""` scopes the query to a particular folder within a site.
- `"query": "contoso AND isDocument=true"` scopes the query to only return documents. Any container (folder, document library) will not be returned.
- `"query": "contoso contentclass:STS_List_Events"` scopes the query to Calendar events stored in SharePoint.
- `"query": "contoso (LastModifiedTime > 2021-02-01 AND Created > 2021-02-01)"` scopes the query to filter SharePoint and OneDrive items by date

In order to be valid, properties restriction should specify a valid, queryable managed property name in the condition.

## Example 6: Specify select properties

You can specify the fields you want back in the response, as part of the **fields** subproperty in listItem or an internal **listItem** subproperty in driveItem of a [searchHit](/graph/api/resources/searchhit) object in the response. This is a way to either trim down the response over the wire, or to request some specific properties that are not part of the out-of-the-box schema.

Note that property selection for custom properties in SharePoint is only available for **listItem** or **driveItem** because these are the only two SharePoint entities in Microsoft Graph that support custom properties.

### listItem request

```HTTP
POST /search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "listItem"
      ],
      "query": {
        "queryString": "contoso"
      },
      "fields": [
          "title",
          "contentclass"
      ]
    }
  ]
}
```

### listItem response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
    {
      "searchTerms": [
        "contoso"
      ],
      "hitsContainers": [
        {
          "total": 1,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "contoso.sharepoint.com,6598ee0b-0f5f-4416-a0ae-66d864efb43a,60024ce8-e74d-4d63-a939-ad00cd738670",
              "rank": 1,
              "summary": "",
              "resource": {
                "@odata.type": "#microsoft.graph.listItem",
                "createdDateTime": "2019-06-10T06:37:43Z",
                "webUrl": "https://contoso.sharepoint.com/sites/contoso-team/contoso-designs.docx",
                "sharepointIds": {
                    "listId": "33498de0-d695-4d23-ac26-e1bf95a3206e",
                    "listItemId": "13"
                },
                "parentReference": {
                  "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0"
                },
                "fields": {
                  "contentclass": "STS_ListItem_GenericList",
                  "title": "Contoso issue "
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

### driveItem request

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
        "queryString": "contoso"
      },
      "fields": [
          "listId",
          "author",
          "title"
      ]
    }
  ]
}
```

### driveItem response

```HTTP
POST /search/query
Content-Type: application/json

{
    "value": [
        {
            "searchTerms": [],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "01YOWRGSD34TVVP25X7NAZAW3P2JRL7FWE",
                            "rank": 1,
                            "summary": "",
                            "resource": {
                                "@odata.type": "#microsoft.graph.driveItem",
                                "listItem": {
                                    "@odata.type": "#microsoft.graph.listItem",
                                    "fields": {
                                        "listId": "3b6a49d3-6bea-4549-bed8-8b1c92a12345",
                                        "author": "Robin",
                                        "title": "Test Notebook"
                                    },
                                    "id": "57ebe47b-b7eb-41fb-905b-123452bf96c4"
                                }
                            }
                        }
                    ],
                    "total": 371,
                    "moreResultsAvailable": true
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.searchResponse)"
}
```
## Example 7: Search Hidden Content

You can use the optional "includeHiddenContent" property which allows developers to return content in Search results that is normally hidden from the default search experience. Examples of hidden content include archived content and SharePoint Embedded (RaaS). By default, this property is set to false, preventing hidden content from being returned.  

You can also optionally include KQL to scope hidden content query to content type of interest. For example, in SPO, Archive Sites is a feature that will allow admins to mark certain SP Sites (and soon other SP containers and objects) as “archived”.  If hidden content is not available, only the relevant nonhidden content will be shown (provided no other errors) and you'll get a successful 200 response.  

In the following example, you can use queryTemplate for scoping with KQL with the includeHiddenContent property however this is optional and not needed. Note that you can also scope on SharePoint Embedded content using properties such as ContainerTypeId, where you can learn more information about that and other properties in [SharePoint Embedded Container Types | Microsoft Learn](https://learn.microsoft.com/en-us/sharepoint/dev/embedded/concepts/app-concepts/containertypes).

### Request
```HTTP
POST https://graph.microsoft.com/beta/search/query 

Content-Type: application/json 

{ 

    "requests": [ 
        { 
            "entityTypes": [ 
                "driveItem" 
            ], 
            "query": { 

                "queryString": "*", 
                "queryTemplate": "({searchTerms} AuthorOWSUSER:TestContoso)"
            }, 
            "sharePointOneDriveOptions": { 
                "includeHiddenContent": true 
            } 
        } 
    ] 
} 
```

### Response

```
HTTP/1.1 200 OK
Content-type: application/json
{ 
    "value": [ 
        { 
            "searchTerms": [], 
            "hitsContainers": [ 
                { 
                    "hits": [ 
                        { 
                            { 
                                "hitId": "fc78bcb9-8b26-4bba-a250-389def493e0f", 
                                "rank": 2, 
                                "summary": "<c0>STS</c0>_<c0>View</c0> <c0>MySiteDocumentLibrary</c0> <c0>domain</c0>_<c0>allow</c0>:<c0>ALL</c0><ddd/>", 
                                "resource": { 
                                    "@odata.type": "#microsoft.graph.list", 
                                    "displayName": "TestContoso - Documents", 
                                    "id": "fc78bcb9-8b26-4bba-a250-389def493e0f", 
                                    "createdBy": { 
                                        "user": { 
                                            "displayName": "System Account" 
                                        } 
                                    }, 
                                    "lastModifiedDateTime": "2024-03-08T18:06:33Z", 
                                    "name": "Documents", 

                                    "parentReference": { 
                                        "siteId": "contoso-my.sharepoint.com,44776ebc-4ddc-4f7e-afb8-b706c77e0883,a118ff93-1105-40b9-bed0-2cd07cd4b2a4" 
                                    }, 
                                    "webUrl": "https://contoso-my.sharepoint.com/personal/contoso_onmicrosoft_com/Documents/Forms/All.aspx" 
                                } 
                            } 
                        ], 
                        "total": 1, 
                        "moreResultsAvailable": false 
                    } 
                ] 
            } 
        ], 
        "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.searchResponse)" 
    } 
```

## Known limitations

- When searching for **drive**, you need to include in the **queryString** a term contained in the name of the document library. Querying `*` is not supported and does not return all available drives.

- The search API doesn't support the site-level [search schema](/sharepoint/manage-search-schema). Use the tenant-level or default [search schema](/sharepoint/manage-search-schema).
- 
- includeHiddenContent only works with delegated permission scenario. It is not applicable for application permissions, where the includeHiddenContent property is overridden to be set to false. 

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
