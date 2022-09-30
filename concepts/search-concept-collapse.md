---
title: "Use the Microsoft Search API to collapse search results"
description: "You can use the Microsoft Search API collapse property in Microsoft Graph to collapse search results by taking a spec parameter. Only supported on file type."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to collapse search results

You can use the Microsoft Search API in Microsoft Graph to collapse search results, which only impacts the recall but not ranking/sorting. Specify the **collapse** property in a [searchRequest](/graph/api/resources/searchrequest) object to collapse on certain properties by taking a Spec parameter that can contain multiple fields separated by a comma and a limit size. The **collapse** property is only supported on files hosted in SharePoint and Onedrive.

| Scenarios | Description | Sample |
| :----     | :----       | :----  |
|**Basic Collapse**|Collapse by any single sortable/refinable property.|"collapse":[{"fields":["title"],"limit":3}]|
|**CompoundField Collapse**|Collapse by compound fields of properties separated by a comma.|"collapse":[{"fields":["title","author"],"limit":3}]|
|**Multi-level Collapse**|Collapse by multiple properties to achieve level-by-level collapse, each with a max limit count for unique values. The max limit count of each level must be equal or less than upper-level limit count. |"collapse":[{"fields":["title"],"limit":3},{"fields":["author"],"limit":2}]|

## Example
The following example shows a request that searches for files and uses the **collaspe** property to collapse on certain properties by taking a Spec parameter that can contain multiple fields separated by a comma, which evaluated together specify a set of criteria used for collapsing. This example is a mixed case, which is a multi-level collapse with compoundfield collapse in the first level and basic collapse in the second level.

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
                "queryString": "test"
            },
            "collapse": [
                {
                    "fields": [
                        "title",
                        "author"
                    ],
                    "limit": 3
                },
                {
                    "fields": [
                        "modifiedBy"
                    ],
                    "limit": 1
                }
            ]
        }
    ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [
                "test"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "eca22e76-bed7-4522-a44b-dbae87fc6bfc",
                            "rank": 1,
                            "summary": "Explore this page Benefit amount and deadlines Submit a claim",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "fields": {
                                    "contentclass": "STS_ListItem_WebPageLibrary",
                                    "title": "Info+",
                                    "author": "Sadkaj",
                                    "modifiedBy": "Sadkaj"
                                },
                                "id": "eca22e76-bed7-4522-a44b-dbae87fc6bfc"
                            }
                        },
                        {
                            "hitId": "eb02c8fd-940b-440f-a9ad-cca8b0b20f9b",
                            "rank": 2,
                            "summary": "Microsoft ended its self-<c0>test</c0> kit pickup program",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "fields": {
                                    "contentclass": "STS_ListItem_WebPageLibrary",
                                    "title": "COVID-19 self-test kits",
                                    "author": "Kellen",
                                    "modifiedBy": "Riley"
                                },
                                "id": "eb02c8fd-940b-440f-a9ad-cca8b0b20f9b"
                            }
                        }
                    ],
                    "total": 4758485,
                    "moreResultsAvailable": true
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)"
}
```

## Known limitations
- The **collapse** property is only supported for sortable/refinable property.
- The **collapse** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, or **externalItem**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
