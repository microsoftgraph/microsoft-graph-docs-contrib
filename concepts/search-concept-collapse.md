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
|**Compound Collapse**|Collapse by compound fields of properties. There is no built-in maximum size for number of fields, but at least two fields need to be nominated. This limit value must be an integer between 1 and 32767.|"collapseProperties":[{"fields":["title","createdBy"],"limit":2}]|
|**Multi-level Collapse**|Collapse by level-by-level collapseProperty. There is no built-in maximum size for number of levels, but at least two levels need to be specified. For the limit value of each level must be an integer between 1 and 32767, and must be equal or less than upper-level limit value. |"collapseProperties":[{"fields":["title"],"limit":3},{"fields":["createdBy"],"limit":1}]|

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
Group the items based on **title** and show the top three (hence "limit": 3) for each group. As you can see in the below table, the top three rows are taken but rows 4 and 5 are not taken, because the limit is 3 and the returned order is ranking.
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
First, group the items based on both **title** and **createdBy**. Then, show each combination within the limit size 2 (hence "limit": 2). As you can see in the below table, we include row 2 and 4, and exclude row 5 because the combination of Note and James is limited up to 2 times. Other rows are all kept because the presence of combination is less or equal to 2. The returned order base on ranking.
| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Note|James|Math|4|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example: Multi-level Collapse
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
First, group the items based on **title** and show the top three (hence "limit": 3) for each group. Then, for each **title**, show a corresponding item of **createdBy** (hence second level "limit": 1). In the first level we group by title and keep top three rows, so we exclude row 4 and 5. Then in each title group, we keep row with unique cearedBy, so we exclude row 8 for its duplicate createdBy. The returned order base on ranking.
| Title | Created By | Subject | Rank |
| :---- | :---- | :---- | :---- |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|

## Known limitations
- The **collapseProperties** property is only supported for sortable/refinable property.
- The **collapseProperties** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, **externalItem**, **bookmark** or **acronym**.

## Next steps

- [Use the SharePoint to collapse search results](/sharepoint/dev/general-development/customizing-search-results-in-sharepoint#collapse-similar-search-results-using-the-collapsespecification-property)
- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
