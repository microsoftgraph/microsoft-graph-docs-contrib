---
title: "Use the Microsoft Search API to collapseProperties search results"
description: "You can use the Microsoft Search API collapseProperties property in Microsoft Graph to collapseProperties search results by taking a spec parameter. Only supported on file type."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to collapse search results

You can use the Microsoft Search API in Microsoft Graph to collapse items in search result set, which can display these results in a concise, readable way. You can specify the criteria for collapsing by using **collapseProperties** property in a [searchRequest](/graph/api/resources/searchrequest) object, which contains one or more collapseProperty parameter that point out fields set to be collapsed and a limit size. The **collapseProperties** property is only supported on files hosted in SharePoint and OneDrive.

| Scenarios | Description | Sample |
| :----     | :----       | :----  |
|**Basic Collapse**|Collapse by any single sortable/refinable property.|"collapseProperties":[{"fields":["title"],"limit":3}]|
|**Compound Collapse**|Collapse by compound fields of properties.|"collapseProperties":[{"fields":["title","createdBy"],"limit":2}]|
|**Multi-level Collapse**|Collapse by level-by-level collapseProperty. The limit value of each level must be equal or less than upper-level limit. |"collapseProperties":[{"fields":["title"],"limit":3},{"fields":["createdBy"],"limit":1}]|

## Examples of using collapseProperties
The following table shows a sample list in SharePoint. The next set of examples use this list to show how the collapseProperties property works.
| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Note|James|Math|4|
|Note|James|Science|5|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example: Basic Collapse
#### Request
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
                "queryString": "note"
            },
            "collapseProperties": [
                {
                    "fields": [
                        "title"
                    ],
                    "limit": 3
                }
            ]
        }
    ]
}
```
Group the items based on **title** and show the top three (hence "limit": 3) for each group. This should return the following results. 
| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example: Compound Collapse
#### Request
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
                "queryString": "note"
            },
            "fields": [
                "title",
                "createdBy"
            ],
            "collapseProperties": [
                {
                    "fields": [
                        "title",
                        "createdBy"
                    ],
                    "limit": 2
                }
            ]
        }
    ]
}
```
First, group the items based on both **title** and **createdBy**. Then, show each combination within the limit size 2 (hence "limit": 2). This should return the following results.
| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Note|James|Math|4|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example: Compound Collapse
#### Request
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
                "queryString": "note"
            },
            "fields": [
                "title",
                "createdBy"
            ],
            "collapseProperties": [
                {
                    "fields": [
                        "title"
                    ],
                    "limit": 3
                },
                {
                    "fields": [
                        "createdBy"
                    ],
                    "limit": 1
                }
            ]
        }
    ]
}
```
First, group the items based on **title** and show the top two (hence "limit": 3) for each group. Then, for each **title**, show a corresponding item of **createdBy** (hence second level "limit": 1). This should return the following results.
| Title | Created By | Subject | Rank |
| :---- | :---- | :---- | :---- |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|

## Known limitations
- The **collapseProperties** property is only supported for sortable/refinable property.
- The **collapseProperties** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, or **externalItem**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
