---
title: "Use the Microsoft Search API to XRANK search results"
description: "You can use the Microsoft Search API xrank expression in Microsoft Graph to boost the dynamic rank of items based on certain term occurrences within the match expression, without changing which items match the query. Only supported on SharePoint files."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to xrank search results

You can use the Microsoft Search API **XRANK** expression in Microsoft Graph to boost the dynamic rank of items based on certain term occurrences within the match expression, without changing which items match the query. An **XRANK** expression contains one component that must be matched, *the match expression*, and one or more components that contribute only to dynamic ranking, *the rank expression*. At least one of the parameters, excluding n, must be specified for an XRANK expression to be valid. The xrank operator is only supported on files hosted in SharePoint.

You can use the **XRANK** operator in the following syntax:
```HTTP
<match expression> XRANK(cb=100, rb=0.4, pb=0.4, avgb=0.4, stdb=0.4, nb=0.4, n=200) <rank expression>
```

For more information about [XRANK operator's dynamic ranking calculation](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference#dynamic-ranking-operator).

## Example
The following example shows a request that searches for files hosted in SharePoint and uses the **XRANK operator** to boost specified search results.

### Request Without XRANK

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
                "queryString": "cat OR dog"
            },
            "from": 0,
            "size": 1
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
                "cat",
                "dog"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "32faa5c0-0bd5-4918-a19c-7b3c415a0fb4",
                            "rank": 1,
                            "summary": "this program has changed any times over the years, but one of the most common is “<c0>dog</c0> food <ddd/> However, only a few of those will get focused attention through the “<c0>dog</c0> food” process <ddd/> ",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "createdDateTime": "2021-04-22T19:22:23Z",
                                "lastModifiedDateTime": "2021-12-03T19:00:27Z",
                                "webUrl": "https://microsoft.sharepoint.com/teams/Employee_Experience/SitePages/Dog-Foodxxxxx.aspx"
                            }
                        }
                    ],
                    "total": 616865,
                    "moreResultsAvailable": true
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)"
}
```

### Request with XRANK

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
                "queryString": "(cat OR dog) XRANK(cd=100) note"
            },
            "from": 0,
            "size": 1
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
                "cat",
                "or",
                "dog",
                "xrank",
                "cd",
                "100",
                "note",
                "contentclass",
                "sts_listitem_"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "1f335945-1b08-4ce2-a153-c7aa52e4513b",
                            "rank": 1,
                            "summary": "An <c0>XRANK</c0> expression contains one component that must be matched, the match expression, and one <c0>or</c0> more components that contribute only to dynamic <ddd/> ",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "createdDateTime": "2022-09-09T05:27:29Z",
                                "lastModifiedDateTime": "2022-09-13T04:28:00Z",
                                "webUrl": "https://microsoftapc-my.sharepoint.com/personal/Documents/XRANKdogfood.docx"
                            }
                        }
                    ],
                    "total": 80060740,
                    "moreResultsAvailable": true
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)"
}
```

## Known limitations

The **XRANK** expression is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, or **externalItem**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
