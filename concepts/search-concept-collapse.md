---
title: "Use the Microsoft Search API to collapse search results"
description: "Use the Microsoft Graph Search API collapseProperties property to collapse search results."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to collapse search results

You can use the Microsoft Search API in Microsoft Graph to collapse items in a search result set. This allows you to display results in a concise, readable way. You can specify the criteria for collapsing by using the **collapseProperties** property in a [searchRequest](/graph/api/resources/searchrequest) object, which contains one or more **collapseProperty** parameters to set fields to be collapsed and limit the size of the results. The **collapseProperties** property is supported for the following entity types: 

- **site**
- **drive**
- **driveItem**
- **list**
- **listItem**
- **externalItem**

The following table lists the collapse scenarios that you can enable.

| Scenarios | Description | Example |
| :----     | :----       | :----  |
|**Basic collapse**|Collapse by any single queryable and either sortable or refineable property. This limit value must be an integer between 1 and 32767.|`"collapseProperties":[{"fields":["filename"],"limit":3}]`|
|**Compound collapse**|Collapse by compound fields of properties. There is no maximum number of fields, but at least two fields must be specified. This limit value must be an integer between 1 and 32767.|`"collapseProperties":[{"fields":["filename","author"],"limit":2}]`|
|**Multi-level collapse**|Collapse by level-by-level **collapseProperty**. There is no maximum number of levels, but at least two levels must be specified. The limit value of each level must be an integer between 1 and 32767, and must be equal to or less than the upper-level limit value. |`"collapseProperties":[{"fields":["filename"],"limit":3},{"fields":["author"],"limit":1}]`|

## Examples
The following table shows a sample list in SharePoint. The examples in this section use this list to show how the **collapseProperties** property works.

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
Group the items based on **Filename** and show the top three ("limit": 3) for each group. As you can see in the following table, the ranking is maintained. The top three and last three rows remain, but rows four and five are excluded because the **collapseProperties** limit is 3.

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
In the following table, the ranking is maintained, but the results are collapsed by two properties simultaneously to find unique combinations of Filename and Author. This results in keeping the first four rows and excluding row five, because the combination of Note (Filename) and James (Author) is only allowed up to 2 times. The last three rows remain for the same reason.

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
In the following table, the ranking is maintained, but the results are collapsed first on Filename and then on Author. For the first -evel collapse on Filename, with a limit of 3, the first three rows remain, rows four and five are removed, and the last three rows remain as is. For the second-level collapse with a limit of 1, the first three rows don't change because each has a unique Author value. Row eight is excluded because James is listed again as Author and that property must have unique values.

| Filename | Author | Subject | Rank |
| :---- | :---- | :---- | :---- |
|Note|Andy|Poetry|1|
|Note|James|History|2|
|Note|Robert|Culture|3|
|Notebook|James|Science|6|
|Notebook|Andy|Culture|7|

## Response
When you use **collapseProperties**, the response contains an **isCollapsed** Boolean property for each result. This property indicates the collapse state of the result.

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
The **collapseProperties** property is not supported for the following resources: **message**,**chatMessage**, **event**, **person**, **externalItem**, **bookmark**, **acronym** or **qna**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
- [Collapse search results in SharePoint](/sharepoint/dev/general-development/customizing-search-results-in-sharepoint#collapse-similar-search-results-using-the-collapsespecification-property)
