---
title: "Create educationModuleResource"
description: "Create an education module resource."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [v1.0-disclaimer](../../includes/v1.0-disclaimer.md)]

Create a [resource](../resources/educationmoduleresource.md) in a [module](../resources/educationmodule.md). Only teachers can perform this operation.

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
> To upload a module resource, you need to first [set up the resources folder](../api/educationmodule-setupresourcesfolder.md) for the [educationModule](../resources/educationmodule.md) where the files will be uploaded.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_post_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationmodule-post-resources-permissions.md)]

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
## Example 1: Create an educationLinkResource
### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_educationlinkresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
         "@odata.type": "#microsoft.graph.educationLinkResource",
         "displayName":"Bing site",
         "link": "https://www.bing.com"
     }
}
```

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "id": "b8dc1d8e-7606-467f-a1e4-c9f1a864d208",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "Bing site",
        "createdDateTime": "2024-01-17T17:51:45.1612454Z",
        "lastModifiedDateTime": "2024-01-17T17:51:45.1612463Z",
        "link": "https://www.bing.com",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 2: Create an educationWordResource
### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_educationwordresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/97acf4f0-d62f-4b98-8827-6ac805fb6949/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Word_file.docx",
        "file": {
            "odataid": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3XYXSBRKMQM5GISQGPVO6BNO27"
        }
    }
}
```

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('97acf4f0-d62f-4b98-8827-6ac805fb6949')/resources/$entity",
    "id": "2d8a475d-918e-4992-b8fe-97ab613c1c49",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Word_file.docx",
        "createdDateTime": "2024-01-18T17:05:34.3789404Z",
        "lastModifiedDateTime": "2024-01-18T17:05:34.378942Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3XYXSBRKMQM5GISQGPVO6BNO27",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 3: Create an educationFileResource
### Request
The following example shows a request.

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
        "displayName": "test_pdf_file.pdf",
        "file" :{
          "odataid":"https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLJG2P74OLQ5FL5EXU3VY6BFSQ"
        }
    }
}
```

### Response
The following example shows the response.

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
        "displayName": "test_pdf_file.pdf",
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

## Example 4: Create an educationExcelResource
### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_educationexcelresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/6a8242df-f2b6-4fdb-9b80-66b847ef8e75/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_excel_file.xlsx",
        "file": {
            "odataid": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5DL55LC4M35VEZWBZFJCX5V4QO"
        }
    }
}
```

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('6a8242df-f2b6-4fdb-9b80-66b847ef8e75')/resources/$entity",
    "id": "eaac58ad-a085-4696-82b4-2a5669da4ef0",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_excel_file.xlsx",
        "createdDateTime": "2024-01-18T17:11:21.3773789Z",
        "lastModifiedDateTime": "2024-01-18T17:11:21.3773812Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5DL55LC4M35VEZWBZFJCX5V4QO",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 5: Create an educationPowerPointResource
### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_educationpowerpointresource_from_educationmodule"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/c75c2706-f352-47b4-a11e-f1292305c1d1/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "ppt_file.pptx",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ2GE3EYXUX6NJEI6UWOKBM74MHA"
    }
}
```

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('c75c2706-f352-47b4-a11e-f1292305c1d1')/resources/$entity",
    "id": "2596ad63-56f4-4a05-bf3e-8918dca4aaa4",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "ppt_file.pptx",
        "createdDateTime": "2024-01-18T17:15:38.6453797Z",
        "lastModifiedDateTime": "2024-01-18T17:15:38.6453821Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ2GE3EYXUX6NJEI6UWOKBM74MHA",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 6: Create an educationMediaResource
### Request
The following example shows a request.

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
        "displayName": "ModulePicture.PNG",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ56XC3M4V7F5JEK3NLECZH4HWGP"
    }
}
```

### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('0655c191-0252-4077-b446-8882e8817831')/resources/$entity",
    "id": "ebe34956-9beb-460a-be13-eae70ac0fe29",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "ModulePicture.PNG",
        "createdDateTime": "2024-01-18T17:19:38.0361989Z",
        "lastModifiedDateTime": "2024-01-18T17:19:38.0361999Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ56XC3M4V7F5JEK3NLECZH4HWGP",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 7: Create an educationChannelResource
### Request
The following example shows a request.

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

### Response
The following example shows the response.

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

## Example 8: Create an educationLinkedAssignmentResource
### Request
The following example shows a request.

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
         "displayName":"Existing_Assignment",
         "url": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b563da70-710e-4a9b-ba86-94a4d73e5d21"
     }
}
```

### Response
The following example shows the response.

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
        "displayName": "Existing_Assignment",
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
