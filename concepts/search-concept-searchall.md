---
title: "Search content with application permissions"
description: "Learn how to use the Microsoft Search API in Microsoft Graph to search SharePoint content using application permissions."
author: "yiwenwang"
ms.localizationpriority: medium
ms.subservice: "search"
ms.date: 11/07/2024
---

# Search SharePoint content with application permissions

This article describes how you can use application permissions with the Microsoft Search API in Microsoft Graph to search SharePoint content. Unlike delegated permissions, application permissions allow an application owner the option to search all content in the owner's SharePoint sites in a selected region. 

Performing a search with application permission is limited to one geographic region. You must specify a value for the **region** property in your [search request](/graph/api/resources/searchRequest) when you use application permissions to run a search. To get the **region** value for a tenant, use the **dataLocationCode** property of the [siteCollection](/graph/api/resources/sitecollection) resource. For more information and examples, see [Get the region value](/sharepoint/dev/solution-guidance/multigeo-discovery).

By default, application permissions enable search on shared content and disable search on private content. To enable private content search, see [Example 2: Include all private content](#example-2-include-all-private-content).

## Example 1: Default search request

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
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
      "region": "NAM"
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.searchResponse",
    "searchTerms": [
        "contoso"
    ],
    "hitsContainers": [
        {
            "total": 2,
            "moreResultsAvailable": false,
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "hitId": "01VRZMWHPGDM5KTXS53RF3SSGHW7SGGPKL",
                    "rank": 1,
                    "summary": "As we work to become a more <ddd/> We <c0>test</c0> samples from the region between 10 and 100 times per day <ddd/> and surrounding areas that CPU uses to <c0>test</c0> the quality of your drinking water every day <ddd/> contoso",
                    "resource": {
                        "@odata.type": "#microsoft.graph.listItem",
                        "size": 971838,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-22T21:14:59Z",
                            "lastModifiedDateTime": "2018-09-12T16:20:16Z"
                        },
                        "id": "01VRZMWHPGDM5KTXS53RF3SSGHW7SGGPKL",
                        "createdBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "createdDateTime": "2020-07-22T21:14:59+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "lastModifiedDateTime": "2018-09-12T16:20:16+00:00",
                        "name": "Adventure Works Cycles Name",
                        "parentReference": {
                            "siteId": "Contoso066a,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0",
                            "driveId": "b!NAe_rKr80k-n7e5zlCVIqSnIwTNsGBVBlusjEvRHgjMmmcA3Ubc7R4Kyao9hbgL4",
                            "sharepointIds": {
                                "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                                "listItemId": "1027",
                                "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
                            }
                        },
                        "webUrl": "http://www.adventure-works.com/"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "hitId": "01BTQFB3LHZTAYBV2VXVEK22ETF5WOQGT2",
                    "rank": 2,
                    "summary": "QT300 Accessories Specs Costs Chart Continue <ddd/> 16 Package 5 14 Grand Total 99 Results Data <c0>Test</c0> Group Gender <c0>Test</c0> Option 1 2 3 18-25 Male Package 4 Color <ddd/> ",
                    "resource": {
                        "@odata.type": "#microsoft.graph.listItem",
                        "size": 34428,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-22T21:23:50Z",
                            "lastModifiedDateTime": "2012-10-29T17:52:10Z"
                        },
                        "id": "01BTQFB3LHZTAYBV2VXVEK22ETF5WOQGT2",
                        "createdBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "createdDateTime": "2020-07-22T21:23:50+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Adatum Corporation"
                            }
                        },
                        "lastModifiedDateTime": "2012-10-29T17:52:10+00:00",
                        "name": "Adatum Corporation Name",
                        "parentReference": {
                            "siteId": "Contoso066a,893378cb-d2cd-4076-a2c9-e50587a26832,04120cf2-7863-4701-8541-eb26266a25e6",
                            "sharepointIds": {
                                "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                                "listItemId": "1027",
                                "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
                            }
                        },
                        "webUrl": "http://www.adatum.com/contoso"
                    }
                }
            ]
        }
    ]
}
```


## Example 2: Include all private content
By default, private content search is disabled for customers with application permissions.

To include all private content in a search using application permissions, specify `privateContent` in the **sharePointOneDriveOptions** property.

> [!NOTE]
> Searching all private content can be an expensive option. To make the process more efficient, when you run the initial search request and specify `privateContnt`, an index is provisioned to serve private results. The time required to build the index depends on the number of items in your users' OneDrive. For a medium-to-large tenant, provisioning a new index can take days to a week to complete. For very large tenants, provisioning will take longer.  While the index is provisioning, search requests only return shared and public content. When the new index is complete, private and shared content is also returned. If no search requests for `privateContent` are sent within three months, the private index is decommissioned. A subsequent search request for `privateContent` will rebuild the index.

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
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
      "region": "NAM",
       "sharePointOneDriveOptions": {
           "includeContent": "privateContent,sharedContent"
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
    "@odata.type": "#microsoft.graph.searchResponse",
    "searchTerms": [
        "contoso"
    ],
    "hitsContainers": [
        {
            "total": 2,
            "moreResultsAvailable": false,
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "hitId": "01VRZMWHPGDM5KTXS53RF3SSGHW7SGGPKL",
                    "rank": 1,
                    "summary": "As we work to become a more <ddd/> We <c0>test</c0> samples from the region between 10 and 100 times per day <ddd/> and surrounding areas that CPU uses to <c0>test</c0> the quality of your drinking water every day <ddd/> contoso",
                    "resource": {
                        "@odata.type": "#microsoft.graph.listItem",
                        "size": 971838,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-22T21:14:59Z",
                            "lastModifiedDateTime": "2018-09-12T16:20:16Z"
                        },
                        "id": "01VRZMWHPGDM5KTXS53RF3SSGHW7SGGPKL",
                        "createdBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "createdDateTime": "2020-07-22T21:14:59+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "lastModifiedDateTime": "2018-09-12T16:20:16+00:00",
                        "name": "Adventure Works Cycles Name",
                        "parentReference": {
                            "siteId": "Contoso066a,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0",
                            "driveId": "b!NAe_rKr80k-n7e5zlCVIqSnIwTNsGBVBlusjEvRHgjMmmcA3Ubc7R4Kyao9hbgL4",
                            "sharepointIds": {
                                "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                                "listItemId": "1027",
                                "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
                            }
                        },
                        "webUrl": "http://www.adventure-works.com/"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "hitId": "01BTQFB3LHZTAYBV2VXVEK22ETF5WOQGT2",
                    "rank": 2,
                    "summary": "QT300 Accessories Specs Costs Chart Continue <ddd/> 16 Package 5 14 Grand Total 99 Results Data <c0>Test</c0> Group Gender <c0>Test</c0> Option 1 2 3 18-25 Male Package 4 Color <ddd/> ",
                    "resource": {
                        "@odata.type": "#microsoft.graph.listItem",
                        "size": 34428,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-22T21:23:50Z",
                            "lastModifiedDateTime": "2012-10-29T17:52:10Z"
                        },
                        "id": "01BTQFB3LHZTAYBV2VXVEK22ETF5WOQGT2",
                        "createdBy": {
                            "user": {
                                "displayName": "Adventure Works Cycles"
                            }
                        },
                        "createdDateTime": "2020-07-22T21:23:50+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Adatum Corporation"
                            }
                        },
                        "lastModifiedDateTime": "2012-10-29T17:52:10+00:00",
                        "name": "Adatum Corporation Name",
                        "parentReference": {
                            "siteId": "Contoso066a,893378cb-d2cd-4076-a2c9-e50587a26832,04120cf2-7863-4701-8541-eb26266a25e6",
                            "sharepointIds": {
                                "listId": "c61d1892-ca82-4f53-b16f-6bb8a379e2b2",
                                "listItemId": "1027",
                                "listItemUniqueId": "E320AFEB-AD73-46A2-83D7-985FAA4B206D"
                            }
                        },
                        "webUrl": "http://www.adatum.com/contoso"
                    }
                }
            ]
        }
    ]
}
```

## Known limitation

- Deep paging (paging through the entire result set) is not supported beyond start row x (e.g. "from" value > 1000).
  Suggest not to use big 'from' and 'size' value while executing search request with Application Permission.
- [Collapsing](./search-concept-collapse.md) is not supported.

