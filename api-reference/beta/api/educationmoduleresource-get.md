---
title: "Get educationModuleResource"
description: "Get the properties of a specific resource on an module.  "
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of an [education module resource](../resources/educationmoduleresource.md) associated with a [module](../resources/educationmodule.md). Only teachers, students, and applications with application permissions can perform this operation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | EduCurricula.Read, EduCurricula.ReadWrite   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application |  EduCurricula.Read.All, EduCurricula.ReadWrite.All  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{class-id}/modules/{module-id}/resources/{resource-id}
```

## Optional query parameters

For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples
### Example 1: Get an educationWordResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationmoduleresource_e1"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/3b0198d2-590b-497f-ada6-35e2ba841879
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "3b0198d2-590b-497f-ada6-35e2ba841879",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "test_2023-07-25T22_02_34_134Z.docx",
        "createdDateTime": "2023-07-24T22:02:37.3803976Z",
        "lastModifiedDateTime": "2023-07-24T22:02:37.3804005Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!G2qSPDsXR0y4Bb2vODednawfynEIaD1OvPVeH4wbOp_3GV_mcV9MRLur9XlH200N/items/01IVG3LZKVUHVKYNV6RBEK3LBYR2VLXOEM",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
    
```

### Example 2: Get an educationLinkResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationlinkresource_from_educationmodule_e2"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/5958ce41-9b9d-4e60-b8a6-5a4e7c41045c
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "5958ce41-9b9d-4e60-b8a6-5a4e7c41045c",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "2023-07-25T22_02_13_541Z",
        "createdDateTime": "2023-07-24T22:02:16.067095Z",
        "lastModifiedDateTime": "2023-07-24T22:02:16.0670968Z",
        "link": "https://www.bing.com",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 3: Get an educationExcelResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationexcelresource_from_educationmodule_e3"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/7a1c6461-2a2e-43b9-b8b4-bea316b7802b
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "7a1c6461-2a2e-43b9-b8b4-bea316b7802b",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_2023-07-25T22_02_36_665Z.xlsx",
        "createdDateTime": "2023-07-24T22:02:39.7182968Z",
        "lastModifiedDateTime": "2023-07-24T22:02:39.7182995Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!G2qSPDsXR0y4Bb2vODednawfynEIaD1OvPVeH4wbOp_3GV_mcV9MRLur9XlH200N/items/01IVG3LZNHXFDGXMLE5VB3DUFKI5NKTDHS",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 4: Get an educationPowerPointResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationpowerpointresource_from_educationmodule_e4"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/18e00c9f-0292-4a5b-be67-47edebe676a2
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "18e00c9f-0292-4a5b-be67-47edebe676a2",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "PptTest_2023-07-25T22_02_37_776Z.pptx",
        "createdDateTime": "2023-07-24T22:02:41.1120038Z",
        "lastModifiedDateTime": "2023-07-24T22:02:41.1120064Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!G2qSPDsXR0y4Bb2vODednawfynEIaD1OvPVeH4wbOp_3GV_mcV9MRLur9XlH200N/items/01IVG3LZNMSPWWUYRRXVGIMDFREOBVH52L",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 5: Get an educationFileResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationfileresource_from_educationmodule_e5"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/f5d4ac54-10ae-48f1-9e8b-6e961f490652
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "f5d4ac54-10ae-48f1-9e8b-6e961f490652",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "test_2023-07-25T22_02_35_445Z.csv",
        "createdDateTime": "2023-07-24T22:02:38.6052639Z",
        "lastModifiedDateTime": "2023-07-24T22:02:38.6052675Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!G2qSPDsXR0y4Bb2vODednawfynEIaD1OvPVeH4wbOp_3GV_mcV9MRLur9XlH200N/items/01IVG3LZKHCVZECOHRIJDINECGB5LHPCJU",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 6: Get an educationMediaResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationmediaresource_from_educationmodule_e6"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/2bca0c1d-0bc6-4783-9451-1ba29b73421e
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "2bca0c1d-0bc6-4783-9451-1ba29b73421e",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "MediaResource_2023-07-25T22_02_39_107Z.PNG",
        "createdDateTime": "2023-07-24T22:02:41.9950633Z",
        "lastModifiedDateTime": "2023-07-24T22:02:41.995065Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!G2qSPDsXR0y4Bb2vODednawfynEIaD1OvPVeH4wbOp_3GV_mcV9MRLur9XlH200N/items/01IVG3LZOYDB2FBK6DONA37DJ2VP6DNU4P",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 7: Get an educationChannelResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationchannelresource_from_educationmodule_e6"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/e123d8c6-29cd-4855-b1b6-9c6475290b1b
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationChannelResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "e123d8c6-29cd-4855-b1b6-9c6475290b1b",
    "resource": {
        "@odata.type": "#microsoft.graph.educationChannelResource",
        "displayName": "General",
        "createdDateTime": "2023-07-24T22:02:44.2287362Z",
        "lastModifiedDateTime": "2023-07-24T22:02:44.2287383Z",
        "url": "https://graph.microsoft.com/v1.0/teams/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/channels/19:ad85e4c2f99f4df491971b12c40284a8@thread.tacv2",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```

### Example 8: Get an educationLinkedAssignmentResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_educationlinkedassignmentresource_from_educationmodule_e6"
}-->
```http
GET https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/modules/72a3879f-af73-4179-8a0e-4cb29c0fa369/resources/c7a52867-11e9-4fb3-ae81-ce7d1fe0fd55
```

#### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkedAssignmentResource"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('cff47bf3-791b-4b0a-ad6b-92fa66917cc7')/modules('72a3879f-af73-4179-8a0e-4cb29c0fa369')/resources/$entity",
    "id": "c7a52867-11e9-4fb3-ae81-ce7d1fe0fd55",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
        "displayName": "2023-07-25T22_02_31_674Z",
        "createdDateTime": "2023-07-24T22:02:34.3183458Z",
        "lastModifiedDateTime": "2023-07-24T22:02:34.3183472Z",
        "url": "https://graph.microsoft.com/beta/education/classes/cff47bf3-791b-4b0a-ad6b-92fa66917cc7/assignments/5f54e105-606b-49e0-868d-39fd32db4c61/",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                "displayName": null
            }
        }
    }
}
```
