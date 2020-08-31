---
title: "Use the Microsoft Search API to sort search results"
description: "You sort search results using the Microsoft Search API."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Sort search results

TODOSEARCHAPI@Lan Can you please take a stab at this page describing the key scenario for Sharepoint---
- One example from sharepoint
- Document the known limitations
- Include single / multi level sort
- Include an example with sort by author and then relevance(Need to confirm with Nicolas)
- The whole page below was copied from the Sharepoint File sample page. You should use the same structure. https://docs.microsoft.com/graph/search-concept-files
ENDTODO

You can use the Microsoft Search API to search files stored in SharePoint or OneDrive. The Microsoft Search API uses a relevance model that makes use of signals from Microsoft Graph about users' relationships and activities. This enables you to return and promote the content that users care about, in a file search experience that is consistent with the **Files** tab that lists search results in SharePoint.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

You can use KQL in search terms of queries for SharePoint and OneDrive. For example:

- `"query": "contoso filetype:docx OR filetype:doc"` scopes the query to Word documents.
- `"query": "test path:\"https://contoso.sharepoint.com/sites/Team Site/Documents/Project\\""` scopes the query to a particular folder within a site.

In order to be valid, properties restriction should specify a valid, queryable managed property name in the condition.

## Example

### Single-level Sort

#### Request 

```HTTP
POST /search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
      "entityTypes": [
          "driveItem"
      ],
      "query": {
          "query_string": {
              "query": "Financial"
          }
      },
      "sortProperties": [
          {
              "name": "CreatedDateTime"
          }
      ],
      "from": 0,
      "size": 25
    }
  ]
}
```

### Response

```json
{
  "@odata.type": "#microsoft.graph.searchResponse",
  "searchTerms": [
      "financial"
  ],
  "hitsContainers": [
    {
      "@odata.type": "#microsoft.graph.searchHitsContainer",
      "hits": [
          {
            "@odata.type": "#microsoft.graph.searchHit",
            "_id": "014OV5URS5JBS7DWMW7ZH35MVDRX7DYDTO",
            "_score": 1,
            "_summary": "Created Created by Name Assigned to  Partner Company Name Status PDMR Status Industry Focus Next Follow-Up Last Comms Sent Last Comms Sent By Partner Type Background on why you <ddd/> ",
            "_source": {
              "@odata.type": "#microsoft.graph.driveItem",
              "size": 445021,
              "fileSystemInfo": {
                  "createdDateTime": "2020-08-31T00:00:47Z",
                  "lastModifiedDateTime": "2020-08-31T00:00:45Z"
              },
              "id": "014OV5URS5JBS7DWMW7ZH35MVDRX7DYDTO",
              "createdBy": {
                  "user": {
                      "displayName": "Patrick Wan"
                  }
              },
              "createdDateTime": "2020-08-31T00:00:47+00:00",
              "lastModifiedBy": {
                  "user": {
                      "displayName": "Patrick Wan"
                  }
              },
              "lastModifiedDateTime": "2020-08-31T00:00:45+00:00",
              "name": "2020.08.31 SharePoint List Export v1.xlsx",
              "parentReference": {
                  "siteId": "microsoft.sharepoint.com,ea8f3341-3ab0-4b4c-b898-d9c9f224f7ed,80b0474e-37b4-4751-81bc-12d5121181de"
              },
              "webUrl": "https://microsoft.sharepoint.com/teams/AustraliaPBD/Shared Documents/2.Partner Programs/1. Partner Recruitment/2. Partner Recruitment/Partner Recruit Tracker/Power BI Dashboard - Working (Pat)/Exports/2020.08.31 SharePoint List Export v1.xlsx"
            }
          },
          {
            "@odata.type": "#microsoft.graph.searchHit",
            "_id": "01INDMDMLCX2BU6IDUDRBKHIQRAC7XENSA",
            "_score": 2,
            "_summary": "https://alation.linkedin.biz/compose/query/238125/ ULTIMATE_PARENT_ACCOUNT_ID sfdc_account_id account_name opportunity_number type renew_target_close_date close_date <ddd/> ",
            "_source": {
              "@odata.type": "#microsoft.graph.driveItem",
              "size": 3689566,
              "fileSystemInfo": {
                  "createdDateTime": "2020-08-30T23:16:45Z",
                  "lastModifiedDateTime": "2020-08-30T23:31:00Z"
              },
              "id": "01INDMDMLCX2BU6IDUDRBKHIQRAC7XENSA",
              "createdBy": {
                  "user": {
                      "displayName": "Lauren Jackson"
                  }
              },
              "createdDateTime": "2020-08-30T23:16:45+00:00",
              "lastModifiedBy": {
                  "user": {
                      "displayName": "Lauren Jackson"
                  }
              },
              "lastModifiedDateTime": "2020-08-30T23:31:00+00:00",
              "name": "Contract Extension ROI.xlsx",
              "parentReference": {
                  "siteId": "microsoft.sharepoint.com,8f2a51c0-085b-46e0-837a-d727acf79917,44136fc3-226b-47c7-96bb-ecd43c374dbc"
              },
              "webUrl": "https://microsoft.sharepoint.com/teams/LLS_GlobalSOPS/Shared Documents/1. NAMER RM/5. Projects/Contract Extension ROI.xlsx"
            }
          }
        ]
      }
    ]
  }
```

### Multi-level Sort

#### Request 

```HTTP
POST /search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
      "entityTypes": [
          "microsoft.graph.driveItem"
      ],
      "query": {
          "query_string": {
              "query": "test"
          }
      },
      "sortProperties ": [
          {
              "name": "Name"
          },
          {
              "name": "CreatedDateTime",
              "isDescending": false
          }
      ],
      "from": 0,
      "size": 20
    }
  ]
}
```

#### Response

```json
{
  "@odata.type": "#microsoft.graph.searchResponse",
  "searchTerms": [
      "financial"
  ],
  "hitsContainers": [
    {
      "@odata.type": "#microsoft.graph.searchHitsContainer",
      "hits": [
          {
            "@odata.type": "#microsoft.graph.searchHit",
            "_id": "01XLB2FKWMAHZ65CTRKJAIDK2X2LWMFOEK",
            "_score": 1,
            "_summary": "<c0>Test</c0> doc A <ddd/> ",
            "_source": {
              "@odata.type": "#microsoft.graph.driveItem",
              "size": 28870,
              "fileSystemInfo": {
                  "createdDateTime": "2017-11-15T01:37:56Z",
                  "lastModifiedDateTime": "2017-09-12T19:52:42Z"
              },
              "id": "01XLB2FKWMAHZ65CTRKJAIDK2X2LWMFOEK",
              "createdBy": {
                  "user": {
                      "displayName": "Nikita Voronkov;Nick Buelich"
                  }
              },
              "createdDateTime": "2017-11-15T01:37:56+00:00",
              "lastModifiedBy": {
                  "user": {
                      "displayName": "Nick Buelich"
                  }
              },
              "lastModifiedDateTime": "2017-09-12T19:52:42+00:00",
              "name": "Test Document A.docx",
              "parentReference": {
                  "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,e6281504-660c-489c-b849-c86690059a33"
              },
              "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/Shared Documents/Test Document A.docx"
            }
          },
          {
            "@odata.type": "#microsoft.graph.searchHit",
            "_id": "01CXLNFN432TFEI6RYVBC32XQ7VDJSIBO6",
            "_score": 2,
            "_summary": "with a decentralized setup where each EM has a <c0>test</c0> tenant that the feature teams can use <ddd/> Submission Page and submit a request to get a promo code to pay for the <c0>test</c0> tenant <ddd/> ",
            "_source": {
              "@odata.type": "#microsoft.graph.driveItem",
              "size": 458227,
              "fileSystemInfo": {
                  "createdDateTime": "2020-04-07T18:06:32Z",
                  "lastModifiedDateTime": "2020-08-04T23:35:43Z"
              },
              "id": "01CXLNFN432TFEI6RYVBC32XQ7VDJSIBO6",
              "createdBy": {
                  "user": {
                      "displayName": "Preethi Vemu;Saraswathy Srinivasan;Suyang Jiang"
                  }
              },
              "createdDateTime": "2020-04-07T18:06:32+00:00",
              "lastModifiedBy": {
                  "user": {
                      "displayName": "Suyang Jiang"
                  }
              },
              "lastModifiedDateTime": "2020-08-04T23:35:43+00:00",
              "name": "Test tenant setup in SDF.docx",
              "parentReference": {
                  "siteId": "microsoft.sharepoint-df.com,f87fd8aa-0edb-4b5f-aa60-6a3cbe62dbae,d9ed8a98-2ede-4fb6-87ed-5dace6e16621"
              },
              "webUrl": "https://microsoft.sharepoint-df.com/sites/M365CoreSearchExtensibilityTeam/Shared Documents/ASC/Test tenant setup in SDF.docx"
            }
          }
        ]
      }
    ]
  }
```

## Known limitations

TODOSEARCHAPI

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
