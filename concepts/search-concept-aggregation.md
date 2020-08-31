---
title: "Use the Microsoft Search API in Microsoft Graph refine queries with aggregations"
description: "You can use the Microsoft Search API to retrieve aggreations"
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Refine search results using aggregations

TODOSEARCHAPI@TingTing Can you please take a stab at this page describing the key scenario for Sharepoint---
- One example from sharepoint
- Document the known limitations
- The whole page below was copied from the Sharepoint File sample page. You should use the same structure. https://docs.microsoft.com/graph/search-concept-files
ENDTODO

TODO : Define aggregations and the various possibilities
Note that this page will be containing all the API details. So we should focus here on the key scenarios, not the specific API properties.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

## Examples

### Example 1 : Request aggregations for a string property 
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
              "query": "test"
          }
      },
      "from": 0,
      "size": 25,
      "aggregations": [
          {
              "field": "FileType",
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
          }
      ]
    }
  ]
}
```

#### Response

<!---TODO nmoreau team Include one example of externalItem response.-->
```json
{
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                    "_score": 1,
                    "_summary": "Unit <c0>tests</c0> should use techniques like dependency injection and simulators to replace and eliminate dependencies that are not in the direct area of <c0>test</c0> <ddd/> And that is why any training <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 2902968,
                        "fileSystemInfo": {
                            "createdDateTime": "2019-09-20T01:08:14Z",
                            "lastModifiedDateTime": "2020-08-30T23:53:16Z"
                        },
                        "id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                        "createdBy": {
                            "user": {
                                "displayName": "Derek Lalor;Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "createdDateTime": "2019-09-20T01:08:14+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "lastModifiedDateTime": "2020-08-30T23:53:16+00:00",
                        "name": "Unit Tests.one",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,dfbc70cb-9a52-49df-8933-d923f616ac17,77ce2b28-d9de-4656-83a9-6f03fe82fa20"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/o365esiweb/User Guide/Exchange User Handbook/Unit Tests.one"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                    "_score": 2,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-27T17:57:16Z",
                            "lastModifiedDateTime": "2020-07-27T17:57:05Z"
                        },
                        "id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                        "createdBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "createdDateTime": "2020-07-27T17:57:16+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "lastModifiedDateTime": "2020-07-27T17:57:05+00:00",
                        "name": "Tests",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,e59070e2-3034-49fc-993b-73c775f11c13,78ef5b26-0ec2-492a-b012-9cc94ded195a"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/MicrosoftSearchPublicAPI/Shared Documents/Tests"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                    "_score": 3,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-02-07T12:07:32Z",
                            "lastModifiedDateTime": "2020-02-07T12:07:32Z"
                        },
                        "id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                        "createdBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "createdDateTime": "2020-02-07T12:07:32+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "lastModifiedDateTime": "2020-02-07T12:07:32+00:00",
                        "name": "Test",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,e6281504-660c-489c-b849-c86690059a33"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/NIcks Doc Lib/Test"
                    }
                }
            ]
        }
    ]
}
```

### Example 2 : Request aggregations for a numeric value
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
                    "query": "test"
                }
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

#### Response

<!---TODO nmoreau team Include one example of externalItem response.-->
```json
{
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                    "_score": 1,
                    "_summary": "Unit <c0>tests</c0> should use techniques like dependency injection and simulators to replace and eliminate dependencies that are not in the direct area of <c0>test</c0> <ddd/> And that is why any training <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 2902968,
                        "fileSystemInfo": {
                            "createdDateTime": "2019-09-20T01:08:14Z",
                            "lastModifiedDateTime": "2020-08-30T23:53:16Z"
                        },
                        "id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                        "createdBy": {
                            "user": {
                                "displayName": "Derek Lalor;Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "createdDateTime": "2019-09-20T01:08:14+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "lastModifiedDateTime": "2020-08-30T23:53:16+00:00",
                        "name": "Unit Tests.one",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,dfbc70cb-9a52-49df-8933-d923f616ac17,77ce2b28-d9de-4656-83a9-6f03fe82fa20"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/o365esiweb/User Guide/Exchange User Handbook/Unit Tests.one"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                    "_score": 2,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-27T17:57:16Z",
                            "lastModifiedDateTime": "2020-07-27T17:57:05Z"
                        },
                        "id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                        "createdBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "createdDateTime": "2020-07-27T17:57:16+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "lastModifiedDateTime": "2020-07-27T17:57:05+00:00",
                        "name": "Tests",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,e59070e2-3034-49fc-993b-73c775f11c13,78ef5b26-0ec2-492a-b012-9cc94ded195a"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/MicrosoftSearchPublicAPI/Shared Documents/Tests"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                    "_score": 3,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-02-07T12:07:32Z",
                            "lastModifiedDateTime": "2020-02-07T12:07:32Z"
                        },
                        "id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                        "createdBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "createdDateTime": "2020-02-07T12:07:32+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "lastModifiedDateTime": "2020-02-07T12:07:32+00:00",
                        "name": "Test",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,e6281504-660c-489c-b849-c86690059a33"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/NIcks Doc Lib/Test"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "014NJNF7JWF5C5Z5LSQJGKCK4QQ6LOXYYB",
                    "_score": 4,
                    "_summary": "<c0>Test</c0> code is not product code, but an unreadable <c0>test</c0> will be difficult to investigate when it fails <ddd/> Having a <c0>test</c0> that does a little bit is better than having no <c0>tests</c0> <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 542062,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-04-16T20:13:02Z",
                            "lastModifiedDateTime": "2020-06-04T21:29:55Z"
                        },
                        "id": "014NJNF7JWF5C5Z5LSQJGKCK4QQ6LOXYYB",
                        "createdBy": {
                            "user": {
                                "displayName": "Marc Pasarin;Satya Maurya"
                            }
                        },
                        "createdDateTime": "2020-04-16T20:13:02+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Satya Maurya"
                            }
                        },
                        "lastModifiedDateTime": "2020-06-04T21:29:55+00:00",
                        "name": "TAB Test Brown bag.pptx",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,258e1f20-fb33-4141-bcbb-c0f40cf83dc6,2aeac71c-2716-4c01-b529-78b6f93ed3db"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/ECMandSearchinODSP/Shared Documents/Engineering/Brown bags/TAB Test Brown bag.pptx"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01XLB2FKWMAHZ65CTRKJAIDK2X2LWMFOEK",
                    "_score": 5,
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
                    "_score": 6,
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
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01NVAH7ALZ5Q3VP3DP45G2ACLAVZNTZ35Y",
                    "_score": 7,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2018-08-01T19:11:54Z",
                            "lastModifiedDateTime": "2018-08-01T19:11:54Z"
                        },
                        "id": "01NVAH7ALZ5Q3VP3DP45G2ACLAVZNTZ35Y",
                        "createdBy": {
                            "user": {
                                "displayName": "Nick Buelich"
                            }
                        },
                        "createdDateTime": "2018-08-01T19:11:54+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Nick Buelich"
                            }
                        },
                        "lastModifiedDateTime": "2018-08-01T19:11:54+00:00",
                        "name": "Test Subsite Notebook",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,de8914c3-5c81-47ee-bf76-e8b08949fe7f"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/Subsite/SiteAssets/Test Subsite Notebook"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01SSEWAQFLDSQGFQDAOZEYPQCLTO6TFAGG",
                    "_score": 8,
                    "_summary": "Install <c0>test</c0> cert\r\n\r\nStashClient.exe -env:<c0>test</c0> installcert -name:mds/<c0>Test</c0>/MdsTestEncryption_2016.pfx -storename:MY\r\n\r\nSelect and <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 370699,
                        "fileSystemInfo": {
                            "createdDateTime": "2016-09-08T18:03:38Z",
                            "lastModifiedDateTime": "2020-08-11T22:46:28Z"
                        },
                        "id": "01SSEWAQFLDSQGFQDAOZEYPQCLTO6TFAGG",
                        "createdBy": {
                            "user": {
                                "displayName": "Sundar Sundaresan;Michael Gleason"
                            }
                        },
                        "createdDateTime": "2016-09-08T18:03:38+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Michael Gleason"
                            }
                        },
                        "lastModifiedDateTime": "2020-08-11T22:46:28+00:00",
                        "name": "Smoke Test.one",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint.com,8fa49897-a327-41ed-97fd-2d7168e5a814,7025016e-54eb-47c7-a2ab-ad9addf76b8c"
                        },
                        "webUrl": "https://microsoft.sharepoint.com/teams/WAG/EngSys/Shared Documents/Notebooks/Geneva Infra and Manageability/Smoke Test.one"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01Z35JWZYDGCZJ4YFJHVE24CSZELOKIWDM",
                    "_score": 9,
                    "_summary": "Anhang: Product Offers, Partner Offers, Information Material <ddd/> Start Remote Work Portal (internal):\r\nhttps://microsoft.sharepoint.com/teams/MicrosoftRemoteWork <ddd/> It can be used on the <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 21651964,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-03-20T08:41:58Z",
                            "lastModifiedDateTime": "2020-07-14T03:27:02Z"
                        },
                        "id": "01Z35JWZYDGCZJ4YFJHVE24CSZELOKIWDM",
                        "createdBy": {
                            "user": {
                                "displayName": "Katarina Klapan;Florian Slezak;Carol Leishman (CELA)"
                            }
                        },
                        "createdDateTime": "2020-03-20T08:41:58+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Carol Leishman (CELA)"
                            }
                        },
                        "lastModifiedDateTime": "2020-07-14T03:27:02+00:00",
                        "name": "MSFT COVID Resources.pptx",
                        "parentReference": {
                            "siteId": "microsofteur.sharepoint.com,ced3cb6a-793d-4a11-bfe3-5c27f73663e5,85e98f55-185b-4eea-9536-d1744f87a349"
                        },
                        "webUrl": "https://microsofteur.sharepoint.com/teams/atcovid19customerpartnercommunication/Shared Documents/Apps/Yammer/MSFT COVID Resources.pptx"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01I5V3WNOKDZF2UVTK3FD3WAGOMFCXCTWZ",
                    "_score": 10,
                    "_summary": "Automation - How much of the <c0>test</c0> scenarios are automated as Unit <c0>Tests</c0> and/or Scenario <c0>Tests</c0> <ddd/> Manual <c0>Tests</c0> full <c0>test</c0> pass is scheduled with manual <c0>test</c0> team (R0 <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 37809,
                        "fileSystemInfo": {
                            "createdDateTime": "2019-08-09T07:36:26Z",
                            "lastModifiedDateTime": "2019-09-06T23:50:41Z"
                        },
                        "id": "01I5V3WNOKDZF2UVTK3FD3WAGOMFCXCTWZ",
                        "createdBy": {
                            "user": {
                                "displayName": "Visha Chadha;Ben Xiaojun Li"
                            }
                        },
                        "createdDateTime": "2019-08-09T07:36:26+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Ben Xiaojun Li"
                            }
                        },
                        "lastModifiedDateTime": "2019-09-06T23:50:41+00:00",
                        "name": "SO Test Plan.docx",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,744833d0-bcdd-43b1-a10c-ac4f7615b6c3,53616a48-8964-4d25-9849-f9e8718a7c68"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/SVMTSemanticObjects/Shared Documents/Specs/SO Test Plan.docx"
                    }
                }
            ],
            "total": 3093684,
            "moreResultsAvailable": true,
            "aggregations": [
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "Size",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "Less than 100",
                            "count": 119841,
                            "aggregationFilterToken": "range(min, 100)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "100 up to 1000",
                            "count": 24428,
                            "aggregationFilterToken": "range(100, 1000)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "1000 and up",
                            "count": 2979858,
                            "aggregationFilterToken": "range(1000, max, to=\"le\")"
                        }
                    ]
                }
            ]
        }
    ]
}
```

### Example 3 : Request aggregations for a custom numeric ranges
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
                    "query": "test"
                }
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

#### Response

<!---TODO nmoreau team Include one example of externalItem response.-->
```json
{
    "@odata.type": "#microsoft.graph.searchResponse",
    "hitsContainers": [
        {
            "@odata.type": "#microsoft.graph.searchHitsContainer",
            "hits": [
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                    "_score": 1,
                    "_summary": "Unit <c0>tests</c0> should use techniques like dependency injection and simulators to replace and eliminate dependencies that are not in the direct area of <c0>test</c0> <ddd/> And that is why any training <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 2902968,
                        "fileSystemInfo": {
                            "createdDateTime": "2019-09-20T01:08:14Z",
                            "lastModifiedDateTime": "2020-08-30T23:53:16Z"
                        },
                        "id": "01R3WFKUGRBL3NDR5CRRCLHYFEJHAWTS3E",
                        "createdBy": {
                            "user": {
                                "displayName": "Derek Lalor;Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "createdDateTime": "2019-09-20T01:08:14+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Brittany Torelli (AFFIRMA)"
                            }
                        },
                        "lastModifiedDateTime": "2020-08-30T23:53:16+00:00",
                        "name": "Unit Tests.one",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,dfbc70cb-9a52-49df-8933-d923f616ac17,77ce2b28-d9de-4656-83a9-6f03fe82fa20"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/o365esiweb/User Guide/Exchange User Handbook/Unit Tests.one"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                    "_score": 2,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-07-27T17:57:16Z",
                            "lastModifiedDateTime": "2020-07-27T17:57:05Z"
                        },
                        "id": "01AWORQBESTYCDTIWY7BBIAHON3LNIRSGX",
                        "createdBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "createdDateTime": "2020-07-27T17:57:16+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Nicolas Moreau"
                            }
                        },
                        "lastModifiedDateTime": "2020-07-27T17:57:05+00:00",
                        "name": "Tests",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,e59070e2-3034-49fc-993b-73c775f11c13,78ef5b26-0ec2-492a-b012-9cc94ded195a"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/MicrosoftSearchPublicAPI/Shared Documents/Tests"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                    "_score": 3,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-02-07T12:07:32Z",
                            "lastModifiedDateTime": "2020-02-07T12:07:32Z"
                        },
                        "id": "01XLB2FKXHF5TOAHKY3NDYC67AHXU6RGE5",
                        "createdBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "createdDateTime": "2020-02-07T12:07:32+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Morten Devold"
                            }
                        },
                        "lastModifiedDateTime": "2020-02-07T12:07:32+00:00",
                        "name": "Test",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,e6281504-660c-489c-b849-c86690059a33"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/NIcks Doc Lib/Test"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "014NJNF7JWF5C5Z5LSQJGKCK4QQ6LOXYYB",
                    "_score": 4,
                    "_summary": "<c0>Test</c0> code is not product code, but an unreadable <c0>test</c0> will be difficult to investigate when it fails <ddd/> Having a <c0>test</c0> that does a little bit is better than having no <c0>tests</c0> <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 542062,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-04-16T20:13:02Z",
                            "lastModifiedDateTime": "2020-06-04T21:29:55Z"
                        },
                        "id": "014NJNF7JWF5C5Z5LSQJGKCK4QQ6LOXYYB",
                        "createdBy": {
                            "user": {
                                "displayName": "Marc Pasarin;Satya Maurya"
                            }
                        },
                        "createdDateTime": "2020-04-16T20:13:02+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Satya Maurya"
                            }
                        },
                        "lastModifiedDateTime": "2020-06-04T21:29:55+00:00",
                        "name": "TAB Test Brown bag.pptx",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,258e1f20-fb33-4141-bcbb-c0f40cf83dc6,2aeac71c-2716-4c01-b529-78b6f93ed3db"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/ECMandSearchinODSP/Shared Documents/Engineering/Brown bags/TAB Test Brown bag.pptx"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01XLB2FKWMAHZ65CTRKJAIDK2X2LWMFOEK",
                    "_score": 5,
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
                    "_score": 6,
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
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01NVAH7ALZ5Q3VP3DP45G2ACLAVZNTZ35Y",
                    "_score": 7,
                    "_summary": "",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 0,
                        "fileSystemInfo": {
                            "createdDateTime": "2018-08-01T19:11:54Z",
                            "lastModifiedDateTime": "2018-08-01T19:11:54Z"
                        },
                        "id": "01NVAH7ALZ5Q3VP3DP45G2ACLAVZNTZ35Y",
                        "createdBy": {
                            "user": {
                                "displayName": "Nick Buelich"
                            }
                        },
                        "createdDateTime": "2018-08-01T19:11:54+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Nick Buelich"
                            }
                        },
                        "lastModifiedDateTime": "2018-08-01T19:11:54+00:00",
                        "name": "Test Subsite Notebook",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,d40e7f0e-bbed-4563-8149-ea2060822f81,de8914c3-5c81-47ee-bf76-e8b08949fe7f"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/NickTestSPDFSite/Subsite/SiteAssets/Test Subsite Notebook"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01SSEWAQFLDSQGFQDAOZEYPQCLTO6TFAGG",
                    "_score": 8,
                    "_summary": "Install <c0>test</c0> cert\r\n\r\nStashClient.exe -env:<c0>test</c0> installcert -name:mds/<c0>Test</c0>/MdsTestEncryption_2016.pfx -storename:MY\r\n\r\nSelect and <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 370699,
                        "fileSystemInfo": {
                            "createdDateTime": "2016-09-08T18:03:38Z",
                            "lastModifiedDateTime": "2020-08-11T22:46:28Z"
                        },
                        "id": "01SSEWAQFLDSQGFQDAOZEYPQCLTO6TFAGG",
                        "createdBy": {
                            "user": {
                                "displayName": "Sundar Sundaresan;Michael Gleason"
                            }
                        },
                        "createdDateTime": "2016-09-08T18:03:38+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Michael Gleason"
                            }
                        },
                        "lastModifiedDateTime": "2020-08-11T22:46:28+00:00",
                        "name": "Smoke Test.one",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint.com,8fa49897-a327-41ed-97fd-2d7168e5a814,7025016e-54eb-47c7-a2ab-ad9addf76b8c"
                        },
                        "webUrl": "https://microsoft.sharepoint.com/teams/WAG/EngSys/Shared Documents/Notebooks/Geneva Infra and Manageability/Smoke Test.one"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01Z35JWZYDGCZJ4YFJHVE24CSZELOKIWDM",
                    "_score": 9,
                    "_summary": "Anhang: Product Offers, Partner Offers, Information Material <ddd/> Start Remote Work Portal (internal):\r\nhttps://microsoft.sharepoint.com/teams/MicrosoftRemoteWork <ddd/> It can be used on the <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 21651964,
                        "fileSystemInfo": {
                            "createdDateTime": "2020-03-20T08:41:58Z",
                            "lastModifiedDateTime": "2020-07-14T03:27:02Z"
                        },
                        "id": "01Z35JWZYDGCZJ4YFJHVE24CSZELOKIWDM",
                        "createdBy": {
                            "user": {
                                "displayName": "Katarina Klapan;Florian Slezak;Carol Leishman (CELA)"
                            }
                        },
                        "createdDateTime": "2020-03-20T08:41:58+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Carol Leishman (CELA)"
                            }
                        },
                        "lastModifiedDateTime": "2020-07-14T03:27:02+00:00",
                        "name": "MSFT COVID Resources.pptx",
                        "parentReference": {
                            "siteId": "microsofteur.sharepoint.com,ced3cb6a-793d-4a11-bfe3-5c27f73663e5,85e98f55-185b-4eea-9536-d1744f87a349"
                        },
                        "webUrl": "https://microsofteur.sharepoint.com/teams/atcovid19customerpartnercommunication/Shared Documents/Apps/Yammer/MSFT COVID Resources.pptx"
                    }
                },
                {
                    "@odata.type": "#microsoft.graph.searchHit",
                    "_id": "01I5V3WNOKDZF2UVTK3FD3WAGOMFCXCTWZ",
                    "_score": 10,
                    "_summary": "Automation - How much of the <c0>test</c0> scenarios are automated as Unit <c0>Tests</c0> and/or Scenario <c0>Tests</c0> <ddd/> Manual <c0>Tests</c0> full <c0>test</c0> pass is scheduled with manual <c0>test</c0> team (R0 <ddd/> ",
                    "_source": {
                        "@odata.type": "#microsoft.graph.driveItem",
                        "size": 37809,
                        "fileSystemInfo": {
                            "createdDateTime": "2019-08-09T07:36:26Z",
                            "lastModifiedDateTime": "2019-09-06T23:50:41Z"
                        },
                        "id": "01I5V3WNOKDZF2UVTK3FD3WAGOMFCXCTWZ",
                        "createdBy": {
                            "user": {
                                "displayName": "Visha Chadha;Ben Xiaojun Li"
                            }
                        },
                        "createdDateTime": "2019-08-09T07:36:26+00:00",
                        "lastModifiedBy": {
                            "user": {
                                "displayName": "Ben Xiaojun Li"
                            }
                        },
                        "lastModifiedDateTime": "2019-09-06T23:50:41+00:00",
                        "name": "SO Test Plan.docx",
                        "parentReference": {
                            "siteId": "microsoft.sharepoint-df.com,744833d0-bcdd-43b1-a10c-ac4f7615b6c3,53616a48-8964-4d25-9849-f9e8718a7c68"
                        },
                        "webUrl": "https://microsoft.sharepoint-df.com/teams/SVMTSemanticObjects/Shared Documents/Specs/SO Test Plan.docx"
                    }
                }
            ],
            "total": 3093684,
            "moreResultsAvailable": true,
            "aggregations": [
                {
                    "@odata.type": "#microsoft.substrateSearch.searchAggregation",
                    "field": "Size",
                    "buckets": [
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "Less than 100",
                            "count": 119841,
                            "aggregationFilterToken": "range(min, 100)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "100 up to 1000",
                            "count": 24428,
                            "aggregationFilterToken": "range(100, 1000)"
                        },
                        {
                            "@odata.type": "#microsoft.substrateSearch.searchHitsBucket",
                            "key": "1000 and up",
                            "count": 2979858,
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

TODOSEARCHAPI

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
