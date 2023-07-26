---
title: "Create educationModuleResource"
description: "Create an education module resource."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [module resource](../resources/educationmoduleresource.md). Only teachers can perform this operation.

You can create the following types of module resources:

- [educationChannelResource](../resources/educationchannelresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationLinkedAssignmentResource](../resources/educationlinkedassignmentresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationWordResource](../resources/educationwordresource.md)

Every resource has an **@odata.type** property to indicate which type of resource is being created. 

> [!IMPORTANT] 
> Before you can upload an module resource, you must [set up the resources folder](../api/educationmodule-setupresourcesfolder.md) for the [educationModule](../resources/educationmodule.md) to upload the files to.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported.  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{class-id}/modules/{module-id}/resources
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of one of the following resource types: 

- [educationChannelResource](../resources/educationchannelresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationLinkedAssignmentResource](../resources/educationlinkedassignmentresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationWordResource](../resources/educationwordresource.md)

>**Note:** You can't use this operation to create an [educationExternalResource](../resources/educationexternalresource.md).

## Response
If successful, this method returns a `201 Created` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples
### Example 1: Create an educationLinkResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationlinkresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
         "@odata.type": "#microsoft.graph.educationLinkResource",
         "displayName":"2023-07-26T21_22_29_804Z",
         "link": "https://www.bing.com"
     }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "291f3577-7e48-4faa-8bde-f0b9bbdab5eb",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "2023-07-26T21_22_29_804Z",
        "createdDateTime": "2023-07-25T21:22:30.1455092Z",
        "lastModifiedDateTime": "2023-07-25T21:22:30.1455106Z",
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

### Example 2: Create an educationWordResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationwordresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{ 
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "test_2023-07-26T21_22_51_471Z.docx",
        "file" :{
            "odataid":"https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ23DHK5BYNOKJCZOUJZJBOAOUZP"
        }
     }
}
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
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "151c668c-6c77-495e-a28e-c02fa155375a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "test_2023-07-26T21_22_51_471Z.docx",
        "createdDateTime": "2023-07-25T21:22:53.549826Z",
        "lastModifiedDateTime": "2023-07-25T21:22:53.5498285Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ23DHK5BYNOKJCZOUJZJBOAOUZP",
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

### Example 3: Create an educationFileResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationfileresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "test_2023-07-26T21_22_53_926Z.pdf",
        "file" :{
          "odataid":"https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLJG2P74OLQ5FL5EXU3VY6BFSQ"
        }
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "fdf9d241-4737-4966-8914-90f832135ed7",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "test_2023-07-26T21_22_53_926Z.pdf",
        "createdDateTime": "2023-07-25T21:22:55.4340491Z",
        "lastModifiedDateTime": "2023-07-25T21:22:55.4340527Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLJG2P74OLQ5FL5EXU3VY6BFSQ",
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

### Example 4: Create an educationExcelResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationexcelresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_2023-07-26T21_22_55_695Z.xlsx",
        "file" :{
          "odataid":"https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLIO353OYQOBCIFCJGKBSLB4DK"
        }
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "13544dd3-7f42-42f6-a1d5-62da1885d7bc",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_2023-07-26T21_22_55_695Z.xlsx",
        "createdDateTime": "2023-07-25T21:22:56.6099823Z",
        "lastModifiedDateTime": "2023-07-25T21:22:56.6099861Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLIO353OYQOBCIFCJGKBSLB4DK",
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

### Example 5: Create an educationPowerPointResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationpowerpointresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName":"PptTest_2023-07-26T21_22_56_846Z.pptx",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZEG2AM23OQ5NA2LFTHERBABBK6"
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "4d112f68-0351-40ae-8adc-adfd14f320b3",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "PptTest_2023-07-26T21_22_56_846Z.pptx",
        "createdDateTime": "2023-07-25T21:22:58.1097081Z",
        "lastModifiedDateTime": "2023-07-25T21:22:58.1097107Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZEG2AM23OQ5NA2LFTHERBABBK6",
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

### Example 6: Create an educationMediaResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationmediaresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName":"MediaResource_2023-07-26T21_22_58_261Z.PNG",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3IYW2FOZYQNBELS7N4RRREIMVK"
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "17d1ed4d-ba9e-483e-82d2-c0e1826a288f",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "MediaResource_2023-07-26T21_22_58_261Z.PNG",
        "createdDateTime": "2023-07-25T21:22:59.0845073Z",
        "lastModifiedDateTime": "2023-07-25T21:22:59.0845089Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3IYW2FOZYQNBELS7N4RRREIMVK",
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

### Example 7: Create an educationChannelResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationChannelResource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/modules/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources
Content-type: application/json

{
    "resource": {
         "@odata.type": "#microsoft.graph.educationChannelResource",
         "url": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2",
         "displayName": "General"
    }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationChannelResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "360e073a-89ef-4f2f-835f-3b060a96f62d",
    "resource": {
        "@odata.type": "#microsoft.graph.educationChannelResource",
        "displayName": "General",
        "createdDateTime": "2023-07-25T21:23:01.6740431Z",
        "lastModifiedDateTime": "2023-07-25T21:23:01.6740457Z",
        "url": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2",
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

### Example 8: Create an educationLinkedAssignmentResource
#### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_educationLinkedAssignmentResource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
         "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
         "displayName":"2023-07-26T21_22_48_707Z",
         "url": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b563da70-710e-4a9b-ba86-94a4d73e5d21"
     }
}
```

#### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkedAssignmentResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('74b318fa-e882-4dad-8e1c-dab091b12fe7')/resources/$entity",
    "id": "bfbf27cb-2316-47f0-81d4-7bb028f01964",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
        "displayName": "2023-07-26T21_22_48_707Z",
        "createdDateTime": "2023-07-25T21:22:49.2808156Z",
        "lastModifiedDateTime": "2023-07-25T21:22:49.2808174Z",
        "url": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b563da70-710e-4a9b-ba86-94a4d73e5d21/",
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
