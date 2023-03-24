---
title: "Use the Microsoft Search API to refine queries with aggregations"
description: "You can use the Microsoft Search API aggregationOption in Microsoft Graph to refine search results and show their distribution in the index."
author: "njerigrevious"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to refine queries with aggregations

You can use the Microsoft Search API in Microsoft Graph to refine search results and show their distribution in the index.

To refine the results, in the [search request](/graph/api/resources/searchRequest), specify the [aggregationOption](/graph/api/resources/aggregationOption). Each **aggregationOption** specifies the property on which the aggregation should be computed and the number of [searchBucket](/graph/api/resources/searchBucket) items to be returned in the response.

## Example 1: Request aggregations by string fields

The following example searches **listItem** resources and aggregates results by their file type, content class, and last modified time, all of which are string values.

The response includes two [searchBucket](/graph/api/resources/searchbucket) objects for the two aggregations:
- The **key** property specifies the actual value (by `fileType`, `contentclass`, or `lastModifiedTime`) for those matching **listItem** objects that are aggregated in the same bucket by that value.
- The **count** property specifies the number of such objects aggregated in the same bucket. Note that this number is an approximation of the number of matches and will not provide an exact number of matches.
- Buckets of results aggregated by file type are sorted by count in descending order. In this example, there are 3 buckets for 3 file types: `docx`, `xlsx`, and `pptx`.
- Buckets of results aggregated by content class are sorted by the string value of the content class in descending order. In this example, there is only one bucket with all the matching objects sharing the same content class, `STS_ListItem_DocumentLibrary`.
- Buckets of results aggregated by lastModifiedTime are sorted by the string value of lastModifiedTime in descending order. This example includes three buckets: `Before 2021-09-01T09:08:19.6224752Z`, `From 2021-09-01T09:08:19.6224752Z up to 2021-11-09T09:08:19.6224752Z`, and `2021-11-09T09:08:19.6224752Z or later`.

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
      "from": 0,
      "size": 25,
      "aggregations": [
          {
              "field": "fileType",
              "size": 20,
              "bucketDefinition": {
                  "sortBy": "count",
                  "isDescending": "true",
                  "minimumCount": 0
              }
          },
          {
              "field": "contentclass",
              "size": 15,
              "bucketDefinition": {
                  "sortBy": "keyAsString",
                  "isDescending": "true",
                  "minimumCount": 0
              }
          },
          {
              "field": "lastModifiedTime",
              "size": 2,
              "bucketDefinition": {
                  "sortBy": "KeyAsString",
                  "isDescending": "true",
                  "minimumCount": 0,
                  "ranges": [
                      {
                          "to": "2021-09-01T09:08:19.6224752Z"
                      },
                      {
                          "from": "2021-09-01T09:08:19.6224752Z",
                          "to": "2021-11-09T09:08:19.6224752Z"
                      },
                      {
                          "from": "2021-11-09T09:08:19.6224752Z"
                      }
                ]
              }
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
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                "..."
            ],
            "total": 9,
            "moreResultsAvailable": false,
            "aggregations": [
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "fileType",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "docx",
                            "count": 5,
                            "aggregationFilterToken": "\"ǂǂ646f6378\""
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "xlsx",
                            "count": 3,
                            "aggregationFilterToken": "\"ǂǂ786c7378\""
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "pptx",
                            "count": 1,
                            "aggregationFilterToken": "\"ǂǂ70707478\""
                        }
                    ]
                },
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "contentclass",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "STS_ListItem_DocumentLibrary",
                            "count": 9,
                            "aggregationFilterToken": "\"ǂǂ5354535f4c6973744974656d5f446f63756d656e744c696272617279\""
                        }
                    ]
                },
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "lastModifiedTime",
                    "buckets": [
                        {
                            "key": "Before 2021-09-01T09:08:19.6224752Z",
                            "count": 5,
                            "aggregationFilterToken": "range(min, 2021-09-01T09:08:19.6224752Z)"
                        },
                        {
                            "key": "From 2021-09-01T09:08:19.6224752Z up to 2021-11-09T09:08:19.6224752Z",
                            "count": 3,
                            "aggregationFilterToken": "range(2021-09-01T09:08:19.6224752Z, 2021-11-09T09:08:19.6224752Z)"
                        },
                        {
                            "key": "2021-11-09T09:08:19.6224752Z or later",
                            "count": 1,
                            "aggregationFilterToken": "range(2021-11-09T09:08:19.6224752Z, max, to=\"le\")"
                        }
                    ]
                }
            ]
        }
    ]
}
```

## Example 2: Apply an aggregation filter based on a previous request

This example applies an aggregation filter that is based on the **aggregationFilterToken** returned for `docx` as the `fileType` field and `From 2021-09-01T09:08:19.6224752Z up to 2021-11-09T09:08:19.6224752Z` as the `lastModifiedTime` field in example 1.

The string value assigned to the **aggregationFilters** property follows the format **"{field}:\\"{aggregationFilterToken}\\""**. If multiple values for the same filter are required, the string value assigned to the **aggregationFilters** property should follow this format : **"{field}:or(\\"{aggregationFilterToken1}\\",\\"{aggregationFilterToken2}\\")"**.

The datetime-formatting string value assigned to the **aggregationFilters** property follows the format **"{field}:{aggregationFilterToken}"**.


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
          "queryString": "test"
      },
      "from": 0,
      "size": 20,
      "aggregations": [
          {
              "field": "fileType",
              "size": 10,
              "bucketDefinition": {
                  "sortBy": "count",
                  "isDescending": "true",
                  "minimumCount": 0
              }
          }
      ],
      "aggregationFilters": [
        "fileType:\"ǂǂ68746d6c\"",
        "lastModifiedTime:range(2021-09-01T09:08:19.6224752Z, 2021-11-09T09:08:19.6224752Z)"
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
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                "..."
            ],
            "total": 69960,
            "moreResultsAvailable": true,
            "aggregations": [
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "fileType",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "html",
                            "count": 69960,
                            "aggregationFilterToken": "\"ǂǂ68746d6c\""
                        }
                    ]
                },
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "lastModifiedTime",
                    "buckets": [
                        {
                            "key": "Before 2021-09-01T09:08:19.6224752Z",
                            "count": 0,
                            "aggregationFilterToken": "range(min, 2021-09-01T09:08:19.6224752Z)"
                        },
                        {
                            "key": "From 2021-09-01T09:08:19.6224752Z up to 2021-11-09T09:08:19.6224752Z",
                            "count": 69960,
                            "aggregationFilterToken": "range(2021-09-01T09:08:19.6224752Z, 2021-11-09T09:08:19.6224752Z)"
                        },
                        {
                            "key": "2021-11-09T09:08:19.6224752Z or later",
                            "count": 0,
                            "aggregationFilterToken": "range(2021-11-09T09:08:19.6224752Z, max, to=\"le\")"
                        }
                    ]
                }
            ]
        }
    ]
}
```

## Example 3: Request aggregation by a numeric field

The following example searches **driveItem** resources and aggregates results by their size which is a numeric value. The request specifies aggregation by 3 size ranges:
- Size less than 100
- Size between 100 and 1000
- Size 1000 and higher

The response includes 3 **searchBucket** objects, one for each size range aggregation:
- The 2 buckets of the lower size ranges don't include any search matches.
- All 9 search matches have sizes 1000 or higher.

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
                "queryString": "test"
            },
            "from": 0,
            "size": 10,
            "aggregations": [
                {
                    "field": "Size",
                    "size": 5,
                    "bucketDefinition": {
                        "sortBy": "keyAsNumber",
                        "isDescending": "true",
                        "minimumCount": 0,
                        "ranges": [
                            {
                                "to": "100"
                            },
                            {
                                "from": "100",
                                "to": "1000"
                            },
                            {
                                "from": "1000"
                            }
                        ]
                    }
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
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                "..."
                    ],
            "total": 9,
            "moreResultsAvailable": false,
            "aggregations": [
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "Size",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "Less than 100",
                            "count": 0,
                            "aggregationFilterToken": "range(min, 100)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "100 up to 1000",
                            "count": 0,
                            "aggregationFilterToken": "range(100, 1000)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchBucket",
                            "key": "1000 and up",
                            "count": 9,
                            "aggregationFilterToken": "range(1000, max, to=\"le\")"
                        }
                    ]
                }
            ]
        }
    ]
}
```

## Known limitations

Aggregations are supported only for SharePoint, OneDrive, or external items. They are not supported for **message** or **event** types.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
