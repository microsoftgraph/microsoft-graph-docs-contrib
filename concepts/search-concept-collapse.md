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
|**Basic Collapse**|Collapse by any single queryable and either sortable or refineable property. This limit value must be an integer between 1 and 32767.|"collapseProperties":[{"fields":["title"],"limit":3}]|
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

### Example 1: Basic collapse
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
Group the items based on **title** and show the top three (hence "limit": 3) for each group. As you can see in the below table, the ranking is maintained, and the top three rows and last 3 rows are kept but rows 4 and 5 are excluded because the collapseProperties limit is 3.

| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example 2: Compound collapse
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
In below table, the ranking is still maintained, but we collapse by two properties simultaneously to find unique combinations of title and createdby. This results in keeping the first 4 rows and excluding row 5 because combination of Note (title) and James (createdBy) is only allowed up to 2 times. Additionally, last 3 rows are kept for the same reason.

| Title | Created By | Subject | Rank |
| :----: | :----: | :----: | :----: |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Note|James|Math|4|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|
|Notebook|James|Science|8|

### Example 3: Multi-level collapse
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
In below table, the ranking is still maintained, but we collapse first on title and then do a second collapse on createdBy. For the first level collapse on title with a limit of 3, this results in keeping the first 3 rows excluding rows 4 and 5 and keeping the last 3 rows as is. And then for the second level collapse with a limit of 1, we don't need to change the first 3 rows we kept because each has a unique createdBy value, but we do need to exclude row 8 because James is listed again as createdBy and we only need unique values for that property.

| Title | Created By | Subject | Rank |
| :---- | :---- | :---- | :---- |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|

## Known limitations
- The **collapseProperties** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, **externalItem**, **bookmark** or **acronym**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
- [Collapse search results in SharePoint](/sharepoint/dev/general-development/customizing-search-results-in-sharepoint#collapse-similar-search-results-using-the-collapsespecification-property)
