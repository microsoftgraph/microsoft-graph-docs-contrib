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

For more information about [XRANK operator's dynamic ranking calculation](https://docs.microsoft.com/en-us/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference#dynamic-ranking-operator).

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
                                "sharepointIds": {
                                    "listId": "589b9e38-fba7-42ff-8034-bc64ac0eb572",
                                    "listItemId": "51"
                                },
                                "id": "32faa5c0-0bd5-4918-a19c-7b3c415a0fb4",
                                "createdBy": {
                                    "user": {
                                        "displayName": "Victoria Martinez",
                                        "email": "vmartinez@microsoft.com"
                                    }
                                },
                                "createdDateTime": "2021-04-22T19:22:23Z",
                                "lastModifiedBy": {
                                    "user": {
                                        "displayName": "Angie Apperson",
                                        "email": "angappe@microsoft.com"
                                    }
                                },
                                "lastModifiedDateTime": "2021-12-03T19:00:27Z",
                                "parentReference": {
                                    "id": "01EAAA4UBSHTIYATUQQJH34L4F2QUO7H2C",
                                    "siteId": "microsoft.sharepoint.com,fd636145-710b-4e2c-b131-3cb57cf50ee7,70e49b41-2e3b-491e-9140-7f23d7e0608e"
                                },
                                "webUrl": "https://microsoft.sharepoint.com/teams/Employee_Experience/SitePages/Dog-Food.aspx"
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
                                "sharepointIds": {
                                    "listId": "bf67bb6e-a131-443b-bfe0-738e317d941d",
                                    "listItemId": "89"
                                },
                                "id": "1f335945-1b08-4ce2-a153-c7aa52e4513b",
                                "createdBy": {
                                    "user": {
                                        "displayName": "Chentong Xiang",
                                        "email": "cxiang@microsoft.com"
                                    }
                                },
                                "createdDateTime": "2022-09-09T05:27:29Z",
                                "lastModifiedBy": {
                                    "user": {
                                        "displayName": "Chentong Xiang",
                                        "email": "cxiang@microsoft.com"
                                    }
                                },
                                "lastModifiedDateTime": "2022-09-13T04:28:00Z",
                                "parentReference": {
                                    "id": "012WFOYN5QXOC2KALNDJHJCDEZQZRFVKG5",
                                    "siteId": "microsoftapc-my.sharepoint.com,c251b801-2ed2-4d72-b33a-129f6f5f18ef,c3e28f2a-02e1-485b-beb0-140403893843"
                                },
                                "webUrl": "https://microsoftapc-my.sharepoint.com/personal/cxiang_microsoft_com/Documents/XRANK.docx"
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
