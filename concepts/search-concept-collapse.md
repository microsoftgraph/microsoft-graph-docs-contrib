---
title: "Use the Microsoft Search API to collapseProperties search results"
description: "You can use the Microsoft Search API collapseProperties property in Microsoft Graph to collapseProperties search results by taking a spec parameter. Only supported on file type."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to collapse search results

You can use the Microsoft Search API in Microsoft Graph to collapse items in search result set, which can display these results in a concise, readable way. You can specify the criteria for collapsing by using **collapseProperties** property in a [searchRequest](/graph/api/resources/searchrequest) object, which contains one or more collapseProperty parameter that point out fields set to be collapsed and a limit size. The **collapseProperties** property is supported for following entity types: site, drive, driveItem, list, listItem and externalItem.

| Scenarios | Description | Sample |
| :----     | :----       | :----  |
|**Basic Collapse**|Collapse by any single queryable and either sortable or refineable property. This limit value must be an integer between 1 and 32767.|"collapseProperties":[{"fields":["filename"],"limit":3}]|
|**Compound Collapse**|Collapse by compound fields of properties. There is no built-in maximum size for number of fields, but at least two fields need to be nominated. This limit value must be an integer between 1 and 32767.|"collapseProperties":[{"fields":["filename","author"],"limit":2}]|
|**Multi-level Collapse**|Collapse by level-by-level collapseProperty. There is no built-in maximum size for number of levels, but at least two levels need to be specified. For the limit value of each level must be an integer between 1 and 32767, and must be equal or less than upper-level limit value. |"collapseProperties":[{"fields":["filename"],"limit":3},{"fields":["author"],"limit":1}]|

## Examples of using collapseProperties
The following table shows a sample list in SharePoint. The next set of examples use this list to show how the collapseProperties property works.

| Filename | Author | Subject | Rank |
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
            "fields": [
                "filename"
            ],
            "collapseProperties": [
                {
                    "fields": [
                        "filename"
                    ],
                    "limit": 3
                }
            ]
        }
    ]
}
```
Group the items based on **Filename** and show the top three (hence "limit": 3) for each group. As you can see in the below table, the ranking is maintained, and the top three rows and last 3 rows are kept but rows 4 and 5 are excluded because the collapseProperties limit is 3.

| Filename | Author | Subject | Rank |
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
                "filename",
                "author"
            ],
            "collapseProperties": [
                {
                    "fields": [
                        "filename",
                        "author"
                    ],
                    "limit": 2
                }
            ]
        }
    ]
}
```
In below table, the ranking is still maintained, but we collapse by two properties simultaneously to find unique combinations of Filename and Author. This results in keeping the first 4 rows and excluding row 5 because combination of Note (Filename) and James (Author) is only allowed up to 2 times. Additionally, last 3 rows are kept for the same reason.

| Filename | Author | Subject | Rank |
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
                "filename",
                "author"
            ],
            "collapseProperties": [
                {
                    "fields": [
                        "filename"
                    ],
                    "limit": 3
                },
                {
                    "fields": [
                        "author"
                    ],
                    "limit": 1
                }
            ]
        }
    ]
}
```
In below table, the ranking is still maintained, but we collapse first on Filename and then do a second collapse on Author. For the first level collapse on Filename with a limit of 3, this results in keeping the first 3 rows excluding rows 4 and 5 and keeping the last 3 rows as is. And then for the second level collapse with a limit of 1, we don't need to change the first 3 rows we kept because each has a unique Author value, but we do need to exclude row 8 because James is listed again as Author and we only need unique values for that property.

| Filename | Author | Subject | Rank |
| :---- | :---- | :---- | :---- |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|

## Expected Response
When using collapseProperties, the response will contain an "isCollapsed" Boolean field for each result that represents the collapse state of that result.
```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "searchTerms": [
                "note"
            ],
            "hitsContainers": [
                {
                    "hits": [
                        {
                            "hitId": "94149344-55e4-4678-b22a-b37a9ed1ffff",
                            "rank": 1,
                            "isCollapsed": true,
                            "summary": "",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "sharepointIds": {
                                    "listId": "9b786f01-4668-4862-8bbf-443159c0ffff",
                                    "listItemId": "3"
                                },
                                "id": "94149344-55e4-4678-b22a-b37a9ed1ffff",
                                "createdDateTime": "2012-10-10T12:07:57Z",
                                "lastModifiedDateTime": "2022-11-30T08:38:47Z",
                                "parentReference": {
                                    "id": "01PPFMTLYPOGQADPQCOJAJTXZLKETTQP6F",
                                    "siteId": "microsoftapc-my.sharepoint.com,5b8af7a0-0c23-4719-ab6c-457c2104ea8a,2e4df0d0-c83a-473b-bed1-2d2046966d31"
                                },
                                "webUrl": "https://microsoftapc-my.sharepoint.com/Documents/Notes"
                            }
                        }
                    ],
                    "total": 4281349,
                    "moreResultsAvailable": true
                }
            ]
        }
    ],
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)"
}
```
## Known limitations
- The **collapseProperties** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, **externalItem**, **bookmark**, **acronym** or **qna**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
- [Collapse search results in SharePoint](/sharepoint/dev/general-development/customizing-search-results-in-sharepoint#collapse-similar-search-results-using-the-collapsespecification-property)
